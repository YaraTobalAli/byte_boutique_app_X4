import 'package:flutter/material.dart';
import'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SummerSaleDesign extends StatelessWidget {
  const SummerSaleDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack( clipBehavior: Clip.none,
      children:[ Container( width:double.infinity,
         padding:EdgeInsets.symmetric(horizontal: 22.w,vertical: 8.h) ,height: 95.h, decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16.r),
        boxShadow: [BoxShadow(color:Color.fromARGB(22, 0, 0, 0),blurRadius:10,offset: const Offset(0,4) )]
        
             ),
      
              // child : Row( mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [

               
              // ],)
      ),

Positioned(left: 22.w,right: 182.w,top: 20.h,bottom: 20.h,child: SvgPicture.asset('assets/svg/sale.svg',width: 131.w,))
 , Positioned(top:-30.h,right: 19.76.w,left:191.76.w,child: Image.asset('assets/images/image 4.png',width: 99.h,))

 , Positioned(top:60.h,right: 311.52.w,left:8.w,bottom: 18.27.h,child: SvgPicture.asset('assets/svg/sparkle.svg',width:15.48.h,))
, Positioned(top:4.h,right:189.52 .w,left:130.w,bottom:74.27.h,child: SvgPicture.asset('assets/svg/sparkle.svg',width: 15.48.h,))
, Positioned(top:66.h,right:161.52 .w,left:158.w,bottom:12.27 .h,child: SvgPicture.asset('assets/svg/sparkle.svg',width: 15.48.h,))
 ,Positioned(top:15.h,right:9.52 .w,left:310.w,bottom:63.27 .h,child: SvgPicture.asset('assets/svg/sparkle.svg',width: 15.48.h,)),
  Positioned(top:12.h,right:131.72 .w,left:176.w,bottom: 55.72.h,child: SvgPicture.asset('assets/svg/new.svg',width: 26.h,))
      ]
    );
  }
}