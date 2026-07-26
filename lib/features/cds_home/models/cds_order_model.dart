import 'cds_purchase_item_model.dart';

class CdsOrderModel {
  final int orderNumber;
  final String companyName;
  final int totalItems;
  final double subtotal;
  final double tax;
  final double totalAmount;
  final double amountReceived;
  final double changeToReturn;
  final List<CdsPurchaseItemModel> items;

  const CdsOrderModel({
    required this.orderNumber,
    required this.companyName,
    required this.totalItems,
    required this.subtotal,
    required this.tax,
    required this.totalAmount,
    required this.amountReceived,
    required this.changeToReturn,
    required this.items,
  });
}
