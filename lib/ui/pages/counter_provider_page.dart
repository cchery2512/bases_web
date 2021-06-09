

import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterProviderPage extends StatefulWidget {
  CounterProviderPage({Key? key, }) : super(key: key);

  @override
  _CounterProviderPageState createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  int _counter = 15;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomAppMenu(),
            Spacer(),
            Text('Contador Provider', style: TextStyle(fontSize: 20),),
            FittedBox(
              fit: BoxFit.contain,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Contador: $_counter', style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFlatButton(text: 'Decrementar', onPressed: () => _decrementCounter()),
                CustomFlatButton(text: 'Incrementar', onPressed: () => _incrementCounter()),
                
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
