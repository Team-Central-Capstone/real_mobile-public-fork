import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_nsfw/flutter_nsfw.dart';
import 'package:path_provider/path_provider.dart';

class NSFWDetector {
  NSFWDetector(this.modelPath, this.enableLog, this.isOpenGPU, this.numThreads);

  final String modelPath;
  final bool enableLog;
  final bool isOpenGPU;
  final int numThreads;

  bool isInitialized = false;

  Future<dynamic> detectInPhoto(String photoPath) async {
    if (!isInitialized) {
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String appDocPath = appDocDir.path;
      var file = File(appDocPath + "/nsfw.tflite");
      if (!file.existsSync()) {
        var data = await rootBundle.load("assets/nsfw.tflite");
        final buffer = data.buffer;
        await file.writeAsBytes(
            buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
      }
      await FlutterNsfw.initNsfw(
        file.path,
      );
      isInitialized = true;
    }

    return FlutterNsfw.getPhotoNSFWScore(photoPath);
  }

  Future<dynamic> detectVideo(
    String videoPath,
    double nsfwThreshold,
    int width,
    int height,
  ) async {
    if (!isInitialized) {
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String appDocPath = appDocDir.path;
      var file = File(appDocPath + "/nsfw.tflite");
      if (!file.existsSync()) {
        var data = await rootBundle.load("assets/nsfw.tflite");
        final buffer = data.buffer;
        await file.writeAsBytes(
            buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
      }
      await FlutterNsfw.initNsfw(
        file.path,
      );
      isInitialized = true;
    }
    final result = await FlutterNsfw.detectNSFWVideo(
        videoPath: videoPath,
        nsfwThreshold: nsfwThreshold,
        frameWidth: width,
        frameHeight: height,
        durationPerFrame: 1000);
    if (result != null) {
      print('the result is true');
      return result as bool;
    } else {
      print('this result is false');
      return false;
    }
  }
}
