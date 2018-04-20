class ProductCategory {

  ProductCategory(this._id, this._name, this._pictureUrl) { }

  CategoryEnum _id;
  String _name;
  String _pictureUrl;

  CategoryEnum getId() => this._id;
  void setId(CategoryEnum id) => this._id = id;

  String getPictureUrl() => this._pictureUrl;
  void setPictureUrl(String pictureUrl) => this._pictureUrl = pictureUrl;

  String getName() => this._name;
  String setName(String name) => this._name = name;
}

class CategoryEnum {
  final _value;

  const CategoryEnum._internal(this._value);

  static const CategoryEnum HOUSE = const CategoryEnum._internal("House");
  static const CategoryEnum NOTEBOOKS = const CategoryEnum._internal("Notebooks");
  static const CategoryEnum MOBILE_PHONES = const CategoryEnum._internal("Mobile Phones");
  static const CategoryEnum DESKTOPS = const CategoryEnum._internal("Desktops");
  static const CategoryEnum MISC = const CategoryEnum._internal("Misc");

  String toString() {
    return this._value;
  }
}

