import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/feature/profile/presentation/view/widget/custom_photo.dart';
import 'package:quiz_app/feature/profile/presentation/view/widget/loading.dart';
import 'package:quiz_app/feature/profile/presentation/view_model/cubit/image_cubit.dart';

class FetchData extends StatelessWidget {
  const FetchData({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageCubit(),
      child: BlocBuilder<ImageCubit, ImageState>(
        builder: (context, state) {
          var cubit = ImageCubit.get(context);
          return FutureBuilder<DocumentSnapshot>(
            future: cubit.users.doc(cubit.userDetails!.uid).get(),
            builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
              if (snapshot.hasError) {
                return const Center(child: Text("Something went wrong"));
              }
              if (snapshot.hasData && !snapshot.data!.exists) {
                return const Center(child: Text("Document does not exist"));
              }
              if (snapshot.connectionState == ConnectionState.done) {
                Map<String, dynamic> data =
                    snapshot.data!.data() as Map<String, dynamic>;
                return CustomPhoto(
                  data: data,
                );
              }
              return const Loading();
            },
          );
        },
      ),
    );
  }
}
