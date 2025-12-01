import 'package:flutter/material.dart';


class Moto {
  final String marcaModelo;
  final double fuelTankLiters;
  final double consumptionL100;

  Moto({
    required this.marcaModelo,
    required this.fuelTankLiters, // Depósito en litros
    required this.consumptionL100, // Consumo en Litros por 100km
  });
  

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Moto &&
          runtimeType == other.runtimeType &&
          marcaModelo == other.marcaModelo;

  @override
  int get hashCode => marcaModelo.hashCode;
}


final List<Moto> listaMotos = [
  Moto(marcaModelo: 'Honda PCX 125', fuelTankLiters: 8.0, consumptionL100: 2.1),
  Moto(marcaModelo: 'Yamaha NMAX 125', fuelTankLiters: 7.1, consumptionL100: 2.2),
  Moto(marcaModelo: 'Kymco Agility City 125', fuelTankLiters: 7.0, consumptionL100: 2.5),
  Moto(marcaModelo: 'Piaggio Liberty 125', fuelTankLiters: 6.0, consumptionL100: 2.3),
  Moto(marcaModelo: 'Sym Symphony 125', fuelTankLiters: 5.5, consumptionL100: 2.4),
  Moto(marcaModelo: 'Vespa Primavera 125', fuelTankLiters: 8.0, consumptionL100: 2.8),
  Moto(marcaModelo: 'Kawasaki J125', fuelTankLiters: 11.0, consumptionL100: 3.5),
  Moto(marcaModelo: 'Peugeot Pulsion 125', fuelTankLiters: 12.0, consumptionL100: 3.0),
];

class CounterProvider extends ChangeNotifier {
  int counter = 0;
  

  Moto? _selectedMoto;

  Moto? get selectedMoto => _selectedMoto;

  void selectMoto(Moto? moto) {
    _selectedMoto = moto;
    notifyListeners();
  }
}