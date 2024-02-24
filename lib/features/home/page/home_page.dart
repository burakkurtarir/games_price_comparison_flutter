import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_price_comparison_flutter/features/deals/page/deals_page.dart';
import 'package:games_price_comparison_flutter/features/home/cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _pageController = PageController(initialPage: 1);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: context.read<HomeCubit>().changeCurrentTab,
        children: const [
          DealsPage(),
          Center(child: Text("Games")),
          Center(child: Text("Stores")),
        ],
      ),
      bottomNavigationBar: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.currentTabIndex,
            onTap: (value) {
              _pageController.jumpToPage(value);
              context.read<HomeCubit>().changeCurrentTab(value);
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.money),
                label: 'Deals',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.gamepad),
                label: 'Games',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.store),
                label: 'Stores',
              ),
            ],
          );
        },
      ),
    );
  }
}
