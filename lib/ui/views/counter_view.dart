import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  final String base;
  CounterView({Key? key, required this.base}) : super(key: key);

  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int _counter = 10;

  @override
  void initState() {
    super.initState();
    
    if(int.tryParse(widget.base) != null){
      _counter = int.parse(widget.base);
    }
    
  }

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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Contador Stateful', style: TextStyle(fontSize: 20),),
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
    );
  }
}
