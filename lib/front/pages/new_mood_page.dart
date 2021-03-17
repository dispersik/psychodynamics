import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psychodynamics/back/helper.dart';
import 'package:psychodynamics/front/ui_helper.dart';

class NewMoodPage extends StatefulWidget {
  static const routeName = '/newMood';

  @override
  _NewMoodPageState createState() => _NewMoodPageState();
}

class _NewMoodPageState extends State<NewMoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(
          'New mood record',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black/*Theme.of(context).primaryColor*/),
        ),
      ),
      body: SizedBox.expand(
        child: ListView(
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(top: 10),
            //   child:
            // ),
            ExpansionTile(
              title: Text(
                'Influencers',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor),
              ),
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/4,
                  child: GridView.count(
                    // Create a grid with 2 columns. If you change the scrollDirection to
                    // horizontal, this produces 2 rows.
                    crossAxisCount: 2,
                    scrollDirection: Axis.horizontal,
                    // Generate 100 widgets that display their index in the List.
                    children: List.generate(100, (index) {
                      return Center(
                        child: Text(
                          'Item $index',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Emotions',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor),
              ),
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/4,
                  child: GridView.count(
                    // Create a grid with 2 columns. If you change the scrollDirection to
                    // horizontal, this produces 2 rows.
                    crossAxisCount: 2,
                    scrollDirection: Axis.horizontal,
                    // Generate 100 widgets that display their index in the List.
                    children: List.generate(100, (index) {
                      return Center(
                        child: Text(
                          'Item $index',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Title', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).primaryColor),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.cyanAccent
                ),
                child: TextField(
                  controller: titleController,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Comment',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).primaryColor),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.cyanAccent
                ),
                child: TextField(
                  controller: commentController,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () => print("save button tap"),
                  child: Text('Save mood record')),
            )
          ],
        ),
      ),
    );
  }
}
