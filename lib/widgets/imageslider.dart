import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class ImageSlider extends StatefulWidget {
  final List<String> imageUrl;
  const ImageSlider({super.key, required this.imageUrl});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  //CarouselController _carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
     //       carouselController: _carouselController,
            options: CarouselOptions(
              height: 250.0,
              viewportFraction: 0.8,
              //aspectRatio: 0.2,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            items: widget.imageUrl.map((e) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      e,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Positioned(
            bottom: 10.0,
            left: 0,
            right: 0,
            child: DotsIndicator(
                  dotsCount: widget.imageUrl.length,
                  position: currentIndex,
                  decorator: DotsDecorator(
                    activeColor: Color(0xff038C7F),
                    color: Colors.white,
                  ),
                )
            
          ),
      ],
    );
  }
}