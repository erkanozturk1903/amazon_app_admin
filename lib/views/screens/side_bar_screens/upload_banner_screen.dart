import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class UploadBannerScreen extends StatefulWidget {
  static const String routeName = '\UploadBannerScreen';
   UploadBannerScreen({Key? key}) : super(key: key);



  @override
  State<UploadBannerScreen> createState() => _UploadBannerScreenState();
}

class _UploadBannerScreenState extends State<UploadBannerScreen> {

  dynamic _image;

  pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.image,
    );
    if( result != null){
      setState(() {
        _image = result.files.first.bytes;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Afiş Yönetimi',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade500,
                          border: Border.all(
                            color: Colors.grey.shade800,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text('Resim Yükle'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        pickImage();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow.shade900,
                      ),
                      child: Text('Resim Yükle'),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow.shade900,
                ),
                child: Text('Kaydet'),
              )
            ],
          )
        ],
      ),
    );
  }
}
