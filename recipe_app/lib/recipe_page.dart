import 'package:flutter/material.dart';

// Define the Recipe class
class Recipe {
 final String title;
 final String imageUrl;
 final String details;

 Recipe({required this.title, required this.imageUrl, required this.details});
}

class RecipePage extends StatefulWidget {
 @override
 _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
 Recipe? _selectedRecipe;

 void _showRecipeDialog(List<Recipe> recipes) {
  showDialog(
   context: context,
   builder: (context) {
    return AlertDialog(
     title: Text('Select a Recipe'),
     content: StatefulBuilder(
      builder: (context, setState) {
       return Column(
        mainAxisSize: MainAxisSize.min,
        children: recipes.map((recipe) {
         return RadioListTile<Recipe>(
          title: Text(recipe.title),
          value: recipe,
          groupValue: _selectedRecipe,
          onChanged: (Recipe? value) {
           setState(() {
            _selectedRecipe = value;
           });
           Navigator.pop(context);
          },
         );
        }).toList(),
       );
      },
     ),
    );
   },
  ).then((_) {
   setState(() {});
  });
 }

 @override
 Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(
    title: Text("Indian Food Recipes", style: TextStyle(fontFamily: 'CustomFont')),
    centerTitle: true,
    backgroundColor: Colors.orangeAccent,
   ),
   body: Padding(
    padding: EdgeInsets.all(5),
    child: Column(
     children: <Widget>[
      Padding(
       padding: EdgeInsets.all(10),
       child: Wrap(
        spacing: 25.0, // gap between adjacent chips
        runSpacing: 10.0, // gap between lines
        children: <Widget>[
         TextButton(
          child: Text('BREAD', style: TextStyle(color: Colors.white, fontSize: 13)),
          style: TextButton.styleFrom(backgroundColor: Colors.lightGreen),
          onPressed: () {
           _showRecipeDialog([
            Recipe(title: 'Naan', imageUrl: 'assets/images/naan.jpg', details: 'Delicious Indian bread.'),
            Recipe(title: 'Roti', imageUrl: 'assets/images/chapati.jpg', details: 'Soft and fluffy flatbread.'),
            Recipe(title: 'Puri', imageUrl: 'assets/images/poori.webp', details: 'puri .'),
           ]);
          },
         ),
         TextButton(
          child: Text('CURRY', style: TextStyle(color: Colors.white, fontSize: 13)),
          style: TextButton.styleFrom(backgroundColor: Colors.lightGreen),
          onPressed: () {
           _showRecipeDialog([
            Recipe(title: 'Butter Chicken', imageUrl: 'assets/images/butterchicken.jpg', details: 'Creamy and flavorful.'),
            Recipe(title: 'Paneer Tikka Masala', imageUrl: 'assets/images/daalmakhani.jpg', details: 'Rich and spicy.'),
           ]);
          },
         ),
         TextButton(
          child: Text('SNACK', style: TextStyle(color: Colors.white, fontSize: 13)),
          style: TextButton.styleFrom(backgroundColor: Colors.lightGreen),
          onPressed: () {
           _showRecipeDialog([
            Recipe(title: 'Samosa', imageUrl: 'assets/images/samoosa.jpg', details: 'Crispy and savory.'),
            Recipe(title: 'Pakora', imageUrl: 'assets/images/pakora.jpg', details: 'Crunchy and delicious.'),
           ]);
          },
         ),
         TextButton(
          child: Text('DESSERT', style: TextStyle(color: Colors.white, fontSize: 13)),
          style: TextButton.styleFrom(backgroundColor: Colors.lightGreen),
          onPressed: () {
           _showRecipeDialog([
            Recipe(title: 'Gulab Jamun', imageUrl: 'assets/images/lassi.jpg', details: 'Sweet and syrupy.'),
            Recipe(title: 'Kheer', imageUrl: 'assets/images/jalebi.jpeg', details: 'Rich rice pudding.'),
           ]);
          },
         ),
        ],
       ),
      ),
      if (_selectedRecipe != null) ...[
       SizedBox(height: 20),
       Image.asset(_selectedRecipe!.imageUrl),
       SizedBox(height: 10),
       Text(_selectedRecipe!.details),
      ],
     ],
    ),
   ),
  );
 }
}
