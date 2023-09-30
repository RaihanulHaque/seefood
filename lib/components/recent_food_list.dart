import 'package:flutter/material.dart';
import 'package:seefood/models/db_model.dart';
import 'package:seefood/components/recent_food_card.dart';

class RecentList extends StatelessWidget {
  // create an object of database connect
  // to pass down to todocard, first our todolist have to receive the functions
  final Function insertFunction;
  final Function deleteFunction;
  final db = DatabaseConnect();
  RecentList(
      {required this.insertFunction, required this.deleteFunction, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Expanded(
        child: FutureBuilder(
          future: db.getRecent(),
          initialData: const [],
          builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            var datalength = snapshot.data?.length ?? 0;

            if (datalength == 0) {
              return const Text(
                'No data found',
              );
            } else {
              var data = snapshot.data!;
              return ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: datalength > 4 ? 4 : datalength,
                itemBuilder: (context, i) => RecentCard(
                  id: data[i].id,
                  title: data[i].title,
                  path: data[i].path,
                  creationDate: data[i].creationDate,
                  insertFunction: insertFunction,
                  deleteFunction: deleteFunction,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
