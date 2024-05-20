import 'package:flutter/material.dart';

PageRouteBuilder pageTransition(context,{nextPage}){
  return PageRouteBuilder(pageBuilder: (context,animation,secondaryAnimation)=>nextPage,
   transitionsBuilder: ((context, animation, secondaryAnimation, child) {
    return SlideTransition(
       
      position:animation.drive(Tween<Offset>(begin:const Offset(0, 1),end: const Offset(0, 0)).chain(CurveTween(curve: Curves.easeInOutQuad))) ,
      child: Container(child: child));
  }),
  reverseTransitionDuration: const Duration(milliseconds: 450),
  transitionDuration: const Duration(milliseconds: 450)
  );
}