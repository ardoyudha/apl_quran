import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screen/quran_list.dart';
import './models/quran_model.dart';

import './models/quran_ayat_model.dart';
import './screen/quran_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: QuranData(), //LOAD PROVIDER QURANDATA UNTUK STATE MANAGEMENT LIST SURAH
        ),
        //PROVIDER LAINNYA AKAN DITEMPAT DISINI, DIPISAHKAN DENGAN KOMA
        ChangeNotifierProvider.value(
          value: QuranAyat(),
)
      ],
      child: MaterialApp(
        title: 'Al-Quran Digital',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: QuranList(), //DEFAULTNYA AKAN ME-LOAD SCREEN QURANLIST
        routes: {
          //ROUTING UNTUK DETAIL SURAH
          '/detail': (ctx) => QuranDetail(),
        },
      ),
    );
  }
}