import 'package:flutter/material.dart';
import 'package:movieplay/modal_class/tv_models/TvCredits.dart';
import 'package:movieplay/services/apis_service/main_service.dart';
import 'package:movieplay/services/constants/api_constants.dart';

class ScrollingArtists extends StatefulWidget {
  final ThemeData? themeData;
  final String? api, title, tapButtonText;
  final Function(Cast)? onTap;
  ScrollingArtists(
      {this.themeData, this.api, this.title, this.tapButtonText, this.onTap});
  @override
  _ScrollingArtistsState createState() => _ScrollingArtistsState();
}

class _ScrollingArtistsState extends State<ScrollingArtists> {
  TvCredits? credits;
  @override
  void initState() {
    super.initState();
    fetchCredits(widget.api!).then((value) {
      setState(() {
        credits = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        credits == null
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text(widget.title!,
                        style: widget.themeData!.textTheme.bodyText1),
                  ],
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.title!,
                        style: widget.themeData!.textTheme.bodyText1),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => CastAndCrew(
                      //       themeData: widget.themeData,
                      //       credits: credits,
                      //     ),
                      //   ),
                      // );
                    },
                    child: Text(widget.tapButtonText!,
                        style: widget.themeData!.textTheme.caption),
                  ),
                ],
              ),
        SizedBox(
          width: double.infinity,
          height: 120,
          child: credits == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: credits!.cast!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          widget.onTap!(credits!.cast![index]);
                        },
                        child: SizedBox(
                          width: 80,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: SizedBox(
                                  width: 70,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: credits!.cast![index].profilePath ==
                                            null
                                        ? Image.asset(
                                            'assets/images/na.jpg',
                                            fit: BoxFit.cover,
                                          )
                                        : FadeInImage(
                                            image: NetworkImage(
                                                '${TMDB_BASE_IMAGE_URL}original/${credits!.cast![index].profilePath!}'),
                                            fit: BoxFit.cover,
                                            placeholder: const AssetImage(
                                              'assets/loading.gif',
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  credits!.cast![index].name!,
                                  style: widget.themeData!.textTheme.caption,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
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
