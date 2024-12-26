import 'dart:developer';

import 'package:admin_resort_booking_app/core/constants/theme.dart';
import 'package:admin_resort_booking_app/core/utils/custom_exceptions.dart';
import 'package:admin_resort_booking_app/core/utils/screen_size.dart';
import 'package:admin_resort_booking_app/feature/home/views/screen_home.dart';
import 'package:admin_resort_booking_app/feature/requests/repository/owner_request_repository.dart';
import 'package:admin_resort_booking_app/feature/requests/services/owner_request_service.dart';
import 'package:admin_resort_booking_app/feature/requests/view_model/bloc_owner_request/owner_request_bloc.dart';
import 'package:admin_resort_booking_app/firebase_options.dart';
import 'package:admin_resort_booking_app/routes/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // if (kDebugMode) {
  //   try {
  //     final deviceIp = '172.16.4.113';
  //     // final deviceIp = '192.168.1.78';
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
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        try {
          await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: 'afnanappu86@gmail.com', password: '124578963');
          log('Login successfully');
        } catch (e) {
          log(e.toString());
          log(AppExceptionHandler.handleGenericException(e));
        }
      },
    );

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => OwnerRequestRepository(
            service: OwnerRequestService(),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => OwnerRequestBloc(
              context.read<OwnerRequestRepository>(),
            ),
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
