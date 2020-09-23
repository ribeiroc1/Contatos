import 'package:flutter/cupertino.dart';

class IOSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "Contacts",
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        child: Container(
          child: Center(
            child: Text("Home"),
          ),
        ),
      ),
    );
  }
}
