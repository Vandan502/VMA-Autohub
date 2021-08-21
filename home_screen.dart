import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:vma_autohub/authentic.dart';
import 'package:vma_autohub/widget/loading_widget.dart';
import 'upoad_screen.dart';
import 'models/post.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget _cardUI(Post post){
     return Card(
         margin: EdgeInsets.all(16),
         elevation: 10,
         child: Container(
            padding: EdgeInsets.all(14),
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                        Text(post.date,
                           textAlign: TextAlign.center,
                           style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                           ),
                        ),
                       Text(post.time,
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           fontSize: 16,
                           color: Colors.grey,
                           fontStyle: FontStyle.italic,
                         ),
                       ),
                     ],
                   ),
                   SizedBox(
                      height: 10,
                   ),
                    Image.network(
                      post.imageUrl,
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                       height: 20,
                    ),
                    Text(post.description,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                ],
            ),
         ),

     );



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
           title: Text(
               "Home"
           ),
           actions: [
             Padding(
               padding: const EdgeInsets.only(right: 8),
               child: GestureDetector(
                 onTap: (){
                   Navigator.of(context).push(
                     MaterialPageRoute(builder: (context) => UploadScreen()),
                   );
                 },
                 child: Icon(
                   Icons.add,
                   color: Colors.white,
                 ),
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: GestureDetector(
                    onTap: (){
                       FirebaseAuth.instance.signOut().whenComplete((){
                         Navigator.of(context).pushReplacement(
                           MaterialPageRoute(builder: (context) => Authentic()),
                         );
                       }).catchError((e){
                         Fluttertoast.showToast(
                           msg: e.toString(),);
                       });
                    },
                    child: Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                    ),
                ),
              ),

           ],
        ),
        body: Container(
            child: StreamBuilder(
               stream: FirebaseFirestore.instance.collection('posts').snapshots(),
               builder: (context,snapshot){
                   if (!snapshot.hasData) {
                       return Center(
                           child: circularProgress(),
                       );
                   }
                   else{
                       return ListView.builder(
                          itemCount: snapshot.data.docs.length,
                          itemBuilder: (context,index){
                              Map < String,dynamic > postMap = snapshot.data.docs[index].data();
                               Post post =  Post(
                                   postMap['imageUrl'],
                                   postMap['description'],
                                   postMap['date'],
                                   postMap['time'],
                               );
                                return _cardUI(post);
                          }
                       );
                   }
               },
            ),
        ),
    );
  }
}
