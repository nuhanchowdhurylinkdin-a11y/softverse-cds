import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/cds_home_controller.dart';
import '../../widgets/cds_bill_amounts_card.dart';
import '../../widgets/cds_disconnected_view.dart';
import '../../widgets/cds_header.dart';
import '../../widgets/cds_order_banner.dart';
import '../../widgets/cds_purchase_items_section.dart';

class CdsHomeScreen extends GetView<CdsHomeController> {
  const CdsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CdsHeader(controller: controller),
        body: Obx(() {
          if (controller.connectionState.value ==
              CdsConnectionState.disconnected) {
            return CdsDisconnectedView(onReconnect: controller.reconnect);
          }

          final order = controller.order.value;
          return SingleChildScrollView(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CdsOrderBanner(posLabel: controller.posLabel, order: order),
                SizedBox(height: 12.h),
                CdsBillAmountsCard(order: order),
                SizedBox(height: 22.h),
                CdsPurchaseItemsSection(order: order),
              ],
            ),
          );
        }),
      ),
    );
  }
}
