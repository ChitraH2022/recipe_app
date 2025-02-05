import 'package:flutter/material.dart';

class IndianSnackPage extends StatefulWidget {
  @override
  _IndianSnackPageState createState() => _IndianSnackPageState();
}

class _IndianSnackPageState extends State<IndianSnackPage> {
  String? _selectedSnack;

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
                  "**Indian Snacks**",
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
                  value: 'samossa',
                  groupValue: _selectedSnack,
                  onChanged: (value) {
                    setState(() {
                      _selectedSnack = value!;
                    });
                  },
                ),
                title: const Text('Samossa'),
                trailing: Image.asset('assets/images/samoosa.jpg', width: 100, height: 250),
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
                  value: 'pakora',
                  groupValue: _selectedSnack,
                  onChanged: (value) {
                    setState(() {
                      _selectedSnack = value!;
                    });
                  },
                ),
                title: const Text('Pakora'),
                trailing: Image.asset('assets/images/pakora.jpg', width: 100, height: 250),
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
                  value: 'panipuri',
                  groupValue: _selectedSnack,
                  onChanged: (value) {
                    setState(() {
                      _selectedSnack = value!;
                    });
                  },
                ),
                title: const Text('Pani Puri'),
                trailing: Image.asset('assets/images/panipuri.jpg', width: 100, height: 250),
              ),
            ),
            const SizedBox(height: 25),
            Text(
              _selectedSnack == 'samossa'
                  ? "Recipe for Samosa\n\n"
                  "Ingredients:\n"
                  "- 2 cups all-purpose flour\n"
                  "- 4 tbsp oil or ghee (for dough)\n"
                  "- ½ tsp salt\n"
                  "- Water (as needed for dough)\n"
                  "- 1 tbsp oil (for filling)\n"
                  "- 1 tsp cumin seeds\n"
                  "- 2 boiled potatoes (mashed)\n"
                  "- ½ cup boiled peas\n"
                  "- 1 onion (finely chopped)\n"
                  "- 1 green chili (finely chopped)\n"
                  "- 1 tsp garam masala\n"
                  "- 1 tsp coriander powder\n"
                  "- ½ tsp turmeric powder\n"
                  "- 1 tsp cumin powder\n"
                  "- Salt to taste\n"
                  "- Fresh coriander (chopped, for filling)\n"
                  "- Oil for deep frying\n\n"
                  "Steps:\n"
                  "1. Mix flour, salt, and oil. Gradually add water and knead into a smooth dough. Rest for 30 minutes.\n"
                  "2. Heat oil in a pan, add cumin seeds, then sauté onions, green chilies, and spices until fragrant.\n"
                  "3. Add mashed potatoes and peas, cook for 5 minutes, then add fresh coriander. Let the filling cool.\n"
                  "4. Roll dough into small balls, flatten them, fill with the potato mixture, shape into cones, and seal edges.\n"
                  "5. Heat oil in a pan, deep fry the samosas until golden brown and crispy.\n"
                  "6. Serve hot with mint chutney or tamarind sauce."

                  : _selectedSnack == 'pakora'
                  ? "Recipe for Pakora\n\n"
                  "Ingredients:\n"
                  "- 1 cup besan (chickpea flour)\n"
                  "- 1 small onion (thinly sliced)\n"
                  "- 1 potato (thinly sliced)\n"
                  "- 1-2 green chilies (finely chopped)\n"
                  "- 1 tsp cumin seeds\n"
                  "- ½ tsp turmeric powder\n"
                  "- ½ tsp red chili powder\n"
                  "- 1 tsp garam masala\n"
                  "- Salt to taste\n"
                  "- Fresh coriander (chopped)\n"
                  "- Water (as needed for batter)\n"
                  "- Oil for deep frying\n\n"
                  "Steps:\n"
                  "1. In a bowl, combine besan, cumin, turmeric, red chili powder, garam masala, and salt.\n"
                  "2. Add chopped onions, potatoes, chilies, and coriander. Gradually add water to form a thick batter.\n"
                  "3. Heat oil in a pan, drop spoonfuls of the batter into the hot oil.\n"
                  "4. Deep fry until golden and crispy. Drain excess oil.\n"
                  "5. Serve hot with mint chutney or tamarind sauce."

                  : _selectedSnack == 'panipuri'
                  ? "Recipe for Pani Puri\n\n"
                  "Ingredients for Puri:\n"
                  "- 1 cup semolina (sooji)\n"
                  "- 2 tbsp all-purpose flour\n"
                  "- ¼ tsp baking soda\n"
                  "- A pinch of salt\n"
                  "- Water (as needed)\n"
                  "- Oil for deep frying\n\n"
                  "Ingredients for Pani (Water):\n"
                  "- 1 bunch fresh mint leaves\n"
                  "- 1 bunch fresh coriander leaves\n"
                  "- 2-3 green chilies\n"
                  "- 1 tsp black salt\n"
                  "- 1 tsp roasted cumin powder\n"
                  "- 1 tbsp tamarind pulp\n"
                  "- ½ tsp sugar\n"
                  "- Salt to taste\n"
                  "- Water as needed\n\n"
                  "Ingredients for Filling:\n"
                  "- 1 cup boiled potatoes (mashed)\n"
                  "- 1 cup boiled chickpeas\n"
                  "- 1 tsp chaat masala\n"
                  "- Salt to taste\n\n"
                  "Steps for Puri:\n"
                  "1. Mix semolina, flour, salt, and baking soda. Gradually add water to form a smooth dough.\n"
                  "2. Roll the dough into small balls, flatten, and deep fry until puffed and crispy.\n"
                  "3. Drain excess oil and let them cool.\n\n"
                  "Steps for Pani (Water):\n"
                  "1. Blend mint, coriander, green chilies, black salt, roasted cumin powder, tamarind, sugar, and salt into a smooth paste.\n"
                  "2. Mix the paste with water to get a tangy, spicy water. Adjust salt and sugar as per taste.\n\n"
                  "Steps for Filling:\n"
                  "1. Mix boiled potatoes, chickpeas, chaat masala, and salt.\n"
                  "2. To serve, poke a hole in the puri, fill with the potato mixture, and dip in the pani.\n"
                  "3. Serve immediately and enjoy!"


                  : "Please select a snack.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
