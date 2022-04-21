import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: new AppBar(
          backgroundColor: Colors.lightBlueAccent,
          leading: new Icon(Icons.view_list_rounded),
          title: new Center(child: new Text("Products", style: new TextStyle(fontFamily: "Helvetica"))),
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: ListTile(
                      leading: Image.network("https://image.shutterstock.com/image-photo/red-sneakers-white-background-isolated-600w-1917637964.jpg"),
                      title: Text(
                        'Brand New Shoes',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        "SH-231",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )));
            }));
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
    );
  }
}
