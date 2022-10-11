import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          debugPrint('refresh');
        },
        child: ListView(
          children: const <Widget>[Center(child: Text('trams app'))],
        ),
      ),
    );
  }
}
