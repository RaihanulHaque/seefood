import 'package:flutter/material.dart';
import 'package:seefood/components/page_view_food_list.dart';
import 'package:seefood/components/bottom_navigation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';
import 'dart:io';
import 'package:seefood/models/foods.dart';
import 'package:seefood/screens/main/food_description.dart';
import 'package:seefood/models/db_model.dart';
import 'package:seefood/models/recent_food.dart';
import 'package:seefood/components/recent_food_list.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var db = DatabaseConnect();
  final Color kDarkBlueColor = const Color(0xFF053149);
  // ignore: unused_field
  late File _image;
  late List _results;
  String name = '';
  int index1 = 0;
  double prediction = 0.0;
  bool imageSelect = false;
  bool isLoading = false;
  // String _text = '';

  void addItem(Recent recent) async {
    await db.insertRecent(recent);
    setState(() {});
  }

  // function to delete todo
  void deleteItem(Recent recent) async {
    await db.deleteRecent(recent);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadModel();
  }

  Future loadModel() async {
    await Tflite.loadModel(
        model: "assets/models/model.tflite",
        labels: "assets/models/labels.txt");
  }

  @override
  void dispose() {
    super.dispose();
    Tflite.close();
  }

  Future imageClassification(File image) async {
    final List? recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 11,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _results = recognitions!;
      name = _results[0]['label'];
      db.insertRecent(
        Recent(
          title: _results[0]['label'],
          path: foods[_results[0]['index']].foodImage,
          creationDate: DateTime.now(),
        ),
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FoodDetailsScreen(
            name: _results[0]['label'],
            imagePath: foods[_results[0]['index']].foodImage,
            description: foods[_results[0]['index']].description,
          ),
        ),
      );
      _image = image;
      imageSelect = true;
      isLoading = false;
    });
  }

  Future pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: source, imageQuality: 75);

    setState(() {
      isLoading = true;
      imageSelect = false;
    });
    File image = File(pickedFile!.path);
    imageClassification(image);
  }

  Future load() async {
    showDialog(
        context: context,
        builder: ((context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }));
    Navigator.of(context).pop();
  }

  void navigateToNewPage(BuildContext context, result) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => FoodDetailsScreen(
                name: result['label'],
                imagePath: foods[result['index']].foodImage,
                description: foods[result['index']].description,
              )), // Replace NewPage with the desired page to open
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7EEFB),
      body: SafeArea(
        child: ListView(
          primary: true,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.5, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'SEEFOOD',
                    style: TextStyle(
                        // fontFamily: 'Itim',
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0E0E2D)),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 36,
                    child: Icon(
                      Icons.no_food_outlined,
                      size: 34,
                    ),
                  ),
                  SizedBox(
                    height: 16.53,
                  ),
                ],
              ),
            ),
            const PageViewFoodList(),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
              ),
              child: const Text(
                'Recent Searches',
                style: TextStyle(
                  // fontFamily: 'Itim',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  // color: Color(0xFF0E0E2D),
                ),
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Column(
              children: [
                RecentList(insertFunction: addItem, deleteFunction: deleteItem),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        speedDialChildren: <SpeedDialChild>[
          SpeedDialChild(
            child: const Icon(Icons.camera_rounded),
            foregroundColor: Colors.black,
            backgroundColor: Colors.blue[300],
            label: 'Take A Photo!',
            onPressed: () {
              pickImage(ImageSource.camera);
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.add_photo_alternate_outlined),
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            label: 'Pick From Gallery!',
            onPressed: () {
              pickImage(ImageSource.gallery);
            },
          ),
        ],
        closedForegroundColor: Colors.black,
        openForegroundColor: Colors.white,
        closedBackgroundColor: Colors.white,
        openBackgroundColor: Colors.black,
        child: const Icon(Icons.upload_rounded),
      ),
      // bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}
