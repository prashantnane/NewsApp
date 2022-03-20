import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  Widget _buildTab(IconData iconData, String title) {
    return Tab(icon: Icon(iconData), text: title);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            color: Colors.white,
            child: SafeArea(
              child: TabBar(
                tabs: <Widget>[
                  _buildTab(Icons.video_collection, 'Shorts'),
                  _buildTab(Icons.fiber_new, 'Latest'),
                  _buildTab(Icons.trending_up, 'Trending'),
                  _buildTab(Icons.live_tv, 'LiveTv'),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text('Top News!'),
            ),
            Center(
              child: Text('Latest News!'),
            ),
            Center(
              child: Text('Trending News!'),
            ),
            Center(
              child: Text('Live News!'),
            ),
          ],
        ),
      ),
    );
  }
}
