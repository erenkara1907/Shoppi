import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppi_app/core/view/theme/theme.dart';
import 'package:shoppi_app/features/notifier/product_list_notifier.dart';
import 'package:shoppi_app/features/shop/view/shop_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductListNotifier(),)
      ],
      child: MaterialApp(
        theme: myTheme,
        home: const ShopView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
