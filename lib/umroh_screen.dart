import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'api_service.dart';
import 'models.dart';
import 'detail_screen.dart';
import 'doa_screen.dart';
import 'dart:convert';
import 'wisata_screen.dart';

class UmrohScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE1CB),
        title: Text('Paket Umroh'),
        actions: [
        ElevatedButton(
          onPressed: () {
            if ('doa_umroh' == 'doa_umroh') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DoaActivity()),
              );
            }
          },
          child: Icon(Icons.menu_book),
          ),
        ],
      ),
      backgroundColor: Color(0xFFFA9A55),
      body: FutureBuilder<List<PaketUmroh>>(
        future: Provider.of<ApiService>(context).getPaketUmroh(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final List<PaketUmroh> list = snapshot.data!;
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                final paket = list[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(paket: paket),
                      ),
                    );
                  },
                  child: Card(
                    color: Color(0xFFFCB079),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              child: Image.memory(base64Decode(paket.photo)),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    paket.name,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(paket.jadwal),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}