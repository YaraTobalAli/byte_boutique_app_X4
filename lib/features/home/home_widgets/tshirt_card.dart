import 'package:flutter/material.dart';
import'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: camel_case_types, must_be_immutable, unused_field
class PopularTshirt_card extends StatelessWidget {

  final String imageUrl;
  final String title;

  final String svgIcon;

  final String price;

  final bool isFavouriteCard;
  final List<Color>? productColors;

  const PopularTshirt_card({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.svgIcon,
    required this.price,
    required this.isFavouriteCard,
    this.productColors,
    });


  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Padding(
        padding: const EdgeInsets.symmetric(horizontal:0,vertical: 0 ),
        child: Container(width: 179.w,height: 245.h,
                  decoration:BoxDecoration(color: const Color.fromARGB(255, 255, 254, 254),borderRadius: BorderRadius.circular(16.sp)) ,
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding:EdgeInsetsGeometry.all(12)  ,child:  ClipRRect( child: Image.network(imageUrl,fit: BoxFit.contain,height: 95.h,width:double.infinity))),SizedBox(height: 12.h,),
                               Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 10),
                                 child: Column( mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text("BEST SELLER" ,maxLines:1,overflow: TextOverflow.ellipsis,style: TextStyle(fontFamily:'Poppins',fontSize:12.sp ,fontWeight: FontWeight.w500,color:Color(0xFF34C759)),)
                                     ,SizedBox(height: 4.h,),
                                      Text(title,maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontFamily:'Raleway',fontSize:14.sp ,fontWeight: FontWeight.w600,color:Color(0xff6A6A6A) ),),
                                      // SizedBox(height: 10.h,),
                                   ],
                                 ),
                               ),
                               
                              //  SizedBox(height: 12.h,), 
        ],         
        
        ),),
      ),
//تصميم الجزء السفلي من البطاقة الذي يختلف اذا كانت تشير الى المفضلة ام لا

   Positioned(  bottom: isFavouriteCard ? 12.h : 0,
   right: 0,left: 10.w,
     child:isFavouriteCard ?
            SizedBox( height: 35.5.h,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Row( mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                  children:[ 
                   Text(price,style: TextStyle(fontFamily:'Poppins',fontSize:14.sp ,fontWeight: FontWeight.w500,color:Color.fromARGB(255, 0, 0, 0)),),
                    
                   SizedBox(width:0.33* 179.w,
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         CircleAvatar(radius: 6.r,backgroundColor:productColors!= null ? productColors![0] : const Color.fromARGB(255, 30, 13, 94),),
                         CircleAvatar(radius: 6.r,backgroundColor:productColors!= null ? productColors![1] : const Color(0xFFE42626),)
                       ]),
                     ),
                   ) ]),
              ),
            )


        : Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
           Text(price,style: TextStyle(fontFamily:'Poppins',fontSize:14.sp ,fontWeight: FontWeight.w500,color:Color.fromARGB(255, 0, 0, 0)),),
          SizedBox(width:30 ,),
            Container(decoration:BoxDecoration(color: Color(0xFF34C759),
             borderRadius: BorderRadius.only(topLeft:Radius.circular(16.sp) ,
             bottomRight:Radius.circular(16.sp) )),height:35.5.h ,width:34.w ,
             child: Center(child:Icon(Icons.add,size: 20,color: Colors.white,)),),
          ],
        )),

        
    
        //  Positioned(top:12 ,left:12,child: SvgPicture.asset('assets/svg/filled_heart.svg')  ) 
        //  Positioned(left:12.w,top:12.h,
        //       child: isFavouriteCard ? SvgPicture.asset(svgIcon)
        //                              : Icon(Icons.favorite_outline_outlined)
        //         ),
                          
      ]
    );
  }
}