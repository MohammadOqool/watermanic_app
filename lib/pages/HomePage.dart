import 'package:flutter/material.dart';
import 'package:watermanicapp/utils/ImagesDrawable.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset(ImagesDrawable.homeImage),
          ),
          Align(
            child: SizedBox(
              width: double.infinity,
              height: 350,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                margin: EdgeInsets.only(top: 35, left: 35, right: 35),
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(25.0),
                      child: Image.asset(ImagesDrawable.dropBlue),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "100%",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "1000 ml",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white.withOpacity(0.7),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
