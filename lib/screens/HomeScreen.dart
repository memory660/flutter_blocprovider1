import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blocprovider1/services/toggle/toggle_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(8),
              child: BlocBuilder<ToggleBloc, ToggleState>(
                builder: (context, state) => TextField(
                  obscureText: (state as ToggleInitialState).isOn,
                  decoration: InputDecoration(
                    labelText: 'password',
                    suffixIcon: IconButton(
                      icon: Icon((state as ToggleInitialState).isOn
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined),
                      onPressed: () =>
                          context.read<ToggleBloc>().add(toggleSubmitEvent()),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
