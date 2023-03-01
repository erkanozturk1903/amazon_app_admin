import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade900,
        title: Text('Yönetim Paneli'),
      ),

      sideBar: SideBar(
        items: [
          AdminMenuItem(
            title: 'Ana Sayfa',
            icon: Icons.dashboard,
            route: '/'
          ),
          AdminMenuItem(
              title: 'Dükkanlar',
              icon: CupertinoIcons.person_3,
              route: '/'
          ),
          AdminMenuItem(
              title: 'Para Çekme',
              icon: CupertinoIcons.money_dollar,
              route: '/'
          ),
          AdminMenuItem(
              title: 'Sipariş Yönetimi',
              icon: CupertinoIcons.shopping_cart,
              route: '/'
          ),
          AdminMenuItem(
              title: 'Kategori Yönetimi',
              icon: Icons.category,
              route: '/'
          ),
          AdminMenuItem(
              title: 'Ürün Yönetimi',
              icon: Icons.shop,
              route: '/'
          ),
          AdminMenuItem(
              title: 'Afiş Yönetimi',
              icon: CupertinoIcons.add,
              route: '/'
          ),
        ],
        selectedRoute: '',
      ),
      body: Text(
        'Dashboard',
      ),

    );
  }
}
