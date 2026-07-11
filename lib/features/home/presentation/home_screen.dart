// import 'package:flutter/material.dart';
// import '../../../core/shared_widgets/app_bar.dart';
// import'package:flutter_svg/flutter_svg.dart';
// import'package:flutter_screenutil/flutter_screenutil.dart';
// import '../home_widgets/tshirt_card.dart';
// import '../home_widgets/search_row.dart';
// import '../home_widgets/select_category.dart';
// import '../home_widgets/summer_sale_design.dart';
// import '../data/product_model.dart';
// import '../data/services/home_api_service.dart';

// class HomeScreen extends StatelessWidget {
//    HomeScreen({super.key});
// final HomeApiService homeService = HomeApiService();
//   @override
//   Widget build(BuildContext context) {
//     return 
//                SingleChildScrollView(
//                  child: Padding(
//                    padding: const EdgeInsets.all(20.0),
//                    child: SafeArea(
//                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
//                        children: [
//                         CustomAppBar(
//                         leadingIcon:  SvgPicture.asset('assets/svg/Hamburger.svg', width:25.71.w ,height:18.h ),            
//                         titleWidget:  Stack(clipBehavior:Clip.none,children:[
//                               Text("Explore" ,style:TextStyle(fontFamily:'Raleway',fontSize:32.sp ,fontWeight:FontWeight.w700, color: Color(0xFF2B2B2B) ) ,),
//                               Positioned( left: -13.w, top:-5.h,
//                                    child: SvgPicture.asset('assets/svg/Highlight_05.svg')),
//                                                 ]
//                                               ),                 
//                         actionButton: [
//                                  Stack( clipBehavior: Clip.none,
//                                     children: [
//                                         CircleAvatar(backgroundColor:Color(0xFFFFFFFF) ,radius:22 ,child:SvgPicture.asset('assets/svg/shoppingbag.svg')),
//                                             Positioned(top:4 ,right:4 ,
//                                               child: CircleAvatar(backgroundColor:const Color.fromRGBO(253, 22, 0, 1),radius: 4,))
//                                               ],         
//                                       )
//                                     ] ,
                        
//                         ),
                           
                           
//                                  SizedBox(height:19.h ),
//                                  SearchRow(),
//                                  SizedBox(height: 24.h,),
//                                  SelectCategory(),
//                                  SizedBox(height: 24.h,),
   
                                 
//                                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                    children: [
//                                    Text("Popular T-shirt",style: TextStyle(fontFamily:'Raleway',fontSize:16.sp ,fontWeight:FontWeight.w500 ),),
//                                    Text("See all",style: TextStyle(fontFamily:'Poppins' ,fontSize:12.sp ,fontWeight:FontWeight.w500,color: Color(0xff34C759) ),),
//                                  ],),
//                                  SizedBox(height:16.h ,),
//                                  // GridView.builder( shrinkWrap: true,physics: const NeverScrollableScrollPhysics()
//                                  //  ,itemCount: 2,gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,crossAxisSpacing:14.w,mainAxisSpacing: 14.h,childAspectRatio: 159/210),
//                                  //   // SizedBox(width:20.w ),
//                                  //   itemBuilder: (context,index){return PopularTshirt_card();} 
//                                  // ),
//                                  Row(children: [Expanded(child: PopularTshirt_card(imageUrl: 'assets/images/image 2.png',svgIcon: 'assets/svg/filled_heart',price: '150.00',isFavouriteCard: false,)),
//                                  SizedBox(width:20.w ,),Expanded(child: PopularTshirt_card(imageUrl: 'assets/images/image 2.png',svgIcon: 'assets/svg/filled_heart',price: '752.00',isFavouriteCard: false,))],),
//                                  SizedBox(height: 26.h,),
//                                 Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                    children: [
//                                    Text("New Arrivals",style: TextStyle(fontFamily:'Raleway',fontSize:16.sp ,fontWeight:FontWeight.w600 ),),
//                                    Text("See all",style: TextStyle(fontFamily:'Poppins' ,fontSize:12.sp ,fontWeight:FontWeight.w500,color: Color(0xff34C759) ),),
                     
//                                  ],),
//                                   SizedBox(height: 21.h,),
//                                   SummerSaleDesign() ,
//                                     SizedBox(height: 25.h,),    
//                                     CircleAvatar(radius: 26.r,backgroundColor: Color(0xFF34C759),child: Icon(Icons.slideshow_rounded),)
                      
                          
//                       ],),
//                    ),
//                  ),
                  
//                );
  
    
    
//   }
// }





import 'package:flutter/material.dart';
import '../../../core/shared_widgets/app_bar.dart';
import'package:flutter_svg/flutter_svg.dart';
import'package:flutter_screenutil/flutter_screenutil.dart';
import '../home_widgets/tshirt_card.dart';
import '../home_widgets/search_row.dart';
import '../home_widgets/select_category.dart';
import '../home_widgets/summer_sale_design.dart';
import '../data/product_model.dart';
import '../data/services/home_api_service.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
final HomeApiService homeService = HomeApiService();
  @override
  Widget build(BuildContext context) {
    return 
               SingleChildScrollView(
                 child: Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: SafeArea(
                     child: Column(mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                        CustomAppBar(
                        leadingIcon:  SvgPicture.asset('assets/svg/Hamburger.svg', width:25.71.w ,height:18.h ),            
                        titleWidget:  Stack(clipBehavior:Clip.none,children:[
                              Text("Explore" ,style:TextStyle(fontFamily:'Raleway',fontSize:32.sp ,fontWeight:FontWeight.w700, color: Color(0xFF2B2B2B) ) ,),
                              Positioned( left: -13.w, top:-5.h,
                                   child: SvgPicture.asset('assets/svg/Highlight_05.svg')),
                                                ]
                                              ),                 
                        actionButton: [
                                 Stack( clipBehavior: Clip.none,
                                    children: [
                                        CircleAvatar(backgroundColor:Color(0xFFFFFFFF) ,radius:22 ,child:SvgPicture.asset('assets/svg/shoppingbag.svg')),
                                            Positioned(top:4 ,right:4 ,
                                              child: CircleAvatar(backgroundColor:const Color.fromRGBO(253, 22, 0, 1),radius: 4,))
                                              ],         
                                      )
                                    ] ,
                        
                        ),
                           
                           
                                 SizedBox(height:19.h ),
                                 SearchRow(),
                                 SizedBox(height: 24.h,),
                                 SelectCategory(),
                                 SizedBox(height: 24.h,),
   
                                 
                                 Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                   Text("Popular T-shirt",style: TextStyle(fontFamily:'Raleway',fontSize:16.sp ,fontWeight:FontWeight.w500 ),),
                                   Text("See all",style: TextStyle(fontFamily:'Poppins' ,fontSize:12.sp ,fontWeight:FontWeight.w500,color: Color(0xff34C759) ),),
                                 ],),
                                 SizedBox(height:16.h ,),
                                 
                                 FutureBuilder<List<ProductModel>>(
                                   future: homeService.fetchProducts(),
                                   builder: (context, snapshot) {
                                     if (snapshot.connectionState == ConnectionState.waiting) {
                                       return const Center(child: CircularProgressIndicator(color: Color(0xFF34C759)));
                                     }
                                     if (snapshot.hasError) {
                                       return Center(child: Text('Error: ${snapshot.error}'));
                                     }
                                     if (snapshot.hasData) {
                                       final products = snapshot.data!;
                                       return Row(children: [
                                         Expanded(child: PopularTshirt_card(imageUrl: products[0].image,title:products[0].title ,svgIcon: 'assets/svg/filled_heart',price: '\$${products[0].price}',isFavouriteCard: false,)),
                                         SizedBox(width:20.w ,),
                                         Expanded(child: PopularTshirt_card(imageUrl: products[1].image,title:products[0].title ,svgIcon: 'assets/svg/filled_heart',price: '\$${products[1].price}',isFavouriteCard: false,))
                                       ],);
                                     }
                                     return const SizedBox();
                                   },
                                 ),
                                 
                                 SizedBox(height: 26.h,),
                                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                   Text("New Arrivals",style: TextStyle(fontFamily:'Raleway',fontSize:16.sp ,fontWeight:FontWeight.w600 ),),
                                   Text("See all",style: TextStyle(fontFamily:'Poppins' ,fontSize:12.sp ,fontWeight:FontWeight.w500,color: Color(0xff34C759) ),),
                     
                                 ],),
                                  SizedBox(height: 21.h,),
                                  SummerSaleDesign() ,
                                    SizedBox(height: 25.h,),    
                                    CircleAvatar(radius: 26.r,backgroundColor: Color(0xFF34C759),child: Icon(Icons.slideshow_rounded),)
                      
                          
                      ],),
                   ),
                 ),
                  
               );
    
    
  }
}
