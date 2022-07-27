import 'package:flutter/material.dart';

class RequestView extends StatefulWidget {
  const RequestView({Key? key}) : super(key: key);

  @override
  _RequestViewState createState() => _RequestViewState();
}

class _RequestViewState extends State<RequestView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2000,
      height: 2000,
      color: Colors.red,
    );
  }
}
