     import 'package:flutter/material.dart';

class ReturnIconButton extends StatelessWidget {
final Widget  icon;//الايقونة ضمن زر الرجوع في اب بار ممكن ان تكون svg وممكن ايقونة عادية
final bool notify; 

  const ReturnIconButton({
    super.key,
    required this.icon,
    required this.notify,
    
    });


  @override
  Widget build(BuildContext context) {
    return Stack( clipBehavior: Clip.none,
                                 children: [
                                     CircleAvatar(backgroundColor:Colors.white ,radius:22 ,
                                     child: icon ),
                                       if(notify)  Positioned(top:4 ,right:4 ,
                                           child: CircleAvatar(backgroundColor:const Color.fromRGBO(253, 22, 0, 1),radius: 4,))
                                          
                                           ],         
                                   );
  }
}          
 