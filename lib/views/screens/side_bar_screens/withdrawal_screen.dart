import 'package:flutter/material.dart';

class WithdrawalScreen extends StatelessWidget {
  static const String routeName = '\WithdrawalScreen';
  const WithdrawalScreen({Key? key}) : super(key: key);

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
              'Para Çekme',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
          ),
          Row(
            children: [
              _rowHeader('İSİM', 1),
              _rowHeader('TUTAR (TL)', 3),
              _rowHeader('BANKA ADI', 2),
              _rowHeader('BANKA HESAP NO', 2),
              _rowHeader('EMAİL', 1),
              _rowHeader('TELEFON', 1),
            ],
          )
        ],
      ),
    );
  }
}
