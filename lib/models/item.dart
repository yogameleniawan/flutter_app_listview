class Item {
  int _id;
  String _name;
  int _price;
  int _stock;
  String _itemCode;

  int get id => _id;

  String get name => this._name;
  set name(String value) => this._name = value;

  String get itemCode => this._itemCode;
  set itemCode(String value) => this._itemCode = value;

  get price => this._price;
  set price(value) => this._price = value;

  get stock => this._stock;
  set stock(value) => this._stock = value;

  Item(this._name, this._price, this._stock,
      this._itemCode); // constructor version 1 to receive value data only _name and _price

  Item.fromMap(Map<String, dynamic> map) {
    // constructor version 2 to convert from Map to Item
    this._id = map['id'];
    this._name = map['name'];
    this._price = map['price'];
    this._stock = map['stock'];
    this._itemCode = map['itemCode'];
  }

  Map<String, dynamic> toMap() {
    // convert from Item to Map
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = this._name;
    map['price'] = this._price;
    map['stock'] = this._stock;
    map['itemCode'] = this._itemCode;
    return map;
  }
}
