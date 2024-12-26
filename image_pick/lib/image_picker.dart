import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class Imagepicker extends StatefulWidget {
  const Imagepicker({super.key});
  @override
  Home createState() => Home();
}

class Home extends State<Imagepicker> {
  File? imagefile;
  final ImagePicker picker = ImagePicker();

  Future pickimage(ImageSource source) async {
    final XFile? image = await picker.pickImage(source: source);
    if (image != null) {
      setState(() {
        imagefile = File(image.path);
      });
    }
  }

Future<void> _requestPermissions() async {
    await [
      Permission.camera,
      Permission.photos,
    ].request();
  }

  
  @override
  void initState() {
    super.initState();
    _requestPermissions();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Image Picker'),),
      body: Center(
        child: Column(

          children: [
            Text('Take a picture or choose a image'),
            SizedBox(height: 100),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 88,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            InkWell(
                              onTap: () {
                                pickimage(ImageSource.camera);
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.camera,
                                    size: 30,
                                  ),
                                  Text('Camera', style: TextStyle(fontSize: 25))
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                pickimage(ImageSource.gallery);
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.folder,
                                    size: 30,
                                  ),
                                  Text(
                                    'Gallery',
                                    style: TextStyle(fontSize: 25),
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),
                      );
                    });
              },
              child: Container(
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200]),
                child:imagefile == null
                    ? Icon(Icons.add)
                    : Image.file(imagefile!),


              ),
            ),
          ],
        ),
      ),
    );
  }
}
