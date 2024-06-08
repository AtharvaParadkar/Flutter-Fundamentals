// ignore_for_file: avoid_print

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  ImagePicker _picker = ImagePicker();
  //^ XFile is a cross platform file
  XFile? file;
  List<XFile>? _files;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: CupertinoColors.destructiveRed,
              child: Center(
                child: file == null
                    ? const Text('Image Not Picked!')
                    : Image.file(
                        File(file!.path),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final XFile? photo =
                    await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = photo;
                });
                print('Image Picked');
                print(photo!.path);
              },
              child: const Text('Pick Image'),
            ),
            Expanded(
              child: _files == null
                  ? const Center(child: Text('Images Not Picked'))
                  : GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemCount: _files!.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Image.file(
                          File(_files![index].path),
                          fit: BoxFit.cover,
                        );
                      },
                    ),
            ),
            ElevatedButton(
              onPressed: () async {
                final List<XFile>? photos = await _picker.pickMultiImage();
                setState(() {
                  _files = photos;
                });
                print('Images Picked');
                for (int p = 0; p < _files!.length; p++) {
                  print(photos![p].path);
                }
              },
              child: const Text('Pick Images'),
            ),
          ],
        ),
      ),
    );
  }
}
