import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models.dart';

class ApiService {
  final String baseUrl = 'http://192.168.1.3/api_aila/public/api';

  Future<List<PaketUmroh>> getPaketUmroh() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/mpaketumroh'));
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body)['data'];
        return data.map((json) => PaketUmroh.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load Paket Umroh');
      }
    } catch (error) {
      print('Error fetching Paket Umroh: $error');
      throw error;
    }
  }

  Future<List<PaketWisata>> getPaketWisata() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/mpaketwisata'));
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body)['data'];
        return data.map((json) => PaketWisata.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load Paket Wisata');
      }
    } catch (error) {
      print('Error fetching Paket Wisata: $error');
      throw error;
    }
  }
}
