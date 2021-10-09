import 'package:flutter/material.dart';

class HobbyListPage extends StatelessWidget {
  int hobbyIndex;

  HobbyListPage({required this.hobbyIndex});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              child: Text(
                hobbyIndex.toString(),
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
