import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../core/common/widgets/gradient_app_bar.dart';
import '../../../core/utils/constants/colors.dart';
import '../controller/cds_home_controller.dart';

class CdsHeader extends StatelessWidget implements PreferredSizeWidget {
  final CdsHomeController controller;

  const CdsHeader({super.key, required this.controller});

  @override
  Size get preferredSize => Size.fromHeight(55.h);

  @override
  Widget build(BuildContext context) {
    return GradientAppBar(
      title: 'Customer Display Screen',
      gradientColors: const [
        AppColors.dashboardHeaderGradientStart,
        AppColors.dashboardHeaderGradientEnd,
      ],
      trailing: Obx(
        () => _ConnectionIcon(
          connected: controller.connectionState.value !=
              CdsConnectionState.disconnected,
          color: Colors.white,
          size: 22.w,
        ),
      ),
    );
  }
}

class _ConnectionIcon extends StatelessWidget {
  final bool connected;
  final Color color;
  final double size;

  const _ConnectionIcon({
    required this.connected,
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    if (connected) {
      return Icon(Iconsax.mobile, color: color, size: size);
    }
    return Stack(
      alignment: Alignment.center,
      children: [
        Icon(Iconsax.mobile, color: color, size: size),
        Transform.rotate(
          angle: -0.78,
          child: Container(width: size * 0.85, height: 1.6, color: color),
        ),
      ],
    );
  }
}
