import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrisolve_app/common/values/appcolor.dart';
import 'package:nutrisolve_app/common/values/appsize.dart';
import 'package:nutrisolve_app/common/values/mytext_style.dart';
import 'package:nutrisolve_app/views/detail_beneficiaries_page/sub/detail_information.dart';
import 'package:nutrisolve_app/views/detail_beneficiaries_page/sub/detail_update.dart';
import 'package:nutrisolve_app/views/donate_page/donate_page.dart';

class DetailBeneficiaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 50,
            child: Ink(
              child: Material(
                child: InkWell(
                  splashColor: Colors.amber.withOpacity(0),
                  onTap: () => {Get.to(() => DonatePage())},
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: main_color,
                    ),
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Send me foods",
                        style: text_size_medium.copyWith(
                          color: Colors.white,
                          fontWeight: fontWeight_regular,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: NestedScrollView(
          physics: BouncingScrollPhysics(),
          headerSliverBuilder: (
            BuildContext context,
            bool innerBoxIsScrolled,
          ) {
            return <Widget>[
              SliverAppBar(
                actions: [
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 5,
                  )
                ],
                backgroundColor: main_color,
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Container(
                    height: 250,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.network(
                            'https://image.freepik.com/free-vector/happy-kids-illustration_23-2147531060.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                    Colors.black.withOpacity(.5),
                                    Colors.black.withOpacity(.0)
                                  ])),
                              height: 90,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    indicatorColor: main_color,
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: "Information"),
                      Tab(text: "Update"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: Container(
            color: white,
            child: Center(
              child: Padding(
                padding: padding_default_horizontal,
                child: TabBarView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    DetailInformation(),
                    DetailUpdate(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
