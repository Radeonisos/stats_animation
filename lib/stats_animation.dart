library stats_animation;

import 'package:flutter/material.dart';

class StatsAnimation extends StatefulWidget {
  StatsAnimation(this.stats,
      {this.widthMax = 100,
      this.colorBack = Colors.white,
      this.colorFill = Colors.blue,
      this.timeForStart = const Duration(milliseconds: 200),
      this.baseMillisecondOfAnimation = 1000,
      this.widthText = 100,
      this.mainAxisAlignmentRow = MainAxisAlignment.start});
  Map<String, double> stats;
  double widthMax;
  Color colorBack;
  Color colorFill;
  Duration timeForStart;
  int baseMillisecondOfAnimation;
  double widthText;
  MainAxisAlignment mainAxisAlignmentRow;
  @override
  _StatsAnimationState createState() => _StatsAnimationState();
}

class _StatsAnimationState extends State<StatsAnimation> {
  List<double> widthElements = [];
  double maxWidth = 0;

  @override
  void initState() {
    super.initState();
    widget.stats.forEach((_, value) {
      if (maxWidth < value) {
        maxWidth = value;
      }
      widthElements.add(0.0);
    });
    Future.delayed(widget.timeForStart, () {
      setState(() {
        for (int i = 0; i < widget.stats.length; i++) {
          print(widget.stats.values.elementAt(i));
          widthElements[i] =
              widget.widthMax * (widget.stats.values.elementAt(i) / maxWidth);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [...getStat()],
    );
  }

  List<Widget> getStat() {
    int i = 0;
    return widget.stats.entries.map((e) {
      print(e.key);
      return Row(
        mainAxisAlignment: widget.mainAxisAlignmentRow,
        children: [
          Container(
            width: widget.widthText,
            child: Text(
              e.key,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Stack(
            children: [
              Container(
                height: 12,
                width: widget.widthMax,
                decoration: BoxDecoration(
                  color: widget.colorBack,
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Positioned(
                top: 1,
                left: 1,
                child: AnimatedContainer(
                  duration: Duration(
                      milliseconds: (widget.baseMillisecondOfAnimation *
                              (e.value / maxWidth))
                          .truncate()),
                  height: 10,
                  decoration: BoxDecoration(
                    color: widget.colorFill,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: widthElements.length > i
                      ? widthElements[i++]
                      : widget.stats.entries.elementAt(i++).value,
                ),
              )
            ],
          )
        ],
      );
    }).toList();
  }
}
