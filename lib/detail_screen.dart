import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';

class DetailScreen extends StatelessWidget {
  final dynamic paket;

  DetailScreen({required this.paket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFA9A55),
        title: Text('Detail Paket'),
      ),
      backgroundColor: Color(0xFFE1CB),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFFCB079),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.memory(
                    base64Decode(paket.photo),
                    width: 150,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${paket.name}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Jadwal :',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '${paket.jadwal}',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Fasilitas :',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '${paket.fasilitas}',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height:10),
              Image.asset(
              'assets/line.png',
              ),
              SizedBox(height: 10),
              Text(
                'Harga :',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '${paket.harga}',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 10),
              Text(
                'Paket sudah termasuk :',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${paket.include}',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 10),
              Text(
                'Paket belum termasuk :',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${paket.noninclude}',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  final phoneNumber = '6281299222099';
                  final message =
                      'Hallo, saya ingin bertanya mengenai paket ${paket.name} dengan periode ${paket.jadwal}';
                  final url =
                      'https://api.whatsapp.com/send?phone=$phoneNumber&text=${Uri.encodeComponent(message)}';
                  _launchURL(url);
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFA462),
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                child: Center(
                  child: Text('Hubungi Kami'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
    return;
  }

  final whatsappWebUrl = 'https://web.whatsapp.com';
  if (await canLaunch(whatsappWebUrl)) {
    await launch(whatsappWebUrl);
  } else {
    throw 'Could not launch $url or $whatsappWebUrl';
  }
}
}