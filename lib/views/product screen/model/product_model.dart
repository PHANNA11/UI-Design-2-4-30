// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  int? code;
  String? name;
  int? qty;
  double? price;
  String? image;
  String? description;
  bool? faverite;
  ProductModel({
    this.code,
    this.name,
    this.qty,
    this.price,
    this.image,
    this.description,
    this.faverite,
  });
}

List<ProductModel> listProducts = [
  ProductModel(
    code: 1234,
    name: 'Miklk and Yaur',
    faverite: true,
    price: 5.64,
    qty: 1,
    image:
        'https://imgs.search.brave.com/py3XN0JEd82fD2f1PhAkCUCrVYWzxTrcvG_iP2I_FPY/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9mb29k/YWxsZXJneWNhbmFk/YS5jYS93cC1jb250/ZW50L3VwbG9hZHMv/bWlsay1kYWlyeS1w/cm9kdWN0cy5qcGc',
    description:
        'Milk is considered a priority food allergen by Health Canada. Priority food allergens are the foods that cause the majority of allergic reactions.Milk allergy is caused by a reaction to the protein in cow\'s milk.The protein in cow\'s milk is very similar to those found in milk from goats, sheep, and other mammals like deer and buffalo. Individuals allergic to cow\'s milk will likely experience reactions to other types of milk.',
  ),
  ProductModel(
    code: 1221,
    name: 'Coffee',
    faverite: false,
    price: 7.3,
    qty: 1,
    image:
        'https://imgs.search.brave.com/kyNdIKQrlg-TrltKk6VxGehnwfcX2n-mHgaLH_8VHj4/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9zdGF0/aWMuaW5kZXBlbmRl/bnQuY28udWsvczNm/cy1wdWJsaWMvdGh1/bWJuYWlscy9pbWFn/ZS8yMDE5LzA2LzEz/LzE2L2Jlc3QtaW5k/ZXBlbmRlbnQtY29m/ZmVlLWJyYW5kcy5q/cGc',
    description:
        'Best independent coffee brands that are better quality and pay farmers a fair wage',
  ),
  ProductModel(
    code: 1284,
    name: 'Berger Set',
    faverite: true,
    price: 8.64,
    qty: 1,
    image:
        'https://imgs.search.brave.com/5mJjTW_OXxZtkimjJZ0g0n0Ka8lfKpEXFQ4CIO7DtSY/rs:fit:1200:1200:1/g:ce/aHR0cDovL3Bob3Rv/cy5kZW1hbmRzdHVk/aW9zLmNvbS9nZXR0/eS9hcnRpY2xlLzE3/Ni8yMzYvNTEzMDY3/MTg2LmpwZw',
    description: 'Fast Food Health Risks & Cost | Healthful',
  ),
  ProductModel(
    code: 1234,
    name: 'Miklk and Yaur',
    faverite: false,
    price: 5.64,
    qty: 1,
    image:
        'https://imgs.search.brave.com/py3XN0JEd82fD2f1PhAkCUCrVYWzxTrcvG_iP2I_FPY/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9mb29k/YWxsZXJneWNhbmFk/YS5jYS93cC1jb250/ZW50L3VwbG9hZHMv/bWlsay1kYWlyeS1w/cm9kdWN0cy5qcGc',
    description:
        'Milk is considered a priority food allergen by Health Canada. Priority food allergens are the foods that cause the majority of allergic reactions.Milk allergy is caused by a reaction to the protein in cow\'s milk.The protein in cow\'s milk is very similar to those found in milk from goats, sheep, and other mammals like deer and buffalo. Individuals allergic to cow\'s milk will likely experience reactions to other types of milk.',
  ),
  ProductModel(
    code: 122334,
    name: 'Cheap Set',
    faverite: false,
    price: 6.6,
    qty: 1,
    image:
        'https://imgs.search.brave.com/Dzmxn9BcKe5MOhtnEBT4AAWreaUtz58GeeT5e8Vzztk/rs:fit:999:675:1/g:ce/aHR0cDovL3d3dy5m/YXN0Zm9vZG1lbnVw/cmljZXMuY29tL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDEzLzA2/L0NoZWFwLUZhc3Qt/Rm9vZC1PcHRpb25z/LU1jRG9uYWxkcy5q/cGc',
    description: '15 Cheap Fast Food Options - Fast Food Menu Prices',
  ),
  ProductModel(
    code: 1234,
    name: 'Miklk and Yaur',
    faverite: true,
    price: 5.64,
    qty: 1,
    image:
        'https://imgs.search.brave.com/py3XN0JEd82fD2f1PhAkCUCrVYWzxTrcvG_iP2I_FPY/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9mb29k/YWxsZXJneWNhbmFk/YS5jYS93cC1jb250/ZW50L3VwbG9hZHMv/bWlsay1kYWlyeS1w/cm9kdWN0cy5qcGc',
    description:
        'Milk is considered a priority food allergen by Health Canada. Priority food allergens are the foods that cause the majority of allergic reactions.Milk allergy is caused by a reaction to the protein in cow\'s milk.The protein in cow\'s milk is very similar to those found in milk from goats, sheep, and other mammals like deer and buffalo. Individuals allergic to cow\'s milk will likely experience reactions to other types of milk.',
  ),
];
