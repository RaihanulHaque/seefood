import 'package:flutter/material.dart';
import 'package:seefood/models/recent_food.dart';
// import 'package:seefood/models/db_model.dart';

class RecentCard extends StatefulWidget {
  // create varibles that a Recentcard will receive data for
  final int id;
  final String title;
  final String path;
  final DateTime creationDate;
  // bool isChecked;
  final Function insertFunction;
  final Function deleteFunction;
  const RecentCard(
      {required this.id,
      required this.title,
      required this.path,
      required this.creationDate,
      required this.insertFunction, // it will handle the changes in checkbox
      required this.deleteFunction, // it will handle the delete button function
      Key? key})
      : super(key: key);

  @override
  _RecentCardState createState() => _RecentCardState();
}

class _RecentCardState extends State<RecentCard> {
  @override
  Widget build(BuildContext context) {
    // create a local Recent
    var anotherRecent = Recent(
      id: widget.id,
      title: widget.title,
      path: widget.path,
      creationDate: widget.creationDate,
      // isChecked: widget.isChecked,
    );
    //
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: SizedBox(
          // width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white38,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/${widget.path}'),
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 200,
                    alignment: const Alignment(-0.85, 0),
                    margin: const EdgeInsets.only(),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.white),
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  // add delete method
                  widget.deleteFunction(anotherRecent);
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
