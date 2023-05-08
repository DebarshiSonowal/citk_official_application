import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Constants/Constance.dart';

class IndicatorSection extends StatelessWidget {
  const IndicatorSection({
    Key? key,
    required CarouselController controller,
    required int current,
  })  : _controller = controller,
        _current = current,
        super(key: key);

  final CarouselController _controller;
  final int _current;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.w,
      height: 3.h,
      child: Center(
        child: ListView.builder(
          // controller: controller,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: Constance.advertisements.length,
          itemBuilder: (BuildContext context, int index) {
            var current = Constance.advertisements[index];
            return GestureDetector(
              onTap: () => _controller.animateToPage(index),
              child: Container(
                width: 2.w,
                height: 2.h,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.white)
                      .withOpacity(_current == index ? 0.9 : 0.4),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
