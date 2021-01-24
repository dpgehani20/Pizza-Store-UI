import 'package:flutter/material.dart';

import 'package:flutter_app_fdashboard/bottombar.dart';

class PizzaDetails extends StatelessWidget {

  final assetPath, pizzaprice, pizzaname;

  PizzaDetails({this.assetPath,this.pizzaprice,this.pizzaname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEF7532),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFffffff)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Pickup',
          style: TextStyle(
              fontSize: 20.0,
              color: Color(0xFFffffff)
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFFffffff)),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
        children: [
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Pizza',
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF17532)
            ),
            ),
          ),
          SizedBox(height: 15.0),
          Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
            height: 150.0,
              width: 100.0,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Text(pizzaprice,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF17532))),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(pizzaname,
                style: TextStyle(
                    color: Color(0xFF575E67),
                    fontFamily: 'Varela',
                    fontSize: 24.0)),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text('A delightfully light thin crust pizza, expertly hand-stretched and oven-baked mozzarella cheese to golden perfection.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 16.0,
                      color: Color(0xFFB4B8B9))
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color(0xFFF17532)
              ),
              child: Center(
                child: Text('Add to cart',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
                ),
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
