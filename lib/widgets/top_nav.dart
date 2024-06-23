import 'package:dashboard/constants/style.dart';
import 'package:flutter/material.dart';

// widgets
import 'package:dashboard/widgets/index.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
        leading: !ResponsiveWidget.isSmallScreen(context)
            ? Row()
            : IconButton(
                onPressed: () {
                  key.currentState?.openDrawer();
                },
                icon: const Icon(Icons.menu)),
        elevation: 0,
        // backgroundColor: Colors.white,
        title: Row(children: <Widget>[
          Visibility(
              child: CustomText(
                  text: "Dash",
                  color: lightGray,
                  size: 20,
                  weight: FontWeight.bold)),
          Expanded(child: Container()),
          IconButton(
            icon: Icon(Icons.settings, color: dark.withOpacity(0.7)),
            onPressed: () {},
          ),
          Stack(
            children: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon:
                      Icon(Icons.notifications, color: dark.withOpacity(0.7))),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                    width: 12,
                    height: 12,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: active,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: light, width: 2))),
              )
            ],
          ),
          Container(width: 1, height: 22, color: lightGray),
          const SizedBox(width: 24),
          CustomText(
            text: "John Doe",
            color: lightGray,
            weight: FontWeight.bold,
          ),
          const SizedBox(width: 16),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(Icons.person_outline, color: dark),
              ))
        ]),
        iconTheme: IconThemeData(color: dark),
        backgroundColor: Colors.transparent);
