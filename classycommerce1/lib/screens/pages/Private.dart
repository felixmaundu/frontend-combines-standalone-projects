import 'package:classycommerce1/utils/globalFunction.dart';
import 'package:flutter/material.dart';

class Private extends StatefulWidget {
  static const String id = "Private";
  Private({Key? key}) : super(key: key);

  @override
  _PrivateState createState() => _PrivateState();
}

class _PrivateState extends State<Private> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.msg);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
      // bottomNavigationBar: BottomNav(),
    );
  }
}
