import 'package:flutter/material.dart';
import 'umroh_screen.dart';
import 'wisata_screen.dart';
import 'package:provider/provider.dart';
import 'api_service.dart';


class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE1CB),
        title: Text('Ailaraeez Travel'),
      ),
      backgroundColor: Color(0xFFFA9A55),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 50,
            ),
            SizedBox(height: 10),
            Text(
              'Tour & Travel\nSK. Kemenag\nNo. U 333 2021',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UmrohScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/kabah.png',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Paket Umroh',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WisataScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/wisata.png',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Paket Wisata',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
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
            SizedBox(height: 20),
            Text(
              'Perjalanan Umroh dan Wisata Kami',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Text(
              'Ini adalah foto-foto dari beberapa perjalanan Umroh dan Wisata yang sudah kami laksanakan',
              style: TextStyle(
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 5,
              childAspectRatio: 2,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(
                6,
                (index) => GestureDetector(
                  child: Image.asset(
                    'assets/foto${index + 1}.png',
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
              },
              child: Text(
                'Show More',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '© Copyright 2022 | Ailaraeeztravel.com',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<ApiService>(create: (_) => ApiService()),
      ],
      child: MaterialApp(
        home: MyWidget(),
      ),
    ),
  );
}
