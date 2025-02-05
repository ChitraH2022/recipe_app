import 'package:flutter/material.dart';

class IndianDessertPage extends StatefulWidget {
  @override
  _IndianDessertPageState createState() => _IndianDessertPageState();
}

class _IndianDessertPageState extends State<IndianDessertPage> {
  String? _selectedDessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indian Food Recipes", style: TextStyle(fontFamily: 'CustomFont')),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                  "**Indian Desserts**",
                  style: TextStyle(fontFamily: 'CustomFont',color: Colors.deepOrange, fontSize: 14)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Radio<String>(
                  value: 'jalebi',
                  groupValue: _selectedDessert,
                  onChanged: (value) {
                    setState(() {
                      _selectedDessert = value!;
                    });
                  },
                ),
                title: const Text('Jalebi'),
                trailing: Image.asset('assets/images/jalebi.jpeg', width: 100, height: 250),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Radio<String>(
                  value: 'barfi',
                  groupValue: _selectedDessert,
                  onChanged: (value) {
                    setState(() {
                      _selectedDessert = value!;
                    });
                  },
                ),
                title: const Text('Barfi'),
                trailing: Image.asset('assets/images/barfi.jpg', width: 100, height: 250),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Radio<String>(
                  value: 'lassi',
                  groupValue: _selectedDessert,
                  onChanged: (value) {
                    setState(() {
                      _selectedDessert = value!;
                    });
                  },
                ),
                title: const Text('Lassi'),
                trailing: Image.asset('assets/images/lassi.jpg', width: 100, height: 250),
              ),
            ),
            const SizedBox(height: 25),
            Text(
              _selectedDessert == 'jalebi'
                  ? "Recipe for Jalebi\n\n"
                  "Ingredients:\n"
                  "- 1 cup all-purpose flour\n"
                  "- 2 tbsp cornflour\n"
                  "- ½ tsp baking soda\n"
                  "- 1 tsp yogurt\n"
                  "- ½ cup water (for batter)\n"
                  "- 1 tbsp ghee (for batter)\n"
                  "- Saffron strands (optional, for color)\n"
                  "- Oil for frying\n"
                  "- 1 cup sugar (for syrup)\n"
                  "- ½ cup water (for syrup)\n"
                  "- 1 tsp rose water (optional)\n\n"
                  "Steps:\n"
                  "1. In a bowl, mix flour, cornflour, baking soda, yogurt, and water to form a smooth batter. Let it rest for 2-3 hours.\n"
                  "2. Heat oil in a deep frying pan. Pour the batter into a piping bag or squeeze bottle.\n"
                  "3. Squeeze the batter in circular shapes into the hot oil and fry until golden and crisp.\n"
                  "4. In a separate pan, make sugar syrup by boiling sugar and water until it thickens. Add rose water and saffron for flavor.\n"
                  "5. Dip the fried jalebis in the warm syrup for a few seconds.\n"
                  "6. Serve hot and enjoy the crispy, syrupy treat!"

                  : _selectedDessert == 'barfi'
                  ? "Recipe for Barfi\n\n"
                  "Ingredients:\n"
                  "- 2 cups full-fat milk powder\n"
                  "- 1 cup condensed milk\n"
                  "- ½ cup milk\n"
                  "- 2 tbsp ghee (clarified butter)\n"
                  "- ½ cup sugar\n"
                  "- ¼ tsp cardamom powder\n"
                  "- Chopped nuts (almonds, pistachios) for garnish\n\n"
                  "Steps:\n"
                  "1. Heat ghee in a pan, add milk and sugar, and bring it to a simmer.\n"
                  "2. Gradually add milk powder and stir continuously to avoid lumps.\n"
                  "3. Cook the mixture on low heat until it thickens and starts to pull away from the pan.\n"
                  "4. Add cardamom powder and mix well.\n"
                  "5. Transfer the mixture to a greased tray, flatten it with a spatula, and garnish with chopped nuts.\n"
                  "6. Let it cool completely, then cut into squares or diamond shapes.\n"
                  "7. Serve and enjoy the delicious homemade barfi!"

                  : _selectedDessert == 'lassi'
                  ? "Recipe for Lassi\n\n"
                  "Ingredients:\n"
                  "- 1 cup yogurt\n"
                  "- ½ cup cold water\n"
                  "- 1 tbsp sugar (or to taste)\n"
                  "- ½ tsp cardamom powder\n"
                  "- Ice cubes (optional)\n"
                  "- Fresh mint leaves (for garnish)\n\n"
                  "Steps:\n"
                  "1. In a blender, combine yogurt, water, sugar, and cardamom powder.\n"
                  "2. Blend until smooth and creamy.\n"
                  "3. Add ice cubes if desired and blend again.\n"
                  "4. Pour into glasses, garnish with mint leaves, and serve chilled."


                  : "Please select a dessert.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
