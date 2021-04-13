import 'package:flutter/material.dart';

import 'detailedPage.dart';

class Coffee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.height,
            width: size.width,
            child: Image.asset('images/bg.jpg', fit: BoxFit.cover),
          ),
          Container(
            padding: const EdgeInsets.all(40),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor.withOpacity(0.4),
                ],
              ),
            ),
            child: Image.asset('images/coffee.png'),
          ),
          Positioned(
            top: 70,
            child: Text(
              'ITS GREAT DAY FOR',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: const Color(
                    0xffb98c53,
                  )),
            ),
          ),
          Positioned(
            top: 95,
            child: Text(
              'coffee',
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 50,
            child: Container(
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: const Color(0xffb98c53),
              ),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailedPage(),
                    )),
                child: Text(
                  'Order now',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
