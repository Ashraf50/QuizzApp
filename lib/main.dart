import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quiz_app/core/widget/bottom_bar.dart';
import 'package:quiz_app/core/widget/snack_bar.dart';
import 'package:quiz_app/feature/Wishlist/presentation/view_model/wishlist_cubit/wishlist_cubit.dart';
import 'package:quiz_app/feature/registration/data/auth_bloc/auth_bloc.dart';
import 'package:quiz_app/feature/splash/presentation/view/welcome_view.dart';
import 'package:quiz_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => WishListCubit(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xfff5f7fb),
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: CircularProgressIndicator(
                color: Color.fromARGB(255, 181, 180, 180),
              ));
            } else if (snapshot.hasError) {
              return showSnackBar(context, "Something went wrong");
            } else if (snapshot.hasData) {
              return const BottomBar();
            } else {
              return const WelcomeView();
            }
          },
        ),
      ),
    );
  }
}
