import 'package:flutter/material.dart';
import 'package:unisco_app/data/section_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 5, vsync: this);
  }

  late TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          title: const Text(
            "Home Page",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          floating: true,
          bottom: TabBar(
            indicatorColor: Theme.of(context).colorScheme.primary,
            unselectedLabelColor: Theme.of(context).colorScheme.secondary,
            labelColor: Theme.of(context).colorScheme.primary,
            indicatorSize: TabBarIndicatorSize.label,
            controller: _tabController,
            tabs: NewsSection.tabs,
            isScrollable: true,
          ),
        )
      ],
      body: TabBarView(
        physics: const BouncingScrollPhysics(),
        controller: _tabController,
        children: NewsSection.sections,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
}
