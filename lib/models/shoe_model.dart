class ShoeModel {
  final int? id;
  final String? shoeName;
  final String? brandName;
  final String? sold;
  final String? price;
  final String? imageUrl;

  ShoeModel(
      {this.id,
      this.shoeName,
      this.brandName,
      this.sold,
      this.price,
      this.imageUrl});
}

final shoes = [
  ShoeModel(
    id: 1,
    shoeName: 'Air Zoom SuperRep',
    brandName: 'Nike',
    sold: '52.214',
    price: '1.799.000',
    imageUrl: 'assets/popular1.png',
  ),
  ShoeModel(
    id: 2,
    shoeName: 'Metcon 7',
    brandName: 'Nike',
    sold: '12.512',
    price: '1.979.000',
    imageUrl: 'assets/popular2.png',
  ),
  ShoeModel(
    id: 3,
    shoeName: 'Defy All Day',
    brandName: 'Nike',
    sold: '24.214',
    price: '799.000',
    imageUrl: 'assets/popular3.png',
  ),
  ShoeModel(
    id: 4,
    shoeName: 'Metcon 8 FlyEase',
    brandName: 'Nike',
    sold: '22.509',
    price: '2.059.000',
    imageUrl: 'assets/popular4.png',
  ),
  ShoeModel(
    id: 5,
    shoeName: 'Air Zoom SuperRep',
    brandName: 'Nike',
    sold: '9.212',
    price: '1.799.000',
    imageUrl: 'assets/popular5.png',
  ),
  ShoeModel(
    id: 6,
    shoeName: 'SuperRep Go 2',
    brandName: 'Nike',
    sold: '11.091',
    price: '1.138.000',
    imageUrl: 'assets/popular6.png',
  ),
];
