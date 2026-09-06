import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccaunt extends StatelessWidget {
  const MyAccaunt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        leading: Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.back, size: 30),
          ),
        ),
        title: Text(
          "My Accounts",
          style: TextStyle(fontSize: 25, fontWeight: .bold),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10, top: 10),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.plus, size: 30),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Amounts Displayed ",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Icon(Icons.info_outline, size: 18, color: Colors.grey),
                ],
              ),
              Text(
                "\$1,784.69",
                style: TextStyle(fontSize: 34, fontWeight: .bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "ANZ Plus",
                      style: TextStyle(fontSize: 20, fontWeight: .bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        spacing: 20,
                        children: [
                          Icon(Icons.card_travel, color: Colors.blue, size: 30),
                          Text(
                            "Everyday",
                            style: TextStyle(fontSize: 20, fontWeight: .bold),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "\$0.00",
                      style: TextStyle(fontSize: 20, fontWeight: .bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
