import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vyuh_core/vyuh_core.dart';

final feature = FeatureDescriptor(
  name: 'blog',
  title: 'My diary of travel blogs',
  description: 'Chronicling my journeys across the world in my travel blog',
  icon: Icons.pages,
  routes: () async {
    return [
      GoRoute(
        path: '/blog',
        pageBuilder: defaultRoutePageBuilder,
      ),
    ];
  },
);