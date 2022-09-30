class ShoeModel {
  final int? id;
  final String? shoeName;
  final String? brandName;
  final String? sold;
  final String? price;
  final String? imageUrl;
  final List<String>? galleries;

  ShoeModel({
    this.id,
    this.shoeName,
    this.brandName,
    this.sold,
    this.price,
    this.imageUrl,
    this.galleries,
  });
}

final shoes = [
  ShoeModel(
    id: 1,
    shoeName: 'Air Zoom SuperRep',
    brandName: 'Nike',
    sold: '52.214',
    price: '1.799.000',
    imageUrl: 'assets/popular1.png',
    galleries: [
      'assets/popular1.png',
      'assets/detail-shoe-1.png',
      'assets/detail-shoe-2.png',
      'assets/detail-shoe-3.png',
      'assets/detail-shoe-5.png',
    ],
  ),
  ShoeModel(
    id: 2,
    shoeName: 'Metcon 7',
    brandName: 'Nike',
    sold: '12.512',
    price: '1.979.000',
    imageUrl: 'assets/popular2.png',
    galleries: [
      'assets/popular2.png',
      'assets/detail-shoe-1.png',
      'assets/detail-shoe-2.png',
      'assets/detail-shoe-3.png',
      'assets/detail-shoe-5.png',
    ],
  ),
  ShoeModel(
    id: 3,
    shoeName: 'Defy All Day',
    brandName: 'Nike',
    sold: '24.214',
    price: '799.000',
    imageUrl: 'assets/popular3.png',
    galleries: [
      'assets/popular3.png',
      'assets/detail-shoe-1.png',
      'assets/detail-shoe-2.png',
      'assets/detail-shoe-3.png',
      'assets/detail-shoe-5.png',
    ],
  ),
  ShoeModel(
    id: 4,
    shoeName: 'Metcon 8 FlyEase',
    brandName: 'Nike',
    sold: '22.509',
    price: '2.059.000',
    imageUrl: 'assets/popular4.png',
    galleries: [
      'assets/popular4.png',
      'assets/detail-shoe-1.png',
      'assets/detail-shoe-2.png',
      'assets/detail-shoe-3.png',
      'assets/detail-shoe-5.png',
    ],
  ),
  ShoeModel(
    id: 5,
    shoeName: 'Air Zoom SuperRep',
    brandName: 'Nike',
    sold: '9.212',
    price: '1.799.000',
    imageUrl: 'assets/popular5.png',
    galleries: [
      'assets/popular5.png',
      'assets/detail-shoe-1.png',
      'assets/detail-shoe-2.png',
      'assets/detail-shoe-3.png',
      'assets/detail-shoe-5.png',
    ],
  ),
  ShoeModel(
    id: 6,
    shoeName: 'SuperRep Go 2',
    brandName: 'Nike',
    sold: '11.091',
    price: '1.138.000',
    imageUrl: 'assets/popular6.png',
    galleries: [
      'assets/popular6.png',
      'assets/detail-shoe-1.png',
      'assets/detail-shoe-2.png',
      'assets/detail-shoe-3.png',
      'assets/detail-shoe-5.png',
    ],
  ),
  ShoeModel(
    id: 7,
    shoeName: 'Metcon 8 Superblack',
    brandName: 'Nike',
    sold: '12.512',
    price: '3.195.953',
    imageUrl: 'assets/detail-shoe-4.png',
    galleries: [
      'assets/detail-shoe-4.png',
      'assets/detail-shoe-1.png',
      'assets/detail-shoe-2.png',
      'assets/detail-shoe-3.png',
      'assets/detail-shoe-5.png',
    ],
  ),
  ShoeModel(
    id: 8,
    shoeName: 'Metcon 8 FlyEase',
    brandName: 'Nike',
    sold: '22.509',
    price: '2.059.000',
    imageUrl: 'assets/popular4.png',
    galleries: [
      'assets/popular4.png',
      'assets/detail-shoe-1.png',
      'assets/detail-shoe-2.png',
      'assets/detail-shoe-3.png',
      'assets/detail-shoe-5.png',
    ],
  ),
];
