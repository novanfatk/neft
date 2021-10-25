import 'package:flutter/material.dart';
import 'package:neft/constant/colors.dart';
import 'package:neft/models/art.dart';
import 'package:neft/screens/pages/art_info.dart';
import 'package:neft/screens/pages/binder_list.dart';
import 'package:neft/screens/pages/buy_button.dart';
import 'package:neft/screens/widgets/tap_sliver_delegate.dart';

import 'detail_baner.dart';

class DetailPage extends StatelessWidget {
  final Art art;
  final tabs = ['Info', 'Birds', 'History'];
  DetailPage(this.art, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
          length: 3,
          initialIndex: 1,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  elevation: 0,
                  expandedHeight: 330,
                  backgroundColor: buttonColor,
                  leading: _buildIcon(
                      context, Icons.arrow_back_ios_new_outlined,
                      back: true),
                  actions: [_buildIcon(context, Icons.more_vert_outlined)],
                  flexibleSpace: FlexibleSpaceBar(
                    background: DetailBanner(art),
                  ),
                  pinned: true,
                ),
                SliverToBoxAdapter(
                  child: ArtInffo(art),
                ),
                SliverPersistentHeader(
                  delegate: TabSliverDelegate(TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey[400],
                      indicatorColor: Colors.black,
                      isScrollable: true,
                      labelPadding: const EdgeInsets.only(left: 5, right: 40),
                      tabs: tabs
                          .map((e) => Tab(
                                child: Text(
                                  e,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ))
                          .toList())),
                  pinned: true,
                )
              ];
            },
            body: TabBarView(
              children: [
                ListView(
                  children: const [],
                ),
                BinderList('birds', art.birds!),
                BinderList('history', art.history!)
              ],
            ),
          )),
      floatingActionButton: const BuyButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _buildIcon(BuildContext context, IconData icon, {bool back = false}) {
    return IconButton(
        onPressed: back ? () => Navigator.of(context).pop() : null,
        splashRadius: 25,
        icon: Icon(icon, color: Colors.black, size: 20));
  }
}
