import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_store/model/product_category.dart';
import 'package:transparent_image/transparent_image.dart';

class AppCategoryGrid extends StatelessWidget {
  List<ProductCategory> _getProductCategories(context) {
    var productCategoryTypes = <CategoryEnum>[
      CategoryEnum.MOBILE_PHONES,
      CategoryEnum.DESKTOPS,
      CategoryEnum.HOUSE,
      CategoryEnum.MISC,
      CategoryEnum.NOTEBOOKS,
    ];

    var categories = <ProductCategory>[];

    productCategoryTypes.asMap().forEach((i, val) {
      var baseWidth = MediaQuery.of(context).size.width;
      var w = (baseWidth + i);
      categories.add(new ProductCategory(
        val,
        val.toString(),
        "https://picsum.photos/" +
            (2 * w).toString() +
            "/" +
            w.toString()
      ));
    });
    return categories;
  }

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 1,
      childAspectRatio: 2.0,
      padding: EdgeInsets.zero,
      mainAxisSpacing: 0.0,
      crossAxisSpacing: 0.0,
      children: _getProductCategories(context).map((c) {
        return new Stack(
          children: <Widget>[
            new Positioned.fill(
              child: new InkWell(
                splashColor: Colors.lightBlueAccent,
              ),
            ),
            new Positioned.fill(
              child: new GridTile(
                child: new Stack(
                  children: <Widget>[
                    new Center(
                      child: new CircularProgressIndicator(),
                    ),
                    new Center(
                      child: new FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: c.getPictureUrl(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
