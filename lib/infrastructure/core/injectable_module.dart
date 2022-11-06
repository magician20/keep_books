import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';


@module
abstract class RegisterModule{
  @singleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @singleton
  FirebaseFirestore  get firestore => FirebaseFirestore.instance;

  // @singleton
  // GoogleSignIn get googleSignIn => GoogleSignIn();

  @singleton
  Dio get dio => Dio();//better if we create class change settings of dio

}