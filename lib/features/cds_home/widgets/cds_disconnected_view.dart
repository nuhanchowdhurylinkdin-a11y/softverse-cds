import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../core/common/styles/global_text_style.dart';
import '../../../core/common/widgets/app_button.dart';
import '../../../core/utils/constants/colors.dart';

class CdsDisconnectedView extends StatelessWidget {
  final VoidCallback onReconnect;

  const CdsDisconnectedView({super.key, required this.onReconnect});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 32.h, 16.w, 16.h),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: AppColors.cdsCardStroke),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.dashboardCardGradientStart,
              AppColors.dashboardCardGradientEnd,
            ],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Icon(Iconsax.mobile, color: AppColors.cdsDisconnectedRed, size: 46.w),
                Transform.rotate(
                  angle: -0.78,
                  child: Container(
                    width: 40.w,
                    height: 2,
                    color: AppColors.cdsDisconnectedRed,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Text(
              'Customer Display Monitor',
              style: getTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.dashboardNavInactive,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              'Currently Disconnected',
              style: getTextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.cdsDisconnectedRed,
              ),
            ),
            SizedBox(height: 20.h),
            AppButton(
              label: 'Reconnect',
              width: 133.w,
              height: 44.h,
              fontSize: 18,
              onPressed: onReconnect,
              gradient: const LinearGradient(
                colors: [
                  AppColors.authGradientStart,
                  AppColors.authGradientEnd,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
