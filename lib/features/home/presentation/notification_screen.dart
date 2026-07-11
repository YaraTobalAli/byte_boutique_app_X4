import 'package:flutter/material.dart';
import '../../../core/shared_widgets/app_bar.dart';
import'package:flutter_svg/flutter_svg.dart';
import'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/shared_widgets/return_icon_button.dart';
import '../../../core/theme/app_colors.dart';
import '../home_widgets/tshirt_card.dart';
import '../home_widgets/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
             body: SingleChildScrollView
                     (child: SafeArea(
                       child: Padding(
                         padding: const EdgeInsets.all(16.0),
                         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomAppBar( leadingIcon: ReturnIconButton(icon: Icon(Icons.arrow_back_ios,size: 15,)  , notify:false),
                             titleWidget:Text("Notifications",style: TextStyle(color:AppColors.textPrimary,fontWeight: FontWeight.w600,fontFamily: 'Raleway',fontSize:16.sp) ),
                                 actionButton: [ReturnIconButton(icon: Icon(Icons.delete_outline,color: AppColors.textPrimary,)  , notify:false)],                
                                                ) , 

                                 SizedBox(height:16.h ,),
                                 Text('Recent',style: TextStyle(fontFamily: 'Raleway',fontSize: 18,fontWeight: FontWeight.w600,color: AppColors.textPrimary),),
                                 SizedBox(height: 16.h,),
                                 NotificationCard(imageUrl:'assets/images/image 3.png' , notifyText: "Thank you for Purchasing",time:'7 min ago'
                                 ,details: Text("your order will be shipped in 2-4 days.",style: TextStyle(fontSize: 11.sp,color: AppColors.textSecondary,fontFamily: 'Poppins',fontWeight: FontWeight.w500),),backgroundColor:AppColors.primary,),
                               SizedBox(height: 16.h,),
                                NotificationCard(imageUrl: 'assets/images/image 2.png', notifyText:'we have new products with offers', 
                                details: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [ Text("364.95"), SizedBox(width: 10.w,), Text("260.00")

                                ],)),
                               SizedBox(height: 16.h,),
                                Text('Yesterday',style: TextStyle(fontFamily: 'Raleway',fontSize: 18,fontWeight: FontWeight.w600,color: AppColors.textPrimary),),
                           SizedBox(height: 16.h,),
                                   NotificationCard(imageUrl: 'assets/images/image 2.png', notifyText:'we have new products with offers',
                                details: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [ Text("364.95"), SizedBox(width: 10.w,), Text("260.00")

                                ],)),

                            SizedBox(height: 16.h,),

                            NotificationCard(imageUrl: 'assets/images/image 3.png', notifyText:'we have new products with offers',
                                details: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [ Text("364.95"), SizedBox(width: 10,), Text("260.00")

                                ],)),






                           
                             ],),
                       ),
                     )),
    );
  }
}