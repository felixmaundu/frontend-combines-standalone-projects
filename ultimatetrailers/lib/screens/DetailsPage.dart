import 'package:flutter/material.dart';
import 'package:ultimatetrailers/api/endpoints.dart';
import 'package:ultimatetrailers/modal_class.dart/SimilarTv.dart';
import 'package:ultimatetrailers/modal_class.dart/tv.dart';
import 'package:ultimatetrailers/widgets/similarTvSection.dart';

class DetailsPage extends StatefulWidget {
  final TvResults tvresults;
  final ThemeData themeData;

  // DetailsPage({Key? key, required ThemeData themeData}) : super(key: key);
  DetailsPage({
    required this.tvresults,
    required this.themeData,
    // required this.heroId,
    // required this.genres
  });
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Center(
          child: Text(
            'details bla bla ',
            style: widget.themeData.textTheme.bodyText1,
          ),
        ),
        Center(
          child: Text(
            widget.tvresults.name!,
            style: widget.themeData.textTheme.bodyText1,
          ),
        ),
        Center(
          child: Text(
            widget.tvresults.overview!,
            style: widget.themeData.textTheme.bodySmall,
          ),
        ),
        SimilarTvSection(
          themeData: widget.themeData,
          api: Endpoints.getsimilarTv(widget.tvresults.id!),
        )
      ],
    ));
  }
}
