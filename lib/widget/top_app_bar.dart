import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar getUniscoAppBar() => AppBar(
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SvgPicture.asset(
              'assets/svg/unisco-light.svg',
              height: 40,
            ),
          ),
          const SizedBox(width: 10),
          SvgPicture.asset('assets/svg/unisco-txt-light.svg'),
        ],
      ),
    );
