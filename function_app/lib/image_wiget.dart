import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget(this.activeDiceImage,{super.key});
    final String activeDiceImage;
  @override
  Widget build(BuildContext context) {
    return Center(child: 
    Image.asset(activeDiceImage, 
    width: 200,),
    
    );
  }
}
