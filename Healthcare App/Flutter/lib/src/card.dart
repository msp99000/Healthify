import 'package:flutter/material.dart';

class Rcard extends StatelessWidget {
  final String imageUrl;
  final String description;
  final String name;
  final String location;
  Rcard({
    @required this.imageUrl,
    @required this.description,
    @required this.name,
    @required this.location,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shadowColor: Colors.blueGrey,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Ink.image(
                image: NetworkImage(imageUrl),
                height: 150,
                fit: BoxFit.cover,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3)
                ),
              ),
              Positioned(
                bottom: 16,
                right: 16,
                left: 16,
                child: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 10, top: 12, bottom: 0),
            child: Text(
              description,
              style: TextStyle(fontSize: 18),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                child: Text(
                  'View',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '$location');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Ingredients extends StatelessWidget {
  @override
  const Ingredients({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Low Calories Meal Plan",
            style: TextStyle(
                fontSize: 24,
                color: Colors.black
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/tomato');
            },
            icon: Icon(
              Icons.arrow_back,
              size: 36,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                  height: 250,
                  width: 250,
                  child: Image(
                    image: NetworkImage(
                        'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/salsa-e946d21.jpg?quality=90&webp=true&resize=300,272'),
                  )
              ),
              Text(
                  '''Ingredients''',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent
                  )
              ),
              SizedBox(
                  height:7
              ),
              Text(
                '''
4-6 medium tomatoes, peeled and finely chopped
½ red onion, very finely chopped
1 small garlic clove, chopped
small splash of white wine vinegar
½ lime, juiced
½ bunch of coriander, roughly chopped 
        
        ''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              SizedBox(
                  height:10
              ),
              Text(
                  '''Directions''',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent
                  )
              ),
              SizedBox(
                  height:10
              ),
              Text(
                '''
Combine the tomatoes, red onion, garlic, white wine vinegar, lime juice and coriander in a bowl. Stir, then refrigerate until ready to serve.

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              SizedBox(
                  height: 12
              ),
              Text(
                  '''Nutrition Information''',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent
                  )
              ),
              SizedBox(
                  height:10
              ),
              Text(
                '''
kcal 29
low in fat 0.2g
saturates 0g
carbs 5g
sugars 5g
fibre 2g
protein 1g
salt 0.1g 

COOKING TIME: 5 Min

''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tomato3');
                },
                height: 60,
                minWidth: 300,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                color: Colors.deepOrange,
                child: Text(
                  "See Alternate Ingredients",
                  style: TextStyle(
                      fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        )
    );
  }
}
