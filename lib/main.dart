import 'package:flutter/material.dart';
import 'package:coba2/hello_world.dart';
import 'package:coba2/column_widget.dart';
import 'package:coba2/row_widget.dart';
import 'package:coba2/ui/produk_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Menampilkan hello world', home: Produkform());
  }
}
