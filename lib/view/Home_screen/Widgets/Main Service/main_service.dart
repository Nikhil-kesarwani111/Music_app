import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Models/service_model/service_model.dart';
import '../../../../config/App color/app_color.dart';
import '../../../../config/routes/routes_name.dart';
import '../../../../data/repository/service_repository.dart';
import '../../../../data/services/firebase_service.dart';
import 'Main Service Widget/Service cart shimmer/service_cart_shimmer.dart';
import 'Main Service Widget/service_cart.dart';

class MainService extends StatelessWidget {
  const MainService({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = ServiceRepository(FirebaseService());

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 24.h),
          Text(
            'Hire hand-picked Pros for popular music services',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Syne',
              fontSize: 14.sp,
              color: AppColors.lightTextColor,
            ),
          ),
          SizedBox(height: 20.h),

          Expanded(
            child: FutureBuilder<List<ServiceModel>>(
              future: repository.getServices(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 4,
                    itemBuilder: (_, __) => const ServiceCartShimmer(),
                  );
                }

                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'Error: ${snapshot.error}',
                      style: TextStyle(
                        fontFamily: 'Syne',
                        fontSize: 16.sp,
                        color: Colors.red,
                      ),
                    ),
                  );
                }

                final services = snapshot.data ?? [];

                if (services.isEmpty) {
                  return Center(
                    child: Text(
                      'Soon Upload', // or 'Coming Soon'
                      style: TextStyle(
                        fontFamily: 'Syne',
                        fontSize: 18.sp,
                        color: AppColors.lightTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    final service = services[index];
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.detailedscreen,arguments: service);
                      },
                      child: ServiceCart(
                        backgroundImage: service.backgroundImage ?? '',
                        iconImagePath: service.icon ?? '',
                        title: service.title ?? '',
                        description: service.description ?? 'Hello',
                      ),
                    );
                  },
                );

              },
            ),
          ),
        ],
      ),
    );
  }
}
