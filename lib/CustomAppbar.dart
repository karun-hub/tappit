import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      CustomIconBtn(customicon:Icons.arrow_back_ios ),
        Text("Create subscription",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        SizedBox(width: 10,),SizedBox(width: 10,)

      ],
    );
  }
}
class CustomIconBtn extends StatelessWidget {
  IconData customicon ;
  CustomIconBtn({@required this.customicon});
  @override
  Widget build(BuildContext context) {
    return    Container(
        padding: EdgeInsets.all(10),

        child: Icon(customicon));
  }
}

