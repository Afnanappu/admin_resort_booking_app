import 'package:firebase_auth/firebase_auth.dart';

bool adminCurrentAuthState(){
  if(FirebaseAuth.instance.currentUser != null){
    return true;
  }
  return false;
}