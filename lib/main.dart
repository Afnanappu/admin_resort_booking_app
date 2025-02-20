import 'package:admin_resort_booking_app/feature/dashboard/repository/dashboard_repository.dart';
import 'package:admin_resort_booking_app/feature/dashboard/services/dashboard_services.dart';
import 'package:admin_resort_booking_app/feature/dashboard/view_model/bloc_dashboard/dashboard_bloc.dart';
import 'package:admin_resort_booking_app/feature/issue_posting/services.dart/report_issue_services.dart';
import 'package:admin_resort_booking_app/feature/issue_posting/view_model/cubit/cubit_report_issue/report_issue_cubit.dart';
import 'package:admin_resort_booking_app/feature/push_notification/repository/notification_repository.dart';
import 'package:admin_resort_booking_app/feature/push_notification/services/notification_service.dart';
import 'package:admin_resort_booking_app/feature/push_notification/view_model/cubit/cubit/push_notification_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:admin_resort_booking_app/core/constants/theme.dart';
import 'package:admin_resort_booking_app/core/data/repository/owner_repository.dart';
import 'package:admin_resort_booking_app/core/data/repository/review_repository.dart';
import 'package:admin_resort_booking_app/core/data/repository/user_repository.dart';
import 'package:admin_resort_booking_app/core/data/services/owner_services.dart';
import 'package:admin_resort_booking_app/core/data/services/review_services.dart';
import 'package:admin_resort_booking_app/core/data/services/user_services.dart';
import 'package:admin_resort_booking_app/core/data/view_model/cubit/user_data_cubit.dart';
import 'package:admin_resort_booking_app/core/utils/screen_size.dart';
import 'package:admin_resort_booking_app/feature/additional_options/repository/additional_option_repository.dart';
import 'package:admin_resort_booking_app/feature/additional_options/services/additional_options_services.dart';
import 'package:admin_resort_booking_app/feature/additional_options/view_model/bloc/bloc/additional_option_bloc.dart';
import 'package:admin_resort_booking_app/feature/owner_management/repository/property_home_repository.dart';
import 'package:admin_resort_booking_app/feature/owner_management/services/property_home_services.dart';
import 'package:admin_resort_booking_app/feature/owner_management/view_model/bloc/bloc_property_details/property_details_home_bloc.dart';
import 'package:admin_resort_booking_app/feature/owner_management/view_model/bloc/bloc_property_home_list/property_list_home_bloc.dart';
import 'package:admin_resort_booking_app/feature/owner_management/view_model/cubit/cubit_owner_management/owner_management_cubit.dart';
import 'package:admin_resort_booking_app/feature/owner_management/view_model/cubit/cubit_review/review_cubit.dart';
import 'package:admin_resort_booking_app/feature/requests/repository/owner_request_repository.dart';
import 'package:admin_resort_booking_app/feature/requests/repository/property_request_repository.dart';
import 'package:admin_resort_booking_app/feature/requests/services/owner_request_service.dart';
import 'package:admin_resort_booking_app/feature/requests/services/property_request_services.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/bloc_owner_request/owner_request_bloc.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/bloc_property_request/property_request_bloc.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/cubit/owner_request_data_cubit.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/cubit/property_request_data_cubit.dart';
import 'package:admin_resort_booking_app/feature/user_management/view_model/cubit/cubit_user_management/user_management_cubit.dart';
import 'package:admin_resort_booking_app/firebase_options.dart';
import 'package:admin_resort_booking_app/routes/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // if (kDebugMode) {
  //   try {
  //     // final deviceIp = '172.16.4.113';
  //     // final deviceIp = '192.168.1.25';
  //     final deviceIp = '10.0.14.31';
  //     await FirebaseAuth.instance.useAuthEmulator(deviceIp, 9099);
  //     FirebaseFirestore.instance.useFirestoreEmulator(deviceIp, 8089);
  //     log('Local firestore and auth is connected');
  //   } catch (e) {
  //     log(e.toString());
  //   }
  // }

  runApp(const ResortAdminApp());
}

class ResortAdminApp extends StatelessWidget {
  const ResortAdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    MyScreenSize.initialize(context);
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (_) async {
    //     try {
    //       await FirebaseAuth.instance.signInWithEmailAndPassword(
    //         email: 'admin@gmail.com',
    //         password: '124578963',
    //       );
    //       log('Login successfully');
    //     } on FirebaseAuthException catch (e) {
    //       log(e.toString());

    //       //Signin with this email if not exist already
    //       if (e.code == 'invalid-credential') {
    //         FirebaseAuth.instance.createUserWithEmailAndPassword(
    //           email: 'admin@gmail.com',
    //           password: '124578963',
    //         );
    //         log('Created admin successfully after sign-in failed');
    //         log('now trying to sign-in again...');
    //         await FirebaseAuth.instance.signInWithEmailAndPassword(
    //           email: 'admin@gmail.com',
    //           password: '124578963',
    //         );
    //         log('Login successfully');
    //       }
    //     } catch (e) {
    //       log(e.toString());
    //       log(AppExceptionHandler.handleGenericException(e));
    //     }
    //   },
    // );

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => OwnerRequestRepository(
            service: OwnerRequestService(),
          ),
        ),
        RepositoryProvider(
          create: (context) => AdditionalOptionRepository(
            additionalOptionsServices: AdditionalOptionsServices(),
          ),
        ),
        RepositoryProvider(
          create: (context) => OwnerRepository(
            services: OwnerServices(),
          ),
        ),
        RepositoryProvider(
          create: (context) => UserRepository(
            services: UserServices(),
          ),
        ),
        RepositoryProvider(
          create: (context) => DashboardRepository(
            DashboardServices(),
          ),
        ),
        RepositoryProvider(
          create: (context) => ReviewRepository(
            ReviewServices(),
          ),
        ),
        RepositoryProvider(
          create: (context) => PropertyHomeRepository(
              services: PropertyHomeServices(
            ReviewServices(),
          )),
        ),
        RepositoryProvider(
          create: (context) =>
              PropertyRequestRepository(service: PropertyRequestServices()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => OwnerRequestBloc(
              context.read<OwnerRequestRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => PropertyRequestBloc(
              context.read<PropertyRequestRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => UserManagementCubit(
              context.read<UserRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => ReviewCubit(
              context.read<ReviewRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => AdditionalOptionBloc(
                context.read<AdditionalOptionRepository>()),
          ),
          BlocProvider(
            create: (context) => OwnerRequestDataCubit(),
          ),
          BlocProvider(
            create: (context) => UserDataCubit(context.read<UserRepository>()),
          ),
          BlocProvider(
            create: (context) =>
                PropertyListHomeBloc(context.read<PropertyHomeRepository>()),
          ),
          BlocProvider(
            create: (context) =>
                PropertyDetailsHomeBloc(context.read<PropertyHomeRepository>()),
          ),
          BlocProvider(
            create: (context) =>
                OwnerManagementCubit(context.read<OwnerRepository>()),
          ),
          BlocProvider(
            create: (context) => ReportIssueCubit(
              ReportIssueServices(),
            ),
          ),
          
          BlocProvider(
            create: (context) => PushNotificationCubit(
              NotificationRepository(
                service: NotificationService(),
              ),
            ),
          ),

          BlocProvider(
            create: (context) =>
                DashboardBloc(context.read<DashboardRepository>()),
          ),
          BlocProvider(
            create: (context) => PropertyRequestDataCubit(),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: routes,
          debugShowCheckedModeBanner: false,
          title: 'Resort Admin Panel',
          theme: customTheme,
        ),
      ),
    );
  }
}
