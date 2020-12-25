import 'package:flutter/material.dart';
import 'package:social_shopping/assets.dart';

class Content {
  final String name;
  final String avatar;
  final String city;


  const Content(
      {@required this.name,
      @required this.avatar,
      @required this.city,
      });
}

final Content user1id = Content(
    name: Assets.nameuser1, avatar: Assets.avataruser1, city: Assets.cityuser1);

final Content user2id = Content(
    name: Assets.nameuser2, avatar: Assets.avataruser2, city: Assets.cityuser2);
final Content user3id = Content(
    name: Assets.nameuser3, avatar: Assets.avataruser3, city: Assets.cityuser3);
final Content user4id = Content(
    name: Assets.nameuser4, avatar: Assets.avataruser1, city: Assets.cityuser4);
