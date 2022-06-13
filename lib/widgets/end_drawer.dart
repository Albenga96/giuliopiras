import 'package:flutter/material.dart';
import 'package:giuliopiras/config/header_items.dart';
import 'package:giuliopiras/utils/constant.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 24.0,
          ),
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return headerItems[index].isButton
                  ? MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        decoration: BoxDecoration(
                          color: kDangerColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 28.0),
                        child: TextButton(
                          onPressed: headerItems[index].onTap,
                          child: Text(
                            headerItems[index].title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  : ListTile(
                      title: Text(
                        headerItems[index].title,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 10.0,
              );
            },
            itemCount: headerItems.length,
          ),
        ),
      ),
    );
  }
}
