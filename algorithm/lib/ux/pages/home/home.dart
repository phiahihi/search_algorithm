import 'package:algorithm/utils/screen_size.dart';
import 'package:algorithm/ux/pages/home/widgets/category_switcher.dart';
import 'package:algorithm/ux/providers/pages_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ChangeNotifierProvider(
        create: (_) => PagesProvider(),
        child: deviceScreenType(MediaQuery.of(context).size.width) ==
                DeviceScreenType.desktop
            ? const HomeDesktop()
            : const HomeMobile(),
      ),
    );
  }
}

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Expanded(
          child: CategorySwitcher(),
        )
      ],
    );
  }
}

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: const <Widget>[
          Expanded(
            child: CategorySwitcher(),
          ),
        ],
      ),
    );
  }
}
