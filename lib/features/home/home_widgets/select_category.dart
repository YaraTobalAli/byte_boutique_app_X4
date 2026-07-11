import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectCategory extends StatelessWidget {
   SelectCategory({super.key});
final List<String> categories=['man','woman','child'];
  @override
  Widget build(BuildContext context) {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                  Text("Select Category",style: TextStyle(fontFamily:'Raleway'
                  ,fontSize:16.sp ,fontWeight: FontWeight.w600,color: Color(0xff2B2B2B)),)
                , SizedBox(height: 16.h,),
                SizedBox(height: 46.h,child: ListView.separated(scrollDirection: Axis.horizontal
                ,itemCount: categories.length,
                separatorBuilder: (context, index){return SizedBox(width: 14.w,);},
                 itemBuilder: (context,index){
                    return Container(height: 40,width: 108,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16.r) 
                    ),child: Center(child: Text(categories[index],style: TextStyle(fontFamily:'Poppins' ,fontSize:12.sp ,fontWeight: FontWeight.w400,letterSpacing: 1,color:Color(0xff2B2B2B) ),),),);
                 })
                
                )
                ],
    
    ) ;
  }
  
}