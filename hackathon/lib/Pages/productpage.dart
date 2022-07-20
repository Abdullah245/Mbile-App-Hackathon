import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/Constants/colorConstants.dart';
import 'package:hackathon/Constants/textConstants.dart';
import 'package:hackathon/Pages/info.dart';
import 'package:hackathon/Pages/measurement.dart';

import '../Constants/imageConstants.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                CarouselSlider(
                  items: [
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(ImageConstants.img10),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(ImageConstants.img11),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(ImageConstants.img12),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(ImageConstants.img10),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.5,
                    autoPlay: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  TextConstant.message6,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  TextConstant.price,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(ColorConstant.magento)),
                ),
              ),
            ),
            TabBar(
              unselectedLabelColor: Color(ColorConstant.blackcolor),
              labelColor: Colors.red,
              tabs: [
                Tab(
                  text: TextConstant.info,
                ),
                Tab(
                  text: TextConstant.measurement,
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Info(),
                  Measurement(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
