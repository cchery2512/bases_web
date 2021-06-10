import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bases_web/providers/counter_provider.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';

class CounterProviderView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: _CounterProviderView()
    );
  }

}

class _CounterProviderView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Contador Provider', style: TextStyle(fontSize: 20),),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('Contador: ${counterProvider.counter}', style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(text: 'Decrementar', onPressed: () => counterProvider.decrement()),
              CustomFlatButton(text: 'Incrementar', onPressed: () => counterProvider.increment()),
              
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
