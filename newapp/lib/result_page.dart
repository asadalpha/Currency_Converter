import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double convertedAmount;
  final String value1;
  const ResultPage(
      {super.key, required this.convertedAmount, required this.value1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const Text(
          "Converted Amount",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(
          height: 120,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFF00d998)),
            child: Center(
                child: Text(
              "${convertedAmount.toStringAsFixed(4)} in $value1",
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
          ),
        )
      ]),
    );
  }
}
