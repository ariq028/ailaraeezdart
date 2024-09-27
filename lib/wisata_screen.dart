import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'api_service.dart';
import 'models.dart';
import 'dart:convert';
import 'detail_screen.dart';

class WisataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paket Wisata'),
        backgroundColor: Color(0xFFE1CB),
      ),
      backgroundColor: Color(0xFFFA9A55),
      body: FutureBuilder<List<PaketWisata>>(
        future: Provider.of<ApiService>(context).getPaketWisata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final List<PaketWisata> list = snapshot.data!;
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
