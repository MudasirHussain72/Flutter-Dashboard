import 'package:flutter/material.dart';
import 'package:rpm_dashboard/view/dashboard/dashboard.dart';
import 'package:rpm_dashboard/view/product/product.dart';
import 'package:rpm_dashboard/view/profile/profile.dart';
import 'package:rpm_dashboard/view/users/users.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

final PageController _pageController = PageController();
int currentPage = 1;

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
        backgroundColor: Colors.blue,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              title: Text(
                'Logo',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ListTile(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              tileColor: currentPage == 1 ? Colors.white : Colors.transparent,
              onTap: () {
                _pageController.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
                setState(() {
                  currentPage = 1;
                });
              },
              title: Text(
                'Dashboard',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ListTile(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              tileColor: currentPage == 2 ? Colors.white : Colors.transparent,
              onTap: () {
                _pageController.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
                setState(() {
                  currentPage = 2;
                });
              },
              title: Text(
                'Users',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ListTile(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              tileColor: currentPage == 3 ? Colors.white : Colors.transparent,
              onTap: () {
                _pageController.animateToPage(
                  2,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
                setState(() {
                  currentPage = 3;
                });
              },
              title: Text(
                'Product',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(color: Colors.black),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ListTile(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              tileColor: currentPage == 4 ? Colors.white : Colors.transparent,
              onTap: () {
                _pageController.animateToPage(
                  3,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
                setState(() {
                  currentPage = 4;
                });
              },
              title: Text(
                'Profile',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ),
        ]),
      ),
      Expanded(
        child: PageView(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          children: const [
            DashboardView(),
            UsersView(),
            ProductView(),
            ProfileView(),
          ],
        ),
      )
    ]));
  }
}
