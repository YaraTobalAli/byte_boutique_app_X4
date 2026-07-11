import 'package:flutter/material.dart';
import'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomAppBar extends StatelessWidget {
final Widget ? leadingIcon;
final Widget ? titleWidget;
final List<Widget>? actionButton;

  const CustomAppBar({
    super.key,
    this.leadingIcon,
    this.titleWidget,
    this.actionButton,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 60.h,
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [ leadingIcon ?? const SizedBox(),
                      titleWidget ?? const SizedBox(),
                   Row(
          mainAxisSize: MainAxisSize.min,
          children: [
          // actionButton ?? [], 
          if (actionButton != null) ...actionButton !,
          ]
        ),
        
        
          ],
        ),
      ),
    );
  }
}



        // // SvgPicture.asset('assets/svg/Hamburger.svg', width:25.71.w ,height:18.h ),
        // Stack(clipBehavior:Clip.none,children:[
        //    Text("Explore" ,style:TextStyle(fontFamily:'Raleway',fontSize:32 ,fontWeight:FontWeight.w700, color: Color(0xFF2B2B2B) ) ,),
        //   Positioned( left: -13.w, top:-5.h,
        //     child: SvgPicture.asset('assets/svg/Highlight_05.svg'))
        //    ]),
        // Stack( clipBehavior: Clip.none,
        //    children: [
        //     CircleAvatar(backgroundColor:Color(0xFFFFFFFF) ,radius:22 ,child:SvgPicture.asset('assets/svg/shoppingbag.svg')),
        //      Positioned(top:4 ,right:4 ,
        //         child: CircleAvatar(backgroundColor:const Color.fromRGBO(253, 22, 0, 1),radius: 4,))
        // ],)