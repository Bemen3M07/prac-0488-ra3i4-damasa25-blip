import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';
/*
class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page 2'),
    );
  }
}
*/

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
 
    final moto = context.watch<CounterProvider>().selectedMoto;

    if (moto == null) {
      return const Center(
        child: Text("No has elegido ninguna moto"),
      );
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Para que salga en el centro de la pantalla
        children: [
          
          Text(moto.marcaModelo, style: const TextStyle(fontSize: 30)), // Nombre de la moto
          
          const SizedBox(height: 20), // Un pequeño espacio
          
          Text("Litros: " + moto.fuelTankLiters.toString()),
          
          Text("Consumo: " + moto.consumptionL100.toString()),

          const SizedBox(height: 40),

          TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Km Totales",
                  border: OutlineInputBorder(),
                ),
              ),

          const SizedBox(height: 20),

          TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Litros repostados",
                  border: OutlineInputBorder(),
                ),
              ),

            const SizedBox(height: 20),

           /*ElevatedButton(
                onPressed: () {
                
                  double deposit = moto.fuelTankLiters;
                  double consum = moto.consumptionL100;

                  double resultado = (deposit / consum) * 100;
                  setState(() {
                    resultado = "Con un deposito lleno puedes recorrer " + resultado + " km.";
                  });
                }
           )*/
          // No me sale la parte del calculo :(
        ],
      ),
    );
  }
}