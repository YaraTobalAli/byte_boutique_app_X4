import 'package:flutter/material.dart';
import'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SearchRow extends StatelessWidget {
  const SearchRow({super.key});

  @override
  Widget build(BuildContext context) {
          return  Row(children: [
                    Expanded(
                      child: Stack(children: [
              Container(padding:EdgeInsets.symmetric(horizontal: 26.w,vertical: 14.h) ,width: 269.w,height: 52.h, decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(14.r),
              boxShadow: [BoxShadow(color:Color.fromARGB(22, 0, 0, 0),blurRadius:10,offset: const Offset(0,4) )]
                   ),child:Row(children: [
                SvgPicture.asset('assets/svg/search.svg',),SizedBox(width: 12.w,),
                Text("Looking for ......",style: TextStyle(fontFamily: 'Poppins' ,fontSize:12.sp ,fontWeight:FontWeight.w500,color: Color(0xff6A6A6A) ),)
              ],)),
                      ],),
                    ),
                    SizedBox(width: 14.w,),
                    CircleAvatar(radius: 26.r,backgroundColor: Color(0xFF34C759),child: SvgPicture.asset('assets/svg/filter.svg'),)
                  ],);
   
  }
}