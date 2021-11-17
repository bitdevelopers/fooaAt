class CartModel {
  String? image;
  String? name;
  String? quantity;
  bool? discount;
  String? price;
  String? newPrice;
  dynamic number;

  CartModel(
      {this.image,
      this.name,
      this.quantity,
      this.discount,
      this.price,
      this.newPrice,
      this.number});
}
