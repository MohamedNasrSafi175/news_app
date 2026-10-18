
import 'package:flutter/material.dart';
import 'package:news_app/api/api_maneger.dart';
import 'package:news_app/ui/utils/build_context_extention.dart';

import '../../../model/response/sourcesDm.dart';

class NewsScreen extends StatelessWidget {
   NewsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('General'), centerTitle: true),
      body: FutureBuilder(
        future: ApiManeger.loadSources(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else {
            if (snapshot.hasData) {
              return buildTabBar(snapshot.data!);
            } else {
              return CircularProgressIndicator();
            }
          }
        },
      ),
    );
  }
}

Widget buildTabBar(List<SourcesDm> sources) {
  return DefaultTabController(
    length: sources.length,
    child: TabBar(
      tabAlignment: .start,
      physics: ScrollPhysics(),
      tabs: sources.map((e) => buildTab(e)).toList(),
      isScrollable: true,

  ));
}

Widget buildTab(SourcesDm sources ) {
  return Text(sources.name ?? " ");
}
