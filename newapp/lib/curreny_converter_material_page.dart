import 'package:flutter/material.dart';
import 'package:newapp/result_page.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  TextEditingController textEditingController = TextEditingController();
  double _convert() {
    double amount = double.parse(textEditingController.text);
    double convertedAmount = 0.0;

    if (_value == 'USD' && value1 == 'Rupee') {
      convertedAmount = amount * 75;
    } else if (_value == 'Rupee' && value1 == 'USD') {
      convertedAmount = amount * 0.012;
    } else if (_value == 'Euro' && value1 == 'Rupee') {
      convertedAmount = amount * 85;
    } else if (_value == 'Rupee' && value1 == 'Euro') {
      convertedAmount = amount * 0.011;
    } else if (_value == 'USD' && value1 == 'Euro') {
      convertedAmount = amount * 0.91;
    } else if (_value == 'USD' && value1 == 'Riyal') {
      convertedAmount = amount * 3.75;
    } else if (_value == 'USD' && value1 == 'Yen') {
      convertedAmount = amount * 142.31;
    } else if (_value == 'Rupee' && value1 == 'Riyal') {
      convertedAmount = amount * 0.045;
    } else if (_value == 'Rupee' && value1 == 'Yen') {
      convertedAmount = amount * 1.72;
    } else if (_value == 'Euro' && value1 == 'USD') {
      convertedAmount = amount * 1.10;
    } else if (_value == 'Euro' && value1 == 'Riyal') {
      convertedAmount = amount * 4.11;
    } else if (_value == 'Euro' && value1 == 'Yen') {
      convertedAmount = amount * 156.10;
    } else if (_value == 'Riyal' && value1 == 'USD') {
      convertedAmount = amount * 0.27;
    } else if (_value == 'Riyal' && value1 == 'Euro') {
      convertedAmount = amount * 0.24;
    } else if (_value == 'Riyal' && value1 == 'Rupee') {
      convertedAmount = amount * 22.02;
    } else if (_value == 'Riyal' && value1 == 'Yen') {
      convertedAmount = amount * 37.95;
    } else if (_value == 'Yen' && value1 == 'USD') {
      convertedAmount = amount * 0.0070;
    } else if (_value == 'Yen' && value1 == 'Euro') {
      convertedAmount = amount * 0.0064;
    } else if (_value == 'Yen' && value1 == 'Rupee') {
      convertedAmount = amount * 0.58;
    } else if (_value == 'Yen' && value1 == 'Riyal') {
      convertedAmount = amount * 0.026;
    } else {
      convertedAmount = amount;
    }

    return convertedAmount;
  }

  String _value = 'USD';
  String value1 = 'Rupee';

  var items = {
    'USD',
    'Rupee',
    'Euro',
    'Riyal',
    'Yen',
  };

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Currency Converter",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.blueAccent),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "From",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 22, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    style:
                        const TextStyle(color: Colors.blueGrey, fontSize: 18),
                    value: _value,
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _value = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "To",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 22, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    style:
                        const TextStyle(color: Colors.blueGrey, fontSize: 18),
                    value: value1,
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        value1 = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: textEditingController,
                    onChanged: (money) {},
                    style: const TextStyle(color: Colors.blueGrey),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Amount to be Converted",
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // TextButton(
          //   onPressed: () {},
          //   child: Text(
          //     "Convert",
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   style: TextButton.styleFrom(
          //       fixedSize: Size(350, 55), backgroundColor: Colors.green),
          // )
          //const Spacer(),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  double convertedAmount = _convert();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              convertedAmount: convertedAmount,
                              value1: value1,
                            )),
                  );
                });
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: const Color(0xFF00d998)),
              child: const Text("Convert",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
          ),

          // const Text(
          //   "Result",
          //   style: TextStyle(
          //       fontWeight: FontWeight.w500, fontSize: 22, color: Colors.black),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(6.0),
          //   child: Container(
          //     height: 55,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //         color: Colors.grey.shade200,
          //         borderRadius: BorderRadius.circular(8)),
          //     child: Center(
          //       child: Text("Converted Amount",
          //           style:
          //               const TextStyle(color: Colors.blueGrey, fontSize: 18)),
          //     ),
          //   ),
          // ),
        ]),
      ),
    ));
  }
}
