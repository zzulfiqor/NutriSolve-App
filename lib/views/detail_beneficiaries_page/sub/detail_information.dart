import 'package:flutter/material.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';
import 'package:nutrisolve_app/common/widgets/line_grey.dart';
import 'package:nutrisolve_app/views/detail_beneficiaries_page/sub/collapsible_widget/gallery_widget.dart';
import 'package:nutrisolve_app/views/detail_beneficiaries_page/sub/collapsible_widget/general_information_widget.dart';

class DetailInformation extends StatefulWidget {
  @override
  _DetailInformationState createState() => _DetailInformationState();
}

class _DetailInformationState extends State<DetailInformation> {
  bool _isDescriptionExpand = false;
  bool _isGeneralInformationExpand = false;
  bool _isPhotosExpand = false;

  void _toogleDescription() {
    setState(() {
      _isDescriptionExpand = !_isDescriptionExpand;
    });
  }

  void _toogleGeneralInformation() {
    setState(() {
      _isGeneralInformationExpand = !_isGeneralInformationExpand;
    });
  }

  void _togglePhotos() {
    setState(() {
      _isPhotosExpand = !_isPhotosExpand;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: ListView(
        padding: EdgeInsets.only(top: 8),
        physics: BouncingScrollPhysics(),
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Name and donation
          //  information
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 275,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Baby Yoda The Number Seven Seven",
                      style: text_size_medium.copyWith(
                          fontWeight: fontWeight_semibold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          "663 meals",
                          style: text_size_small.copyWith(
                            color: main_color,
                            fontWeight: fontWeight_semibold,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "collected from",
                          style: text_size_small.copyWith(
                            color: grey_dark,
                            fontWeight: fontWeight_regular,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "1000 meals",
                          style: text_size_small.copyWith(
                            color: grey_dark,
                            fontWeight: fontWeight_regular,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              // Circular Progress Widget
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(main_color),
                          backgroundColor: Colors.grey.withOpacity(.4),
                          value: 65 / 100,
                          strokeWidth: 5,
                        ),
                      ),
                      Align(
                        alignment: FractionalOffset.center,
                        child: Text(
                          "65%",
                          style: text_size_small.copyWith(color: grey_dark),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Short story
          // a.k.a description
          //  1 paragraph
          // Spacers 25px
          SizedBox(
            height: 20,
          ),
          Material(
            color: white,
            child: InkWell(
              onTap: () {
                setState(() {
                  this._toogleDescription();
                  print('toggle description = ${_isDescriptionExpand}');
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Description",
                        style: text_size_medium.copyWith(
                          fontWeight: fontWeight_semibold,
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(seconds: 1),
                        child: Icon(
                          (this._isDescriptionExpand == true)
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                        ),
                      ),
                    ],
                  ),

                  // Spacing
                  // Story content Collapsible Toggle
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        child: (this._isDescriptionExpand == true)
                            ? Container(
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                      text:
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam nibh nisl, sagittis non massa non, convallis congue elit. Phasellus vel malesuada tellus. Donec interdum magna a purus tristique, sed ultricies urna commodo. Cras non tincidunt elit. Quisque auctor dapibus pharetra. Sed et fermentum felis. Nunc porta diam maximus arcu malesuada posuere. Phasellus in neque vitae mi tempus rhoncus.',
                                      style: text_size_regular.copyWith(
                                        color: grey_dark,
                                      )),
                                  softWrap: true,
                                ),
                              )
                            : Container(
                                height: 0,
                              ),
                      ),

                      SizedBox(height: 10),
                      // line
                      LineGrey()
                    ],
                  ),
                ],
              ),
            ),
          ),
          // General Information
          // Table of General Information
          // Spacers 15px
          SizedBox(
            height: 15,
          ),
          Material(
            color: white,
            child: InkWell(
              onTap: () {
                setState(() {
                  this._toogleGeneralInformation();
                  print('toggle general info = ${_isGeneralInformationExpand}');
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "General Information",
                        style: text_size_medium.copyWith(
                          fontWeight: fontWeight_semibold,
                        ),
                      ),
                      Icon(
                        (this._isGeneralInformationExpand == true)
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down,
                      ),
                    ],
                  ),

                  // Spacing
                  // General Information content Collapsible Toggle
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: (this._isGeneralInformationExpand == true)
                            ? Container(
                                child: Container(
                                  child: GeneralInformation(),
                                ),
                              )
                            : Container(
                                height: 0,
                              ),
                      ),

                      SizedBox(height: 10),
                      // line
                      LineGrey()
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Photos Gallery
          // List of Photo
          // Scrolled Horizontally
          // General Information
          // Table of General Information
          // Spacers 15px
          SizedBox(
            height: 15,
          ),
          Material(
            color: white,
            child: InkWell(
              onTap: () {
                setState(() {
                  this._togglePhotos();
                  print('toggle photo gallery = ${_isPhotosExpand}');
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gallery",
                        style: text_size_medium.copyWith(
                          fontWeight: fontWeight_semibold,
                        ),
                      ),
                      Icon(
                        (this._isPhotosExpand == true)
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down,
                      ),
                    ],
                  ),

                  // Spacing
                  // General Information content Collapsible Toggle
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: (this._isPhotosExpand == true)
                            ? Container(
                                child: Container(
                                  child: GalleryWidget(),
                                ),
                              )
                            : Container(
                                height: 0,
                              ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
