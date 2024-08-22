import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FileUploadScreen(),
    );
  }
}

class FileUploadScreen extends StatefulWidget {
  @override
  _FileUploadScreenState createState() => _FileUploadScreenState();
}

class _FileUploadScreenState extends State<FileUploadScreen> {
  XFile? _file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload File"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_file != null)
              Text('Selected file: ${_file!.path}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                XFile? file = await pickFile();
                setState(() {
                  _file = file;
                });
              },
              child: Text("Pick File"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_file != null) {
                  uploadFile(_file!);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('No file selected'),
                  ));
                }
              },
              child: Text("Upload File"),
            ),
          ],
        ),
      ),
    );
  }
}
Future<XFile?> pickFile() async {
  final ImagePicker _picker = ImagePicker();
  // You can use ImageSource.camera for capturing from the camera
  final XFile? file = await _picker.pickVideo(source: ImageSource.gallery);
  return file;
}

Future<void> uploadFile(XFile file) async {
  String uploadUrl = 'YOUR_UPLOAD_URL';

  Dio dio = Dio();

  FormData formData = FormData.fromMap({
    "file": await MultipartFile.fromFile(file.path, filename: file.name),
  });

  try {
    Response response = await dio.post(uploadUrl, data: formData);
    print(response.data);
  } catch (e) {
    print("Upload error: $e");
  }
}
