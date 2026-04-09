import 'package:flutter/material.dart';
import 'package:latihan1/ui/produk_detail.dart';

class Produkform extends StatefulWidget {
  @override
  _Produkformstate createState() => _Produkformstate();
}

class _Produkformstate extends State<Produkform> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Produk')),
      body:SingleChildScrollView(
        child: Column(
          children: [
            _textboxkodeProduk(),
            _textboxnamaProduk(),
            _textboxHargaProduk(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxkodeProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukTextboxController,
      ); 
  }
  _textboxnamaProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukTextboxController,
      ); 
  }
  _textboxHargaProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Harga Produk"),
      controller: _hargaProdukTextboxController,
      ); 
  }
  _tombolSimpan() {
    return ElevatedButton(
      child: Text('Simpan'), 
      onPressed: () {
        String kode_produk = _kodeProdukTextboxController.text;
        String nama_produk = _namaProdukTextboxController.text;
        int harga = int.parse(_hargaProdukTextboxController.text);

        Navigator.of(context).push(
          new MaterialPageRoute(
            builder: (context) => ProdukDetail(
              kodeProduk: kode_produk,
              namaProduk: nama_produk,
              harga: harga,
            )
          )
        );
      }
      ); 
  }
}
