import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Title1(
          title1: 'Popular',
          descrip1: 'Songs are most played',
          image: [
            'Sontung.jfif',
            'Buianhtuan.jfif',
            'havana.jfif',
          ],
          nameMusiz: [
            'Em của ngày hôm qua',
            'Mơ hồ',
            'HAVANA',
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Title1(
          title1: 'Top 100',
          descrip1: 'Top 100 songs at the weekend',
          image: [],
          nameMusiz: [],
        ),
        SizedBox(
          height: 15,
        ),
        Title1(
          title1: 'Top 100',
          descrip1: 'Top 100 songs at the weekend',
          image: [],
          nameMusiz: [],
        ),
      ],
    );
  }
}

class Title1 extends StatelessWidget {
  const Title1(
      {Key? key,
      required this.title1,
      required this.descrip1,
      required this.image,
      required this.nameMusiz})
      : super(key: key);

  final String title1;
  final String descrip1;
  final List<String> image;
  final List<String> nameMusiz;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.white],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$title1',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text('$descrip1',
                  style: TextStyle(
                    fontSize: 18,
                  )),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                  height: 200,
                  child: ListItem(
                    imageAdd: image,
                    nameMusic: nameMusiz,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.imageAdd, required this.nameMusic})
      : super(key: key);

  final List<String> imageAdd;
  final List<String> nameMusic;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageAdd.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 400,
          width: 150,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.blue[200],
            child: TextButton(
              onPressed: () {},
              child: Column(
                children: <Widget>[
                  Expanded(
                      flex: 4,
                      child: Image(
                        image: AssetImage('image/${imageAdd[index]}'),
                      )),
                  SizedBox(
                    height: 6,
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      '${nameMusic[index]}',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      scrollDirection: Axis.horizontal,
    );
  }
}
