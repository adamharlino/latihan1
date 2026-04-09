import 'package:flutter/material.dart';
//import 'package:latihan1/hello_world.dart';
//import 'package:latihan1/column_widget.dart';
//import 'package:latihan1/row_widget.dart';
import 'package:latihan1/ui/produk_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Menampilkan hello world', home: Produkform());
  }
}
