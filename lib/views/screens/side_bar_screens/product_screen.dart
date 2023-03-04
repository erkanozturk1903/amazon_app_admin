import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '\ProductScreen';
  const ProductScreen({Key? key}) : super(key: key);

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
              'Ürün Yönetimi',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
          ),
          Row(
            children: [
              _rowHeader('RESİM', 1),
              _rowHeader('TAM ADI', 3),
              _rowHeader('FİYATI', 2),
              _rowHeader('MİKTAR', 2),
              _rowHeader('AKTİF', 1),
              _rowHeader('DETAY', 1),
            ],
          )
        ],
      ),
    );
  }
}
