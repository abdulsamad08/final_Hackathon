import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:squip_app/utils/constants.dart';
import 'package:squip_app/view/Police/police.dart';
import 'package:squip_app/view/user/accepted_page.dart';

class ProfileScreen extends StatefulWidget {
  // static const routeName = "/ProfileScreen";

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          //for circle avtar image
          _getHeader(),
          const SizedBox(
            height: 10,
          ),
          _profileName("Sam"),
          const SizedBox(
            height: 14,
          ),
          _heading("Personal Details"),
          const SizedBox(
            height: 6,
          ),
          _detailsCard(),
          const SizedBox(
            height: 10,
          ),
          _heading("Settings"),
          const SizedBox(
            height: 6,
          ),
          _settingsCard(),
          const Spacer(),
          logoutButton()
        ],
      )),
      floatingActionButton: FloatingActionButton(
          focusColor: ColorConstants.greenColor,
          backgroundColor: ColorConstants.greenColor,
          onPressed: () {
            Get.to(PolicePage());
          }),
    );
  }

  Widget _getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 50,
            width: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://images.pexels.com/photos/15436335/pexels-photo-15436335.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
              ), // color: Colors.orange[100],
            ),
          ),
        ),
      ],
    );
  }

  Widget _profileName(String name) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80, //80% of width,
      child: Center(
        child: Text(
          name,
          style: const TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }

  Widget _heading(String heading) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80, //80% of width,
      child: Text(
        heading,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _detailsCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(
          children: const [
            //row for each deatails
            ListTile(
              leading: Icon(Icons.email),
              title: Text("sam@gmail.com"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("+92 28378228"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Pakistan"),
            )
          ],
        ),
      ),
    );
  }

  Widget _settingsCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(
          children: const [
            //row for each deatails
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.dashboard_customize),
              title: Text("About Us"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.topic),
              title: Text("Change Theme"),
            )
          ],
        ),
      ),
    );
  }

  Widget logoutButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        onTap: () {},
        child: Container(
            color: ColorConstants.greenColor,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Logout",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
