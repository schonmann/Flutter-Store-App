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

enum CategoryEnum {
  HOUSE,
  NOTEBOOKS,
  MOBILE_PHONES,
  DESKTOPS,
  MISC,
}