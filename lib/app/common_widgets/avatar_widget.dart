import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants/base_style.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
    this.name,
    this.url,
    this.size = 70,
    this.path,
  });

  final String? url;
  final String? name;
  final double size;
  final String? path;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: url != null && url?.isNotEmpty == true
          ? CachedNetworkImage(
              height: size,
              width: size,
              imageUrl: url!,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => defaultIcon(),
            )
          : defaultIcon(),
    );
  }

  Widget defaultIcon() {
    if (path != null && path?.isNotEmpty == true) {
      return CircleAvatar(
        radius: size / 2,
        backgroundImage: Image.file(
          File(path ?? ""),
        ).image,
      );
    }
    if (name == null)
      return Icon(
        Icons.account_circle_outlined,
        size: size,
      );
    return defaultAvatar();
  }

  Widget defaultAvatar() {
    final listName = name?.split(" ").toList() ?? [];
    var shortName = '';
    for (var value in listName) {
      shortName += value[0];
    }
    return Container(
      height: size,
      width: size,
      color: Colors.blue[200],
      child: Center(
        child: Text(
          shortName,
          style: BaseTextStyle.heading1(),
        ),
      ),
    );
  }
}
