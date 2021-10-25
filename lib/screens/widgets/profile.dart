import 'package:flutter/material.dart';
import 'package:neft/models/profile.dart';
import 'package:neft/screens/widgets/costum_grid.dart';
import 'package:neft/screens/widgets/person_info.dart';
import 'package:neft/screens/widgets/tap_sliver_delegate.dart';

class ProfilPage extends StatelessWidget {
  final profile = Profile.generateProfile();
  final tabs = ['Creation', 'Collection'];
  ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: DefaultTabController(
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverToBoxAdapter(
                    child: PersonInfo(profile),
                  ),
                  SliverPersistentHeader(
                    delegate: TabSliverDelegate(TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey[400],
                      indicatorColor: Colors.black,
                      tabs: tabs
                          .map((e) => Tab(
                                child: Text(
                                  e,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ))
                          .toList(),
                    )),
                    pinned: true,
                  )
                ];
              },
              body: TabBarView(
                children: [
                  CustomGird(scroolKey: 'creations', list: profile.creations!),
                  CustomGird(
                      scroolKey: 'collections', list: profile.collections!),
                ],
              ),
            )));
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: _buildIcon(Icons.arrow_back_outlined),
      actions: [_buildIcon(Icons.more_vert_outlined)],
    );
  }

  IconButton _buildIcon(IconData icon) {
    return IconButton(
      onPressed: () {},
      splashRadius: 25,
      icon: Icon(icon, color: Colors.black, size: 20),
    );
  }
}
