import 'package:flutter/material.dart';

void main() {
  runApp(CurrencyConverterApp());
}

class CurrencyConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Currency Converter'),
        ),
        body: ConverterWidget(),
      ),
    );
  }
}

class ConverterWidget extends StatefulWidget {
  @override
  _ConverterWidgetState createState() => _ConverterWidgetState();
}

class _ConverterWidgetState extends State<ConverterWidget> {
  double inputValue = 0.0;
  double convertedValue = 0.0;

  // Define a list of currencies with their exchange rates.
  Map<String, double> exchangeRates = {
    'USD': 1.0,
    'EUR': 0.85,
    'GBP': 0.74,
    // Add more currencies and exchange rates as needed.
  };

  String fromCurrency = 'USD';
  String toCurrency = 'EUR';

  void convertCurrency() {
    double? fromRate = exchangeRates[fromCurrency];
    double? toRate = exchangeRates[toCurrency];
    double result = (inputValue * toRate!) / fromRate!;
    setState(() {
      convertedValue = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          onChanged: (value) {
            setState(() {
              inputValue = double.tryParse(value) ?? 0.0;
            });
          },
          keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: 'Enter Amount'),
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DropdownButton<String>(
              value: fromCurrency,
              onChanged: (value) {
                setState(() {
                  fromCurrency = value!;
                });
              },
              items: exchangeRates.keys.map((currency) {
                return DropdownMenuItem<String>(
                  value: currency,
                  child: Text(currency),
                );
              }).toList(),
            ),
            Text('to'),
            DropdownButton<String>(
              value: toCurrency,
              onChanged: (value) {
                setState(() {
                  toCurrency = value!;
                });
              },
              items: exchangeRates.keys.map((currency) {
                return DropdownMenuItem<String>(
                  value: currency,
                  child: Text(currency),
                );
              }).toList(),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            convertCurrency();
          },
          child: Text('Convert'),
        ),
        SizedBox(height: 20.0),
        Text('Converted Amount: $convertedValue $toCurrency'),
      ],
    );
  }
}
