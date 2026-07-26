import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../core/common/styles/global_text_style.dart';
import '../../../core/common/widgets/app_network_image.dart';
import '../../../core/common/widgets/gradient_list_card.dart';
import '../../../core/utils/constants/colors.dart';
import '../models/cds_order_model.dart';
import 'cds_bundle_item_card.dart';

class CdsPurchaseItemsSection extends StatelessWidget {
  final CdsOrderModel? order;

  const CdsPurchaseItemsSection({super.key, this.order});

  static final _amount = NumberFormat('#,##0');

  @override
  Widget build(BuildContext context) {
    final items = order?.items ?? const [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Purchase Item',
          style: getTextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.dashboardTextDark,
          ),
        ),
        if (items.isNotEmpty) SizedBox(height: 16.h),
        for (int i = 0; i < items.length; i++) ...[
          if (i > 0) SizedBox(height: 8.h),
          items[i].bundle != null
              ? CdsBundleItemCard(item: items[i])
              : GradientListCard(
                  border: Border.all(color: AppColors.cdsCardStroke),
                  leading: AppNetworkImage(
                    url: items[i].imageUrl,
                    width: 55.w,
                    height: 55.w,
                  ),
                  title: items[i].name,
                  subtitle: 'x ${items[i].quantity}',
                  trailingText: '\$${_amount.format(items[i].price)}',
                ),
        ],
      ],
    );
  }
}
