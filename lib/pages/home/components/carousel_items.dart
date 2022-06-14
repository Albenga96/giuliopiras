import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:giuliopiras/models/carousel_item_model.dart';
import 'package:giuliopiras/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "COMPOSITORE",
            style: GoogleFonts.oswald(
              color: kPrimaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Text(
            "GIULIO\nPIRAS",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            "Compositore",
            style: TextStyle(
              color: kCaptionColor,
              fontSize: 15.0,
              height: 1.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hai bisogno di un brano?",
                style: TextStyle(
                  color: kCaptionColor,
                  fontSize: 15.0,
                  height: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "Hai in mente una collaborazione? Parliamone.",
                    style: TextStyle(
                      height: 1.5,
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "INIZIA",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    image: Image.asset(
      "assets/person.png",
      fit: BoxFit.contain,
    ),
  ),
);
