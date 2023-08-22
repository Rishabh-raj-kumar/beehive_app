import 'dart:typed_data';
import 'package:beehive/resources/storage_methods.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUpUser({
  required String email,
    required String password,
    required String username,
    required String bio,
    required Uint8List file
}) async {
    String res = "some error occured";
    try{
      if(email.isNotEmpty || password.isNotEmpty || username.isNotEmpty || bio.isNotEmpty){
           UserCredential cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);

           //check user is present or not.
           print(cred.user!.uid);
           
           String photoUrl = await StorageMethods().uploadImageToStorage('profilePics', file, false);


           await _firestore.collection('users').doc(cred.user!.uid).set({
             'username' : username,
             'uid' : cred.user!.uid,
             'password' : password,
             'bio' : bio,
             'followers' : [],
             'following' : [],
             'photoUrl' : photoUrl
           });
           res = 'success';
      }else{
        print('field must not be empty');
        res = "fields are empty";
      }
    }catch(err){
      res = err.toString();
    }
    return res;
  }

  Future<String>loginUser({
  required String email,
    required String password
}) async {
    String res = "Some error Occured";

    try{
      if(email.isNotEmpty || password.isNotEmpty){
        await _auth.signInWithEmailAndPassword(email: email, password: password);
        res = "success";
      }else{
        res = "All fields must contain values";
      }
    }catch(err){
      res = err.toString();
    }
    return res;
  }
}