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
          Image.asset('images/doggo.jpg'),
          const SizedBox(
            height: 2,
          ),
          const Divider(color: Colors.black),
          Container(
            color: Colors.blueGrey,
            child: const Text(
              'A Text widget!',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
