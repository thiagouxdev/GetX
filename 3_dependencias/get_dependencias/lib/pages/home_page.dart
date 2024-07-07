import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isChecked = false;
  bool _isSwitched = false;
  int _radioValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(
          'Home Test',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: FilledButton(
                  onPressed: () {},
                  child: const Text("Label"),
                ),
              ),
            ),
            const SizedBox(height: 24),
            CheckboxListTile(
              title: const Text("Check"),
              subtitle: const Text("Lorem ipsum dolor sit amet consectetur."),
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            const SizedBox(height: 24),
            RadioListTile(
              title: const Text("Radio 1"),
              subtitle: const Text("Lorem ipsum dolor sit amet consectetur."),
              value: 0,
              groupValue: _radioValue,
              onChanged: (int? value) {
                setState(() {
                  _radioValue = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Radio 2"),
              subtitle: const Text("Lorem ipsum dolor sit amet consectetur."),
              value: 1,
              groupValue: _radioValue,
              onChanged: (int? value) {
                setState(() {
                  _radioValue = value!;
                });
              },
            ),
            SwitchListTile(
              title: const Text("Switch"),
              subtitle: const Text(
                  "Lorem ipsum dolor sit amet consectetur. Dolor sit amet consectetur."),
              value: _isSwitched,
              onChanged: (bool value) {
                setState(() {
                  _isSwitched = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
