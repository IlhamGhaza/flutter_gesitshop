import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/category/models/category.dart';
import '../data/product/models/product.dart';
import '../data/product/models/color.dart';

List<CategoryModel> fakeCategories = [
  CategoryModel(
    title: "Men's Clothing",
    categoryId: "cat1",
    image: "https://example.com/mens_clothing.jpg",
  ),
  CategoryModel(
    title: "Women's Clothing",
    categoryId: "cat2",
    image: "https://example.com/womens_clothing.jpg",
  ),
  CategoryModel(
    title: "Electronics",
    categoryId: "cat3",
    image: "https://example.com/electronics.jpg",
  ),
];

List<ProductModel> fakeProducts = [
  ProductModel(
    categoryId: "cat1",
    colors: [
      ProductColorModel(title: "Blue", rgb: [0, 0, 255]),
      ProductColorModel(title: "Red", rgb: [255, 0, 0]),
    ],
    createdDate: Timestamp.now(),
    discountedPrice: 89.99,
    gender: 1, // Assuming 1 for men, 2 for women
    images: [
      "https://example.com/product1_image1.jpg",
      "https://example.com/product1_image2.jpg",
    ],
    price: 99.99,
    sizes: ["S", "M", "L", "XL"],
    productId: "prod1",
    salesNumber: 100,
    title: "Men's Classic T-Shirt",
  ),
  ProductModel(
    categoryId: "cat2",
    colors: [
      ProductColorModel(title: "Black", rgb: [0, 0, 0]),
      ProductColorModel(title: "White", rgb: [255, 255, 255]),
    ],
    createdDate: Timestamp.now(),
    discountedPrice: 129.99,
    gender: 2, // Assuming 1 for men, 2 for women
    images: [
      "https://example.com/product2_image1.jpg",
      "https://example.com/product2_image2.jpg",
    ],
    price: 149.99,
    sizes: ["XS", "S", "M", "L"],
    productId: "prod2",
    salesNumber: 75,
    title: "Women's Summer Dress",
  ),
  ProductModel(
    categoryId: "cat3",
    colors: [
      ProductColorModel(title: "Silver", rgb: [192, 192, 192]),
      ProductColorModel(title: "Space Gray", rgb: [128, 128, 128]),
    ],
    createdDate: Timestamp.now(),
    discountedPrice: 899.99,
    gender: 0, // Assuming 0 for unisex or not applicable
    images: [
      "https://example.com/product3_image1.jpg",
      "https://example.com/product3_image2.jpg",
    ],
    price: 999.99,
    sizes: ["128GB", "256GB", "512GB"],
    productId: "prod3",
    salesNumber: 50,
    title: "Smartphone X",
  ),
];
