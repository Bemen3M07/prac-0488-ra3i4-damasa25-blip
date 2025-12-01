import 'package:flutter/material.dart';
import '../providers/counter_provider.dart';
import 'package:provider/provider.dart';
/*
class Page1 extends StatefulWidget {
  const Page1({super.key});
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(context.watch<CounterProvider>().counter.toString(),),
          ElevatedButton(onPressed: () {
            context.read<CounterProvider>().increment();
          }, child: Text('Sumar'))
        ],
      ),
    );
  }
}
*/

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CounterProvider>();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Selecciona una moto:',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          
          DropdownButton<Moto>(
            value: provider.selectedMoto,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple, fontSize: 18),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),

            onChanged: (Moto? value) {
              context.read<CounterProvider>().selectMoto(value);
            },

            items: listaMotos.map<DropdownMenuItem<Moto>>((Moto value) {
              return DropdownMenuItem<Moto>(
                value: value,
                child: Text(value.marcaModelo),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}