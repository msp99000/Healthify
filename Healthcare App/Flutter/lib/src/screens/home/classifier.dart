import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';
import 'package:tflite/tflite.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Classifier extends StatefulWidget {
  @override
  _Classifier createState() => _Classifier();
}

class _Classifier extends State<Classifier> {
  bool _loading = true;
  File _image;
  List _output;
  final picker = ImagePicker();
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  openPlayer(audio) async {
    await audioPlayer.open(Audio(audio), autoStart: true, showNotification: false);
  }


  @override
  void initState() {
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 10,
        threshold: 0.5,
        imageMean: 127.6,
        imageStd: 127.5);

    setState(() {
      _output = output;
      _loading = false;
    });

    if ('${_output[0]['label']}' == "This is an Avocado") {
      openPlayer('Avocado.m4a');
    } else if ('${_output[0]['label']}' ==
        "This is a Beetroot") {
      openPlayer('Beetroot.m4a');
    } else if ('${_output[0]['label']}' ==
        "This is a Brocolli") {
      openPlayer('Broccoli.m4a');
    } else if ('${_output[0]['label']}' ==
        "This is a Cabbage") {
      openPlayer('Cabbage.m4a');
    } else if ('${_output[0]['label']}' ==
        "This is a Carrot") {
      openPlayer('Carrot.m4a');
    } else if ('${_output[0]['label']}' == "This is a Corn") {
      openPlayer('Corn.m4a');
    } else if ('${_output[0]['label']}' ==
        "This is a Lemon") {
      openPlayer('Lemon.m4a');
    } else if ('${_output[0]['label']}' ==
        "This is a Pepper Red") {
      openPlayer('Red_Pepper.m4a');
    } else if ('${_output[0]['label']}' ==
        "This is a Tomato Cherry Red") {
      openPlayer('Tomato Cherry Red.m4a');
    } else if ('${_output[0]['label']}' ==
        "This is a Spinach") {
      openPlayer('Spinach.m4a');
    }

  }

  loadModel() async {
    await Tflite.loadModel(model: 'svm-surf.tflite', labels: 'labels.txt');
  }

  pickImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      if (image != null) {
        _image = File(image.path);
      } else {
        print("No image Selected");
      }
    });
    classifyImage(_image);
  }

  pickGalleryImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    setState(() {
      _image = File(image.path);
    });
    classifyImage(_image);
  }

  @override
  void dispose() {
    Tflite.close();
    audioPlayer.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/categories');
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Vegetable Detector',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 42,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: _loading
                  ? Container(
                      width: 280,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    )
                  : Container(
                      child: Column(
                        children: [
                          Container(
                            height: 220,
                            child: Image.file(_image),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          _output != null && _output.length > 0
                              ? Text(
                                  '${_output[0]['label']}',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 36),
                                )
                              : Text(
                                  "Object Not Found",
                                ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: pickImage,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 150,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Take a photo',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: pickGalleryImage,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 150,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Import from Gallery',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      if ('${_output[0]['label']}' == "This is an Avocado") {
                        (Navigator.pushNamed(context, "/avocado"));
                      } else if ('${_output[0]['label']}' ==
                          "This is a Beetroot") {
                        (Navigator.pushNamed(context, "/beetroot"));
                      } else if ('${_output[0]['label']}' ==
                          "This is a Brocolli") {
                        (Navigator.pushNamed(context, "/broccoli"));
                      } else if ('${_output[0]['label']}' ==
                          "This is a Cabbage") {
                        (Navigator.pushNamed(context, "/cabbage"));
                      } else if ('${_output[0]['label']}' ==
                          "This is a Carrot") {
                        (Navigator.pushNamed(context, "/carrot"));
                      } else if ('${_output[0]['label']}' == "This is a Corn") {
                        (Navigator.pushNamed(context, "/corn"));
                      } else if ('${_output[0]['label']}' ==
                          "This is a Lemon") {
                        (Navigator.pushNamed(context, "/lemon"));
                      } else if ('${_output[0]['label']}' ==
                          "This is a Pepper Red") {
                        (Navigator.pushNamed(context, "/pepper"));
                      } else if ('${_output[0]['label']}' ==
                          "This is a Spinach") {
                        (Navigator.pushNamed(context, "/spinach"));
                      } else if ('${_output[0]['label']}' ==
                          "This is a Beetroot") {
                        (Navigator.pushNamed(context, "/spinach"));
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 150,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Show Diet Plan',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
