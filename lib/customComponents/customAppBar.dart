import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar(String title, bool isBackButton,
      {Key key, Function /*VoidCallback or void Function()*/ onLeadingPressed})
      : super(
          leading: IconButton(
              icon: Icon(
                (!isBackButton) ? Icons.menu : Icons.arrow_back,
                size: 35,
              ),
              onPressed: onLeadingPressed),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
              )
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30.0),
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.indigo.shade900, Colors.blue.shade900],
                ),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30.0))),
          ),
        );
}
