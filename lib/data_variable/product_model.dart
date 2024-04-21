class ProductModel{
   String image;
   String nameProduct;
   String price;
   bool fav;
   ProductModel({
     required this.image,
     required this.nameProduct,
     required this.price,
     this.fav=false,
}
);
}