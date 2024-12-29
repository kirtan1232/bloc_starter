import 'package:bloc_test/cubit/simple_interest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestCubitView extends StatelessWidget {
  final _pincipleController = TextEditingController();
  final _timeController = TextEditingController();
  final _rateController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  SimpleInterestCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Interest'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text('Enter principle'),
              ),
              controller: _pincipleController,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Enter time'),
              ),
              controller: _timeController,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Enter rate'),
              ),
              controller: _rateController,
            ),
            BlocBuilder<SimpleInterestCubit, double>(
                builder: (context, double state) {
              return Text(
                '$state',
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
            ElevatedButton(
              onPressed: () {
                final double principle = double.parse(_pincipleController.text);
                final double time = double.parse(_timeController.text);
                final double rate = double.parse(_rateController.text);
                context
                    .read<SimpleInterestCubit>()
                    .calculate(principle, time, rate);
              },
              child: Text('Calculate'),
            )
          ],
        ),
      ),
    );
  }
}
