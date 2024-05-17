import 'package:flutter/material.dart';
import 'package:ultimatetrailers/modal_class.dart/SimilarTv.dart';
import 'package:ultimatetrailers/modal_class.dart/tv.dart';

import '../services/api_service.dart';

class SimilarTvSection extends StatefulWidget {
  final ThemeData themeData;
  final String? api, title; //tapButtonText;
  // SimilarTv({Key? key}) : super(key: key);
  SimilarTvSection({required this.themeData, this.api, this.title});
  @override
  State<SimilarTvSection> createState() => _SimilarTvSectionState();
}

class _SimilarTvSectionState extends State<SimilarTvSection> {
  List<SimilarResults>? similarresults;

  @override
  void initState() {
    super.initState();
    fetchSimilarTv(widget.api!).then((value) {
      setState(() {
        // similarresults = value;
        similarresults = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          height: 120,
          child: similarresults == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: similarresults!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 80,
                        child: Column(
                          children: <Widget>[
                            Text(
                              // 'hello similar tv',
                              similarresults![index].name!, //length.toString(),
                              style: widget.themeData.textTheme.bodyText1,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
        )
      ],
    );
  }
}
