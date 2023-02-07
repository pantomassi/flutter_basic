import 'package:flutter/material.dart';

class NestedPage extends StatefulWidget {
  const NestedPage({super.key});

  @override
  State<NestedPage> createState() => _NestedPageState();
}

class _NestedPageState extends State<NestedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nested Page'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/doggo_sm.jpg',
          ),
          const SizedBox(
            height: 2,
          ),
          const Divider(color: Colors.black),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
              child: Text(
                'A Text widget!',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint('Inside body/elevated button');
            },
            child: const Text('Hiya, Elevated button here'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('Inside body/outlined button');
            },
            child: const Text('Hiya, Outlined button here'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('Inside body/Text button');
            },
            child: const Text('Hiya, Text button here'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.local_fire_department, color: Colors.amber),
              Text('Row widget between icons'),
              Icon(Icons.local_fire_department, color: Colors.amber),
            ],
          ),
        ],
      ),
    );
  }
}
