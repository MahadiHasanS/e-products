class Item {
  String itemName;
  String itemDesc;
  String itemImage;
  int itemPrice;

  Item({
    required this.itemName,
    required this.itemDesc,
    required this.itemImage,
    required this.itemPrice,
  });
}

class ItemModel {
  static final item = [
    Item(
      itemName: 'Iphone 13',
      itemDesc: 'this is Iphone 13',
      itemImage:
          'data:image/jpeg;base64,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',
      itemPrice: 990,
    )
  ];
}
