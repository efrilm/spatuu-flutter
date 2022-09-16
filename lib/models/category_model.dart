class CategoryModel {
  final int? id;
  final String? brandIcon;
  final String? brandName;

  CategoryModel({
    this.id,
    this.brandIcon,
    this.brandName,
  });
}

final category = [
  CategoryModel(
    id: 1,
    brandIcon: 'assets/ic_adidas.png',
    brandName: 'Adidas',
  ),
  CategoryModel(
    id: 2,
    brandIcon: 'assets/ic_puma.png',
    brandName: 'Puma',
  ),
  CategoryModel(
    id: 3,
    brandIcon: 'assets/ic_nike.png',
    brandName: 'Nike',
  ),
  CategoryModel(
    id: 4,
    brandIcon: 'assets/ic_reebok.png',
    brandName: 'Reebok',
  ),
];
