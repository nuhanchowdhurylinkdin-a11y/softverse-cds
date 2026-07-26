import 'package:get/get.dart';

import '../models/cds_order_model.dart';
import '../models/cds_purchase_item_model.dart';

enum CdsConnectionState { active, idle, disconnected }

class CdsHomeController extends GetxController {
  final posLabel = 'POS-1';
  final connectionState = CdsConnectionState.active.obs;
  final order = Rxn<CdsOrderModel>();

  @override
  void onInit() {
    super.onInit();
    order.value = _sampleOrder;
  }

  void reconnect() {
    connectionState.value = CdsConnectionState.active;
  }

  static const _sampleOrder = CdsOrderModel(
    orderNumber: 1,
    companyName: 'Abs Corporation',
    totalItems: 5,
    subtotal: 20140.00,
    tax: 1510.50,
    totalAmount: 21650.50,
    amountReceived: 22000.00,
    changeToReturn: 349.50,
    items: [
      CdsPurchaseItemModel(
        name: 'A4Ttech Keyboard',
        quantity: 1,
        price: 800.00,
        imageUrl: 'https://picsum.photos/seed/a4tech-keyboard/200',
        bundle: CdsBundleBreakdown(
          bundleName: 'Mouse + Keyboard',
          bundlePrice: 1100.00,
          discountLabel: '20% Discount',
          discountAmount: 160.00,
          subtotal: 1740.00,
        ),
      ),
      CdsPurchaseItemModel(
        name: 'A4Ttech Mouse',
        quantity: 1,
        price: 400,
        imageUrl: 'https://picsum.photos/seed/a4tech-mouse/200',
      ),
      CdsPurchaseItemModel(
        name: 'HP Monitor',
        quantity: 1,
        price: 18000,
        imageUrl: 'https://picsum.photos/seed/hp-monitor/200',
      ),
      CdsPurchaseItemModel(
        name: 'HP Monitor',
        quantity: 1,
        price: 18000,
        imageUrl: 'https://picsum.photos/seed/hp-monitor/200',
      ),
      CdsPurchaseItemModel(
        name: 'HP Monitor',
        quantity: 1,
        price: 18000,
        imageUrl: 'https://picsum.photos/seed/hp-monitor/200',
      ),
    ],
  );
}
