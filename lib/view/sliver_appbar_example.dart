import 'package:flutter/material.dart';

class SliverAppBarExample extends StatelessWidget {
  const SliverAppBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
            pinned: true,
            expandedHeight: 100,    
            elevation:  0,
            backgroundColor:  Colors.purple,
            bottom:  PreferredSize(
              preferredSize:  const Size.fromHeight(50),
              child:  Container(
                height:  50,
                width:  double.infinity,
                color:  Colors.white,
                child:  const Center(
                  child:  Text(
                    'Teslimat Adresi Belirleyin Widget', 
                    style:  TextStyle(
                      color:  Colors.black,
                      fontSize:  20,
                      fontWeight:  FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            flexibleSpace:  const FlexibleSpaceBar(
              title:  SizedBox(
                height: 120,
                child: Center(child: Text('Getir Yemek Logo', style:  TextStyle(color:  Colors.white, fontSize: 25)))),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  width: 200,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                     //random food image
                      image: NetworkImage('https://picsum.photos/250?image=9'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
           SliverPersistentHeader (
            pinned: true,
            delegate:  MyHeaderDelegate(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate( 
              (context, index) => const SizedBox(
                height: 200,
                child:  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(
                    image: NetworkImage('https://picsum.photos/250?image=9'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class MyHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.purple,
      height: 50,
      child: const Center(child: Text('Canın ne istiyor? widgetı', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
