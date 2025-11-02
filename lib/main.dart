import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quran_kareem/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:quran_kareem/core/helper/responsive/size_provider.dart';
import 'package:quran_kareem/core/theme/cubit/theme_cubit.dart';
import 'core/theme/theme_data/them_data_dark.dart';
import 'core/theme/theme_data/theme_data_light.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(
        (await getApplicationDocumentsDirectory()).path),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return SizeProvider(
            baseSize: const Size(375, 812),
            width: context.width,
            height: context.height,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Quran Kareem',
              theme: getLightTheme(),
              darkTheme: getDarkTheme(),
              themeMode: themeMode,
            ),
          );
        },
      ),
    );
  }
}