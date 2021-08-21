import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:vma_autohub/widget/loading_widget.dart';
import 'home_screen.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key key}) : super(key: key);

  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {

  final TextEditingController _descriptionEditingController = TextEditingController();
  File _imageFile;
  bool _loading = false;
  ImagePicker imagePicker = ImagePicker();

  Future<void> _chooseImage() async {
    PickedFile pickedFile = await imagePicker.getImage(
        source: ImageSource.gallery,
    );
    setState(() {
         _imageFile = File(pickedFile.path);
    });
  }
  void _validate(){
      if(_imageFile == null && _descriptionEditingController.text.isEmpty){
        Fluttertoast.showToast(
          msg:'Please Add Image And Enter Description',);
      }else if(_imageFile==null){
        Fluttertoast.showToast(
          msg:'Please Add Image',);
      }else if(_descriptionEditingController.text.isEmpty){
        Fluttertoast.showToast(
          msg:'Please Enter Description',);
      }else{
         setState(() {
              _loading = true;
         });
          _uploadImage();
      }
  }
  void _uploadImage(){
      String imageFileName = DateTime.now().millisecondsSinceEpoch.toString();
      final Reference storageReference = FirebaseStorage.instance.ref().child('Images').child(imageFileName);
      final UploadTask uploadTask = storageReference.putFile(_imageFile);
      uploadTask.then((TaskSnapshot taskSnapshot){
           taskSnapshot.ref.getDownloadURL().then((imageUrl){
                _saveData(imageUrl);
           });
      }).catchError((e){
        setState(() {
          _loading = true;
        });
        Fluttertoast.showToast(
          msg: e.toString(),);
      });
  }

  void _saveData( String imageUrl){
      var dateFormat = DateFormat('MMM d,yyyy');
      var timeFormat = DateFormat('EEEE,hh:mm a');
      String date = dateFormat.format(DateTime.now()).toString();
      String time = timeFormat.format(DateTime.now()).toString();
      FirebaseFirestore.instance.collection('posts').add({
          'imageUrl' : imageUrl,
          'description' : _descriptionEditingController.text,
          'date' : date,
          'time' : time,
      }).whenComplete((){
        setState(() {
          _loading = true;
        });
        Fluttertoast.showToast(
          msg: 'Post Added Successfully',
        );
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
               return HomeScreen();
        }));
      }).catchError((e){
        setState(() {
          _loading = true;
        });
         Fluttertoast.showToast(
             msg: e.toString(),
         );
      });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
           title: Text("Upload"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
             children: <Widget>[
                  _imageFile == null ? Container(
                     width: double.infinity,
                     height: 250,
                     color: Colors.grey,
                     child: Center(
                        child:  RaisedButton(
                            onPressed: (){
                               _chooseImage();
                            },
                            color: Colors.blueAccent,
                            child: Text("Choose Image",
                              style: TextStyle(
                                 fontSize: 16,
                                 color: Colors.white,
                              ),
                            ),
                        ),
                     ),
                  ) : GestureDetector(
                      onTap: (){
                         _chooseImage();
                    },
                    child: Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                         image: DecorationImage(image: FileImage(_imageFile),
                            fit: BoxFit.cover,
                         ),
                      ),
                    ),
                  ),
                 SizedBox(
                   height: 16,
                 ),
               TextField(
                 controller: _descriptionEditingController,
                 keyboardType: TextInputType.text,
                 decoration: InputDecoration(
                     labelText: "Description"
                 ),
               ),
               SizedBox(
                 height: 40,
               ),
               _loading ? circularProgress():GestureDetector(
                 onTap: _validate,
                 child: Container(
                   width: double.infinity,
                   height: 50,
                   color: Colors.blueAccent,
                   child: Center(
                     child: Text("Add New Post",
                       style: TextStyle(
                         fontSize: 18,
                         color: Colors.white,
                       ),
                     ),
                   ),
                 ),
               ),
             ],
          ),
        ),
    );
  }
}
