import 'package:amazon_app_admin/views/screens/side_bar_screens/categories_screen.dart';
import 'package:amazon_app_admin/views/screens/side_bar_screens/dashboard_screen.dart';
import 'package:amazon_app_admin/views/screens/side_bar_screens/order_screen.dart';
import 'package:amazon_app_admin/views/screens/side_bar_screens/product_screen.dart';
import 'package:amazon_app_admin/views/screens/side_bar_screens/upload_banner_screen.dart';
import 'package:amazon_app_admin/views/screens/side_bar_screens/vendor_screen.dart';
import 'package:amazon_app_admin/views/screens/side_bar_screens/withdrawal_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _selectedItem = DashboardScreen();

  screenSlector(item) {
    switch (item.route) {
      case DashboardScreen.routeName:
        setState(() {
          _selectedItem = DashboardScreen();
        });
        break;
      case VendorScreen.routeName:
        setState(() {
          _selectedItem = VendorScreen();
        });
        break;
      case OrderScreen.routeName:
        setState(() {
          _selectedItem = OrderScreen();
        });
        break;
      case ProductScreen.routeName:
        setState(() {
          _selectedItem = ProductScreen();
        });
        break;
      case UploadBannerScreen.routeName:
        setState(() {
          _selectedItem = UploadBannerScreen();
        });
        break;
      case WithdrawalScreen.routeName:
        setState(() {
          _selectedItem = WithdrawalScreen();
        });
        break;
        case CategoriesScreen.routeName:
        setState(() {
          _selectedItem = CategoriesScreen();
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,

      sideBar: SideBar(
        items: [
          AdminMenuItem(
            title: 'Ana Sayfa',
            icon: Icons.dashboard,
            route: DashboardScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Dükkanlar',
            icon: CupertinoIcons.person_3,
            route: VendorScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Para Çekme',
            icon: CupertinoIcons.money_dollar,
            route: WithdrawalScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Sipariş Yönetimi',
            icon: CupertinoIcons.shopping_cart,
            route: OrderScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Kategori Yönetimi',
            icon: Icons.category,
            route: CategoriesScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Ürün Yönetimi',
            icon: Icons.shop,
            route: ProductScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Afiş Yönetimi',
            icon: CupertinoIcons.add,
            route: UploadBannerScreen.routeName,
          ),
        ],
        selectedRoute: '',
        onSelected: (item) {
          screenSlector(item);
        },
        header: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'Amazon App Panel',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'footer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: _selectedItem,
    );
  }
}
