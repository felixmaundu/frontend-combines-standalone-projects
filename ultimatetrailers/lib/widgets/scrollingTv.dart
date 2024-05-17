import 'package:flutter/material.dart';
import 'package:ultimatetrailers/modal_class.dart/tv.dart';
import 'package:ultimatetrailers/screens/DetailsPage.dart';
import 'package:ultimatetrailers/services/api_service.dart';

class ScrollingTv extends StatefulWidget {
  final ThemeData themeData;
  final String? api, title;
  ScrollingTv({this.api, this.title, required this.themeData});

  // ScrollingTv({Key? key}) : super(key: key);

  @override
  State<ScrollingTv> createState() => _ScrollingTvState();
}

class _ScrollingTvState extends State<ScrollingTv> {
  List<TvResults>? tvList;

  @override
  void initState() {
    super.initState();
    fetchTv(widget.api!).then(
      (value) => setState(
        (() {
          tvList = value;
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          height: 200,
          child: tvList == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: tvList!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                tvresults: tvList![index],
                                themeData: widget.themeData,
                              ),
                            ),
                          );
                        }),
                        child: Text(
                          tvList![index].name!,
                          style: widget.themeData.textTheme.bodyText1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}









  // Column(
  //     children: <Widget>[
  //       SizedBox(
  //         width: double.infinity,
  //         height: 200,
  //         child: FutureBuilder(
  //           future: fetchTv(widget.api!),
  //           builder: ((context, snapshot) {
  //             if (snapshot.connectionState == ConnectionState.done) {
  //               return ListView.builder(
  //                 physics: BouncingScrollPhysics(),
  //                 itemCount: tvList!.length,
  //                 scrollDirection: Axis.horizontal,
  //                 itemBuilder: (BuildContext context, int index) {
  //                   return Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Text(
  //                       tvList![index].name!,
  //                       style: widget.themeData.textTheme.bodyText1,
  //                       overflow: TextOverflow.ellipsis,
  //                     ),
  //                   );
  //                 },
  //               );
  //             } else {
  //               return Center(
  //                 child: CircularProgressIndicator(),
  //               );
  //             }
  //           }),
  //         ),
  //       ),
  //     ],
  //   );