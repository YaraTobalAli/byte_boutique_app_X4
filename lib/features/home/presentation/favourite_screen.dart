
import 'package:flutter/material.dart';
import '../../../core/shared_widgets/app_bar.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/shared_widgets/return_icon_button.dart';
import '../../../core/theme/app_colors.dart';
import '../home_widgets/tshirt_card.dart';
import '../data/product_model.dart';
import '../data/services/home_api_service.dart';

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({super.key});
  final HomeApiService homeService = HomeApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CustomAppBar(
                  leadingIcon: ReturnIconButton(icon: Icon(Icons.arrow_back_ios,size: 15), notify: false),
                  titleWidget: Text("Favourite", style: TextStyle(color: AppColors.textPrimary,fontWeight: FontWeight.w600,fontFamily: 'Raleway',fontSize:16.sp)),
                  actionButton: [ReturnIconButton(icon: Icon(Icons.favorite_border_outlined, color: AppColors.textPrimary), notify: false)],
                ),
                
                const SizedBox(height: 20),
                
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
                      return GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        padding: EdgeInsets.all(16.w),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16.w,
                          // mainAxisSpacing: 2.h,
                          childAspectRatio: 0.60,
                        ),
                        itemBuilder: (context, index) {
                          final currentProduct = products[index];
                          final List<List<Color>> allProductsColors = [
                            [const Color(0xffCB1D1D), const Color(0xff0B2F8B)],
                            [const Color(0xff0B2F8B), const Color(0xffCB1D1D)],
                            [const Color(0xff2256B9), const Color(0xffA9CFEB)],
                            [const Color(0xff7DDBDA), const Color(0xff606ACB)],
                          ];
                          return PopularTshirt_card(
                            imageUrl: currentProduct.image,
                            title: currentProduct.title,
                            svgIcon: 'assets/svg/filled_heart',
                            price: '\$${currentProduct.price}',
                            isFavouriteCard: true,
                            productColors: allProductsColors[index],
                          );
                        },
                      );
                    }
                    return const SizedBox();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
