
import 'package:flutter/material.dart';

void main() => runApp(KonMoqate3App());

class KonMoqate3App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'كن مقاطع',
      theme: ThemeData(primarySwatch: Colors.red),
      home: ProductListScreen(),
    );
  }
}

class Product {
  final String name;
  final String company;
  final String origin;
  final String alternative;
  final String altCountry;
  final String category;

  Product(this.name, this.company, this.origin, this.alternative, this.altCountry, this.category);
}

final List<Product> products = [
  Product("بيبسي", "PepsiCo", "أمريكا", "العوجا كولا", "السعودية", "مشروب"),
  Product("كنتاكي", "Yum! Brands", "أمريكا", "البيك", "السعودية", "وجبات سريعة"),
  Product("شوكولاتة كيت كات", "Nestlé", "سويسرا", "جواهر", "السعودية", "شوكولاتة"),
  Product("ستاربكس قهوة", "Starbucks", "أمريكا", "محمصة المجيدي", "الأردن", "قهوة"),
  Product("بيتزا هت", "Yum! Brands", "أمريكا", "فطيرة التنور", "السعودية", "وجبات سريعة"),
];

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('كن مقاطع')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(product.name, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("الشركة: ${product.company}\nالمنشأ: ${product.origin}\nالبديل: ${product.alternative} (${product.altCountry})\nالنوع: ${product.category}"),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
