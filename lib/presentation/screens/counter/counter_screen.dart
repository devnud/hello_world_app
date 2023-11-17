import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/widgets/custom_buttom.dart';

class CounterSreen extends StatefulWidget {
  const CounterSreen({super.key});

  @override
  State<CounterSreen> createState() => _CounterSreenState();
}

class _CounterSreenState extends State<CounterSreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    String texto = counter == 1 ? 'Click' : 'Clicks';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        actions: [
          IconButton(
              onPressed: () {
                _reset();
              },
              icon: const Icon(Icons.refresh_rounded)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter', style: const TextStyle(fontSize: 160)),
            Text(texto, style: const TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          const SizedBox(width: 30),
          CustomButtom(icon: Icons.refresh_rounded, onPressed: _reset),
          const Expanded(child: SizedBox()),
          CustomButtom(icon: Icons.exposure_neg_1_outlined, onPressed: _restar),
          const SizedBox(width: 20),
          CustomButtom(icon: Icons.plus_one_outlined, onPressed: _sumar),
        ],
      ),
    );
  }

  void _sumar() {
    setState(() => counter++);
  }

  void _restar() {
    if (counter == 0) return;
    setState(() => counter--);
  }

  void _reset() {
    setState(() => counter = 0);
  }
}
