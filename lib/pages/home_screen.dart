import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:novo/pages/bazar_rates/bazar_rate_screen.dart';
import 'package:novo/pages/contact_screen/contact_screen_popup.dart';
import 'package:novo/pages/crop_doctor_screen/crop_doctor_screen.dart';
import 'package:novo/pages/khata_book_screen/khata_book_screen.dart';
import 'package:novo/pages/my_crops_screens/my_crops.dart';
import 'package:novo/pages/profile_screen/profile_screen.dart';
import 'package:novo/pages/sellers_screen/sellers_screen.dart';
import 'package:novo/widgets/drawer.dart';

import '../themes.dart';
import '../widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List imgList = [
    'https://cdn.pixabay.com/photo/2020/05/05/18/40/corn-5134432_640.jpg',
    'https://www.gsfclimited.com/content/images/agro-services-development.jpg',
    'https://blogs.iadb.org/brasil/wp-content/uploads/sites/29/2022/05/CBR_Blog_agricultura-sustentavel.png',
    'https://files.sunoresearch.com.br/n/uploads/2023/04/agronegocio_iStock-1250006749.jpg',
    'https://imagens.climatempo.com.br/climapress/galeria/2022/12/12f43157b7be6147a03cabdf65a10b82.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: kColorPrimary,
                  padding: const EdgeInsets.only(top: 20),
                  height: sh / 2.2,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        'HarvestHub Agro',
                        style: kStyleTextW700CW.copyWith(fontSize: 48),
                      ),
                      const SizedBox(height: 12),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Enriching  ',
                              style: kStyleTextW700CW.copyWith(fontSize: 20),
                            ),
                            TextSpan(
                              text: 'Agriculture ',
                              style: kStyleTextW500CG.copyWith(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CarouselSlider(
                          options: CarouselOptions(
                            viewportFraction: 1.0,
                            enlargeCenterPage: false,
                            initialPage: 0,
                            scrollDirection: Axis.horizontal,
                            autoPlay: true,
                            height: sh / 3.6,
                          ),
                          items: imgList
                              .map(
                                (e) => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        e,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 4),
                        child: Text(
                          'Your Dashboard',
                          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              imgUrl: 'assets/images/home/my_crops.png',
                              color: Colors.blue.shade800,
                              name: 'My Crops',
                              style: kStyleTextW500CW,
                              isNetwork: false,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const MyCrops()),
                                );
                              },
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: CustomButton(
                              imgUrl: 'assets/images/home/profile.png',
                              color: Colors.yellow.shade600,
                              name: 'Profile',
                              style: kStyleTextW500CW,
                              isNetwork: false,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ProfileScreen()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              imgUrl: 'assets/images/home/doctor.png',
                              color: Colors.white,
                              name: 'Crop Doctor',
                              style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                              isNetwork: false,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const CropDoctorScreen()),
                                );
                              },
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: CustomButton(
                              imgUrl: 'assets/images/home/sell.png',
                              color: Colors.lightGreen,
                              name: 'Sellers',
                              style: kStyleTextW500CW,
                              isNetwork: false,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SellersScreen()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              imgUrl: 'assets/images/home/book.png',
                              color: Colors.orangeAccent,
                              name: 'Khata Book',
                              style: kStyleTextW500CW,
                              isNetwork: false,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const KhataBookScreen()),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: CustomButton(
                              imgUrl: 'assets/images/home/my_crops.png',
                              color: Colors.yellow.shade900,
                              isNetwork: false,
                              name: 'Transactions',
                              style: kStyleTextW500CW,
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              imgUrl: 'assets/images/home/bazar.png',
                              color: Colors.red.shade300,
                              isNetwork: false,
                              name: 'Bazar Rates',
                              style: kStyleTextW500CW,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const BazarRatesScreen()),
                                );
                              },
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: CustomButton(
                              imgUrl: 'assets/images/home/conatct.png',
                              color: Colors.teal.shade200,
                              isNetwork: false,
                              name: 'Contact Us',
                              style: kStyleTextW500CW,
                              onTap: () {
                                showDialog(context: context, builder: (context) => const ContactScreenPopUp());
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
