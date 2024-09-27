import 'dart:convert';

class PaketUmroh {
  final String name;
  final String jadwal;
  final String photo;
  final String harga;
  final String fasilitas;
  final String include;
  final String noninclude;

  PaketUmroh({
    required this.name,
    required this.jadwal,
    required this.photo,
    required this.harga,
    required this.fasilitas,
    required this.include,
    required this.noninclude,
  });

  factory PaketUmroh.fromJson(Map<String, dynamic> json) {
    return PaketUmroh(
      name: json['name'],
      jadwal: json['jadwal'],
      photo: json['photo'],
      harga: json['harga'],
      fasilitas: json['fasilitas'],
      include: json['include'],
      noninclude: json['noninclude'],
    );
  }
}

class PaketWisata {
  final String name;
  final String jadwal;
  final String photo;
  final String harga;
  final String fasilitas;
  final String include;
  final String noninclude;

  PaketWisata({
    required this.name,
    required this.jadwal,
    required this.photo,
    required this.harga,
    required this.fasilitas,
    required this.include,
    required this.noninclude,
  });

  factory PaketWisata.fromJson(Map<String, dynamic> json) {
    return PaketWisata(
      name: json['name'],
      jadwal: json['jadwal'],
      photo: json['photo'],
      harga: json['harga'],
      fasilitas: json['fasilitas'],
      include: json['include'],
      noninclude: json['noninclude'],
    );
  }
}
