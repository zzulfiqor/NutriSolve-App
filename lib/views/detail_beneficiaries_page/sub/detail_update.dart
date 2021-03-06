import 'package:flutter/material.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';
import 'package:nutrisolve_app/common/widgets/line_grey.dart';
import 'package:timeline_tile/timeline_tile.dart';

class DetailUpdate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TimelineTile(
        isFirst: true,
        alignment: TimelineAlign.manual,
        lineXY: 0.25,
        afterLineStyle: LineStyle(thickness: 2, color: main_color),
        beforeLineStyle: LineStyle(thickness: 2, color: main_color),
        startChild: Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: main_color,
                ),
                padding: EdgeInsets.only(
                  right: 10,
                  left: 10,
                  top: 5,
                  bottom: 5,
                ),
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                ),
                child: Center(
                  child: Text(
                    "20 Jan\n2020",
                    style: text_size_small.copyWith(color: white),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
        endChild: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: grey_dark.withOpacity(.5))),
          width: double.infinity,
          margin: EdgeInsets.only(left: 15, top: 15),
          padding: EdgeInsets.only(
            left: 10,
            top: 5,
            bottom: 5,
            right: 5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Campaign Started.",
                style: text_size_small.copyWith(
                  fontWeight: fontWeight_regular,
                  color: main_color_darker,
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        indicatorStyle: IndicatorStyle(width: 15, color: main_color),
      ),
      // timeline
      TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0.25,
        afterLineStyle: LineStyle(thickness: 2, color: main_color),
        beforeLineStyle: LineStyle(thickness: 2, color: main_color),
        startChild: Container(
          padding: EdgeInsets.only(top: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: main_color,
                ),
                padding: EdgeInsets.only(
                  right: 10,
                  left: 10,
                  top: 5,
                  bottom: 5,
                ),
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                ),
                child: Center(
                  child: Text(
                    "22 Jan\n2020",
                    style: text_size_small.copyWith(color: white),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
        endChild: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: grey_dark.withOpacity(.5))),
          width: double.infinity,
          margin: EdgeInsets.only(left: 15, top: 15),
          padding: EdgeInsets.only(
            left: 10,
            top: 5,
            bottom: 5,
            right: 5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Batch Pertama Penyaluran Makanan, Penerima donasi keadaan mulai membaik.",
                style: text_size_small.copyWith(
                  fontWeight: fontWeight_regular,
                  color: main_color_darker,
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        indicatorStyle: IndicatorStyle(width: 15, color: main_color),
      ),
      // timeline
      TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0.25,
        afterLineStyle: LineStyle(thickness: 2, color: main_color),
        beforeLineStyle: LineStyle(thickness: 2, color: main_color),
        startChild: Container(
          padding: EdgeInsets.only(top: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: main_color,
                ),
                padding: EdgeInsets.only(
                  right: 10,
                  left: 10,
                  top: 5,
                  bottom: 5,
                ),
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                ),
                child: Center(
                  child: Text(
                    "26 Jan\n2020",
                    style: text_size_small.copyWith(color: white),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
        endChild: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: grey_dark.withOpacity(.5))),
          width: double.infinity,
          margin: EdgeInsets.only(left: 15, top: 15),
          padding: EdgeInsets.only(
            left: 10,
            top: 5,
            bottom: 5,
            right: 5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Batch Kedua Penyaluran Makanan, Penerima donasi keadaan mulai membaik.",
                style: text_size_small.copyWith(
                  fontWeight: fontWeight_regular,
                  color: main_color_darker,
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        indicatorStyle: IndicatorStyle(width: 15, color: main_color),
      ),
      // timeline
      TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0.25,
        afterLineStyle: LineStyle(thickness: 2, color: main_color),
        beforeLineStyle: LineStyle(thickness: 2, color: main_color),
        startChild: Container(
          padding: EdgeInsets.only(top: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: main_color,
                ),
                padding: EdgeInsets.only(
                  right: 10,
                  left: 10,
                  top: 5,
                  bottom: 5,
                ),
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                ),
                child: Center(
                  child: Text(
                    "26 Jan\n2020",
                    style: text_size_small.copyWith(color: white),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
        endChild: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: grey_dark.withOpacity(.5))),
          width: double.infinity,
          margin: EdgeInsets.only(left: 15, top: 15),
          padding: EdgeInsets.only(
            left: 10,
            top: 5,
            bottom: 5,
            right: 5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Batch Terakhir Penyaluran Makanan, Penerima donasi keadaan mulai membaik dan semakin membaik.",
                style: text_size_small.copyWith(
                  fontWeight: fontWeight_regular,
                  color: main_color_darker,
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        indicatorStyle: IndicatorStyle(width: 15, color: main_color),
      ),

      // timeline
      TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0.25,
        afterLineStyle: LineStyle(thickness: 2, color: main_color),
        beforeLineStyle: LineStyle(thickness: 2, color: main_color),
        startChild: Container(
          padding: EdgeInsets.only(top: 15),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: main_color,
            ),
            padding: EdgeInsets.only(
              right: 10,
              left: 10,
              top: 5,
              bottom: 5,
            ),
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            child: Center(
              child: Text(
                "26 Jan\n2020",
                style: text_size_small.copyWith(color: white),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        endChild: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: grey_dark.withOpacity(.5))),
          width: double.infinity,
          margin: EdgeInsets.only(left: 15, top: 15),
          padding: EdgeInsets.only(
            left: 10,
            top: 5,
            bottom: 5,
            right: 5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Terget sudah tercapai, gizi baby yoda sudah terpenuhi.",
                style: text_size_small.copyWith(
                  fontWeight: fontWeight_regular,
                  color: main_color_darker,
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        indicatorStyle: IndicatorStyle(width: 15, color: main_color),
        isLast: true,
      ),
    ]);
  }
}
