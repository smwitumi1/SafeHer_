import 'package:flutter/material.dart';
import 'package:safe_her/invite.dart';

import './login.dart';
import './create_circle.dart';

class createCircle extends StatelessWidget {
  const createCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios,
        color: Colors.pink),
      ),
      body: Container(
        height: 300,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Create Circle",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                  decoration: TextDecoration.none,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Name of circle",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.pink,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: TextField(
                    decoration: InputDecoration(// Change icon based on your need
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.16), 
                      
                        
        
                      )
                     
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 300,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Color.fromRGBO(255, 112, 167, 1)),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Join Circle',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.front_hand_outlined,
                color: Colors.pink[300],
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyHomePage(title: "Testing")),
                );
              },
              icon: Icon(
                Icons.sos_rounded,
                color: Colors.pink[300],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.pink[300],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.pink[300],
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Invite()),
                );
              },
              icon: Icon(
                Icons.person,
                color: Colors.pink[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
