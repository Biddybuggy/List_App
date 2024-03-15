import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  static const routeName = "/detail_screen";
  const DetailScreen({Key? key, required this.title, required this.description, required this.icon}) : super(key: key);
  final String title;
  final String description;
  final String icon;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${widget.title}", style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold)),
              SizedBox(
                height:15,
              ),
              Image.network(
              widget.icon,
              height: 300,
              width: 300,
              ),
              SizedBox(
                height:15,
              ),
              Text("${widget.description}", style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,),
              textAlign: TextAlign.center),
            ],
          ),
    )),
      ));
  }
}
