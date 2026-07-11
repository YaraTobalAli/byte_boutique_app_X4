import 'package:byte_boutique/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
// import'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCard extends StatelessWidget {

  final String imageUrl;
  final String notifyText;
  final String ? time;
  final Widget ? details;
  final Color ? backgroundColor;

  // final String price;



  const NotificationCard({
    super.key,
    required this.imageUrl,
    required this.notifyText,
     this.time,
    required this.details,
    this.backgroundColor

 
    });


  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Container(width: double.infinity,height:110.h ,
                          decoration: BoxDecoration(
          color: backgroundColor??  AppColors.background,
          borderRadius: BorderRadius.circular(12.r),
      
        ),
        child: 
          
           
           Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    imageUrl,
                    width: 67.w,
                    height: 67.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(  
                child: Padding(
                  padding: EdgeInsets.only(right: 12.w, top: 12.h, bottom: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                              
                      Text(
                        notifyText,
                        maxLines: 2,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF2B2B2B),
                        ),
                      ),
                      SizedBox(width:20.h ,),
                                         
                      // SizedBox(height: 6.h),
                      if (details != null) details!,
                    ],
                  ),
                ),
              ),
                     
                SizedBox(width: 60.w,height:30 ,)
            ],
                     )
            
        ),
      

                  Positioned( top:5.h ,right: 10.w,
                          child: Text(time ??'40 min ago' ,style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,color: AppColors.textSecondary,fontFamily: 'Poppins' ),)),
  
    ]
    );
  }
}


