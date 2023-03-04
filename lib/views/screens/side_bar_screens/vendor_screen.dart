import 'package:flutter/material.dart';

class VendorScreen extends StatelessWidget {
  const VendorScreen({Key? key}) : super(key: key);
  static const String routeName = '\VendorScreen';

  Widget _rowHeader(String text, int flex) {
    return Expanded(
      flex: flex,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade700),
          color: Colors.yellow.shade900,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Dükkan Yönetimi',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
          ),
          Row(
            children: [
              _rowHeader('LOGO', 1),
              _rowHeader('DÜKKAN İSMİ', 3),
              _rowHeader('İLÇE', 2),
              _rowHeader('İL', 2),
              _rowHeader('AKTİF', 1),
              _rowHeader('DETAY', 1),
            ],
          )
        ],
      ),
    );
  }
}
