import 'package:bloc_test/cubit/converter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConverterCubitView extends StatelessWidget {
  final _distanceController = TextEditingController();

  ConverterCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kilometers to meters'),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              label: Text('Enter distance in kilometers'),
            ),
            controller: _distanceController,
          ),
          BlocBuilder<ConverterCubit, double>(builder: (context, double state) {
            return Text(
              '$state',
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            );
          }),
          ElevatedButton(
            onPressed: () {
              final distance = double.parse(_distanceController.text);
              context.read<ConverterCubit>().calculate(distance);
            },
            child: Text('Convert to meters'),
          ),
        ],
      ),
    );
  }
}
