import 'dart:developer';

import 'package:admin_resort_booking_app/feature/dashboard/views/screen_dashboard.dart';
import 'package:admin_resort_booking_app/feature/home/views/screen_home.dart';
import 'package:admin_resort_booking_app/feature/owner_management/views/screen_owner_management.dart';
import 'package:admin_resort_booking_app/feature/requests/model/owner_model.dart';
import 'package:admin_resort_booking_app/feature/requests/views/screens/image_viewer.dart';
import 'package:admin_resort_booking_app/feature/requests/views/screens/screen_owner_request_details.dart';
import 'package:admin_resort_booking_app/feature/requests/views/screens/screen_requests.dart';
import 'package:admin_resort_booking_app/feature/revenue_management/views/screen_revenue_management.dart';
import 'package:admin_resort_booking_app/feature/user_management/views/screen_user_management.dart';
import 'package:admin_resort_booking_app/routes/custom_route_transition.dart';
import 'package:admin_resort_booking_app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

final routes = GoRouter(
  initialLocation: '/${AppRoutes.dashboard}',
  navigatorKey: _rootNavigatorKey,
  observers: [
    MyNavigatorObserver(),
  ],
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HomeWithSideRail(
          navigationShell: navigationShell,
        );
      },
      branches: [
        //dashboard
        StatefulShellBranch(
          navigatorKey: _sectionNavigatorKey,
          routes: [
            GoRoute(
              name: 'dashboard',
              path: '/${AppRoutes.dashboard}',
              pageBuilder: (context, state) {
                return customTransitionPage(
                  state,
                  const DashboardPage(),
                );
              },
            ),
          ],
        ),

        //user management
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: AppRoutes.userManagement,
              path: '/${AppRoutes.userManagement}',
              pageBuilder: (context, state) => customTransitionPage(
                state,
                UserManagementPage(),
              ),
            ),
          ],
        ),

        //owner management
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: AppRoutes.ownerManagement,
              path: '/${AppRoutes.ownerManagement}',
              pageBuilder: (context, state) => customTransitionPage(
                state,
                OwnerManagementPage(),
              ),
            ),
          ],
        ),

        //Request
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'request',
              path: '/${AppRoutes.request}',
              pageBuilder: (context, state) => customTransitionPage(
                state,
                RequestPage(),
              ),
              routes: [
                //request owner details
                GoRoute(
                  path: AppRoutes.requestOwnerDetails,
                  redirect: (context, state) {
                    if (state.extra == null || state.extra is! OwnerModel) {
                      return '/${AppRoutes.request}';
                    }
                    return null;
                  },
                  pageBuilder: (context, state) {
                    final owner = state.extra as OwnerModel;
                    return customTransitionPage(
                      state,
                      OwnerRequestScreen(
                        uid: owner.uid,
                        ownerId: owner.ownerId,
                        name: owner.name,
                        email: owner.email,
                        isVerified: owner.isVerified,
                        personalProof: owner.personalProof,
                      ),
                    );
                  },
                )
              ],
            ),
            GoRoute(
                path: '/${AppRoutes.imageViewer}',
                redirect: (context, state) {
                  if (state.extra == null ||
                      state.extra is! Map<String, dynamic>) {
                    return '/${AppRoutes.request}';
                  }
                  return null;
                },
                pageBuilder: (context, state) {
                  final extra = state.extra as Map<String, dynamic>;
                  final image = extra['file'] as String;
                  final fileName = extra['fileName'] as String;
                  final fileExtension = extra['fileExtension'] as String;
                  return customTransitionPage(
                    state,
                    ImageViewer(
                      image: image,
                      fileExtension: fileExtension,
                      fileName: fileName,
                    ),
                  );
                }),
          ],
        ),

        //owner management
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: AppRoutes.revenueAndReport,
              path: '/${AppRoutes.revenueAndReport}',
              pageBuilder: (context, state) => customTransitionPage(
                state,
                RevenueReportPage(),
              ),
            ),
          ],
        ),
      ],
    )
  ],
);

//This class is an observable class that will log every navigation changes. Put this class in an observer.
//Can customize out put of any navigation.
class MyNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    log('Push: =>');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    log('Pop: <=');
  }
}
