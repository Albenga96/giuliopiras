import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:giuliopiras/utils/global.dart';
import 'package:giuliopiras/widgets/end_drawer.dart';
import 'package:giuliopiras/widgets/header.dart';
import 'package:giuliopiras/widgets/skills_row.dart';

import '../widgets/carousel.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: const EndDrawer(),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(),
          Carousel(),
          const SizedBox(
            height: 20.0,
          ),
          const SkillsRow(),
        ],
      )),
    );
  }
}
