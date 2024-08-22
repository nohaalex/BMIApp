import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imagepicker extends StatefulWidget {
  const Imagepicker({super.key});

  @override
  State<Imagepicker> createState() => _ImagepickerState();
}

class _ImagepickerState extends State<Imagepicker> {

  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'IMAGE PICKER',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        )

      ),
        body:SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                MaterialButton(
                  color:Colors.blue,
                    child: const Text(
                      'Add Image from Gallery',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),
                    ),
                    onPressed: (){
                      _pickImageFromGallery();
                    }
                    ),
                MaterialButton(
                    color:Colors.red,
                    child: const Text(
                      'Add Image from Camera',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),
                    ),
                    onPressed: (){
                        _pickImageFromCamera();
                    }
                ),
                const SizedBox(
                  height: 30,
                ),
                selectedImage!=null?Image.file(selectedImage!):const Text('Please Select an Image')
          
              ],
            ),
          ),
        )
      ),
    );
  }


  Future  _pickImageFromGallery() async{
      final returnedImage= await ImagePicker().pickImage(source: ImageSource.gallery);
      setState(() {
        selectedImage=File(returnedImage!.path);
      });
  }



  Future  _pickImageFromCamera() async{
    final returnedImage= await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      selectedImage=File(returnedImage!.path);
    });
  }
}
