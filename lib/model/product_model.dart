class ProductModel {
  final int id;
  final String name;
  final double price;
  late int qty;
  final String image;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.qty,
    required this.image,
  });
}

List<ProductModel> listProduct = [
  ProductModel(
    id: 1,
    name: 'MIG-30',
    price: 1.2,
    qty: 1,
    image:
        'https://www.eurasiantimes.com/wp-content/uploads/2022/09/Indian-Air-Force-Su-30-MKI-jets.jpg',
  ),
  ProductModel(
    id: 2,
    name: 'Su-30',
    price: 1.2,
    qty: 1,
    image:
        'https://upload.wikimedia.org/wikipedia/commons/7/76/Sukhoi_Su-30SM_in_flight_2014.jpg',
  ),
  ProductModel(
    id: 3,
    name: 'F-35',
    price: 1.2,
    qty: 1,
    image:
        'https://media-cldnry.s-nbcnews.com/image/upload/t_nbcnews-fp-1024-512,f_auto,q_auto:best/rockcms/2023-09/230921-f-35-mn-0850-92f318.jpg',
  ),
  ProductModel(
    id: 4,
    name: 'USS Gerald.R Ford',
    price: 1.2,
    qty: 1,
    image:
        'https://d1ldvf68ux039x.cloudfront.net/thumbs/photos/2308/7987119/1000w_q95.jpg',
  ),
  ProductModel(
    id: 5,
    name: 'CH-47',
    price: 1.2,
    qty: 1,
    image:
        'https://d1ldvf68ux039x.cloudfront.net/thumbs/photos/2203/7087435/1000w_q95.jpg',
  ),
  ProductModel(
    id: 6,
    name: 'USS Ronald Reagan',
    price: 1.2,
    qty: 1,
    image:
        'https://d1ldvf68ux039x.cloudfront.net/thumbs/photos/2007/6281020/1000w_q95.jpg',
  ),
];
