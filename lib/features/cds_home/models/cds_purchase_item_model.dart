class CdsBundleBreakdown {
  final String bundleName;
  final double bundlePrice;
  final String discountLabel;
  final double discountAmount;
  final double subtotal;

  const CdsBundleBreakdown({
    required this.bundleName,
    required this.bundlePrice,
    required this.discountLabel,
    required this.discountAmount,
    required this.subtotal,
  });
}

class CdsPurchaseItemModel {
  final String name;
  final int quantity;
  final double price;
  final String imageUrl;
  final CdsBundleBreakdown? bundle;

  const CdsPurchaseItemModel({
    required this.name,
    required this.quantity,
    required this.price,
    required this.imageUrl,
    this.bundle,
  });
}
