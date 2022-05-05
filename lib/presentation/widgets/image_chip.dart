import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageChip extends StatelessWidget {
  const ImageChip(
      {Key? key,
      required this.img,
      required this.txt,
      required this.onTap,
      required this.selected,
      required this.selectedColor,
      required this.height,
      required this.imagePadding})
      : super(key: key);
  final Widget img;
  final String txt;
  final GestureTapCallback onTap;
  final bool selected;
  final Color selectedColor;
  final double height;
  final EdgeInsets imagePadding;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        buttonColor: (selected) ? selectedColor : Colors.white,
        child: Stack(children: [
          SizedBox(
            height: height,
            child: Padding(
              padding: imagePadding,
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.teal,
                    spreadRadius: -10,
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  )
                ]),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  child: Text(
                    txt,
                    style: GoogleFonts.encodeSansSc(
                      textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  onPressed: () {
                    //click actions
                    onTap();
                  },
                ),
              ),
            ),
          ),
          Positioned(
            // will be positioned in the top right of the container
            top: 0,
            left: 0,
            bottom: 0,
            child: img,
          )
        ]));
  }
}
