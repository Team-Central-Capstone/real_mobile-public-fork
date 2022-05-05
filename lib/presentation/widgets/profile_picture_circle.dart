import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfilePicCircle extends StatelessWidget {
  Image? img;

  ProfilePicCircle({
    Key? key,
    this.img,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        Align(
          alignment: FractionalOffset.center,
          child: kIsWeb
              // if web version don't load animations
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Material(
                    elevation: 8.0,
                    shape: const CircleBorder(),
                    child: Container(
                      height: 150.0,
                      width: 150.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(75.0),
                        child: img ??
                            CircleAvatar(
                              backgroundColor: Colors.grey[100],
                              radius: 60.0,
                            ),
                      ),
                    ),
                  ),
                )
              // else take all the RAM
              : AvatarGlow(
                  startDelay: const Duration(milliseconds: 1000),
                  glowColor: Colors.pink,
                  endRadius: 100.0,
                  duration: const Duration(milliseconds: 2000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: const Duration(milliseconds: 100),
                  child: Material(
                    elevation: 8.0,
                    shape: const CircleBorder(),
                    child: Container(
                      height: 150.0,
                      width: 150.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(75.0),
                        child: img ??
                            CircleAvatar(
                              backgroundColor: Colors.grey[100],
                              radius: 60.0,
                            ),
                      ),
                    ),
                  ),
                  shape: BoxShape.circle,
                  animate: true,
                  curve: Curves.fastOutSlowIn,
                ),
        ),
        Positioned(
          bottom: -90,
          right: 0,
          top: 0,
          left: 0,
          child: Icon(
            Icons.photo_camera,
            color: Colors.pinkAccent.withAlpha(100),
            size: 24.0,
            semanticLabel: 'Upload Profile Photo',
          ),
        )
      ]),
    );
  }
}
