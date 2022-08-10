import 'package:burger_shop_app/models/utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                hiText(),
                welcomeBackText(),
                searchArea(),
                categoryRow(),
                SizedBox(
                  height: 52,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      hamburgerCard(),
                      friesCard(),
                      pizzaCard(),
                    ],
                  ),
                ),
                populerRow(),
                burgerCardTop(),
                burgerCardBot(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: bottomNavigation());
  }

  BottomNavigationBar bottomNavigation() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment_sharp, color: Colors.black45),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag, color: Colors.black45),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            color: Colors.black45,
          ),
          label: '',
        ),
      ],
    );
  }

  Padding burgerCardBot() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Card(
            elevation: 1,
            child: Container(
              width: 170,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/cheeseburger.png'),
                    fit: BoxFit.scaleDown),
                color: Colors.transparent,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Cheese Burger',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 150.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.green,
                            ),
                            Text('5.0')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 100.0, top: 3.0),
                        child: Text(
                          "\$2.55",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 176.0, left: 135),
                    child: Container(
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: Container(
              width: 170,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/cheeseburger.png'),
                    fit: BoxFit.scaleDown),
                color: Colors.transparent,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Cheese Burger',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 150.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.green,
                            ),
                            Text('5.0')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 100.0, top: 3.0),
                        child: Text(
                          "\$2.55",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 176.0, left: 135),
                    child: Container(
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row burgerCardTop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
          elevation: 1,
          child: Container(
            width: 170,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/cheeseburger.png'),
                  fit: BoxFit.scaleDown),
              color: Colors.transparent,
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Cheese Burger',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 150.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Text('5.0')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100.0, top: 3.0),
                      child: Text(
                        "\$2.55",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 176.0, left: 135),
                  child: Container(
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          elevation: 1,
          child: Container(
            width: 170,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/cheeseburger.png'),
                  fit: BoxFit.scaleDown),
              color: Colors.transparent,
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Cheese Burger',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 150.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Text('5.0')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100.0, top: 3.0),
                      child: Text(
                        "\$2.55",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 176.0, left: 13),
                  child: Container(
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Padding populerRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: SizedBox(
        height: 35,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              populerText,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                seeAllText,
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container pizzaCard() {
  return Container(
    width: 180,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(19))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pizza.png'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Text(
          pizzaText,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}

Container friesCard() {
  return Container(
    width: 180,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(19))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fries.png'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Text(
          friesText,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}

Container hamburgerCard() {
  return Container(
    width: 180,
    decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(19))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/hamburger.png'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Text(
          hamburgerText,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

Padding categoryRow() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: SizedBox(
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categoryText,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              seeAllText,
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ),
  );
}

SizedBox searchArea() {
  return SizedBox(
    height: 90,
    child: Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "Search",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
      ),
    ),
  );
}

SizedBox welcomeBackText() {
  return SizedBox(
    height: 44,
    child: Text(
      welcomeText,
      style: TextStyle(
          fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}

SizedBox hiText() {
  return SizedBox(
    height: 20,
    child: Text(
      hiName,
      style: TextStyle(color: Colors.black87),
    ),
  );
}

AppBar appBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: Icon(
      Icons.menu_outlined,
      color: Colors.black,
    ),
    actions: [appBarAvatar()],
  );
}

Padding appBarAvatar() {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.asset(
        'assets/images/avatar.png',
        height: 50,
        width: 50,
        fit: BoxFit.cover,
      ),
    ),
  );
}
