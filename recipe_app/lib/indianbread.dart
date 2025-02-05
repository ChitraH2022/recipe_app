import 'package:flutter/material.dart';

class IndianBreadPage extends StatefulWidget {
  @override
  _IndianBreadPageState createState() => _IndianBreadPageState();
}

class _IndianBreadPageState extends State<IndianBreadPage> {
  String? _selectedBread;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indian Food Recipes", style: TextStyle(fontFamily: 'CustomFont')),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "**Indian Breads**",
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
                  value: 'naan',
                  groupValue: _selectedBread,
                  onChanged: (value) {
                    setState(() {
                      _selectedBread = value!;
                    });
                  },
                ),
                title: const Text('Naan'),
                trailing: Image.asset('assets/images/naan.jpg', width: 100, height: 250),
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
                  value: 'faratha',
                  groupValue: _selectedBread,
                  onChanged: (value) {
                    setState(() {
                      _selectedBread = value!;
                    });
                  },
                ),
                title: const Text('Faratha'),
                trailing: Image.asset('assets/images/chapati.jpg', width: 100, height: 250),
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
                  value: 'puri',
                  groupValue: _selectedBread,
                  onChanged: (value) {
                    setState(() {
                      _selectedBread = value!;
                    });
                  },
                ),
                title: const Text('Puri'),
                trailing: Image.asset('assets/images/poori.webp', width: 100, height: 250),
              ),
            ),
            const SizedBox(height: 25),
            Text(
              _selectedBread == 'naan'
                  ? "Recipe for Naan\n\n"
                  "Ingredients:\n"
                  "- 2 cups flour\n"
                  "- ½ tsp salt, sugar, baking powder\n"
                  "- ¼ cup yogurt, warm milk\n"
                  "- ½ tsp oil/butter\n"
                  "- Water as needed\n\n"
                  "Steps:\n"
                  "1. Mix dry ingredients, add yogurt, milk, and oil. Knead into soft dough. Rest for 1-2 hours.\n"
                  "2. Divide dough into balls, roll into oval shapes.\n"
                  "3. Heat a pan, cook naan until bubbles form, flip, and cook the other side.\n"
                  "4. Brush with butter/ghee and serve hot."
                  : _selectedBread == 'puri'
                  ? "Recipe for Puri\n\n"
                  "Ingredients:\n"
                  "- 2 cups wheat flour\n"
                  "- ½ tsp salt\n"
                  "- Water (as needed)\n"
                  "- Oil for deep frying\n\n"
                  "Steps:\n"
                  "1. Mix flour, salt, and water to form a stiff dough.\n"
                  "2. Roll into small circles.\n"
                  "3. Deep fry in hot oil until puffed and golden brown.\n"
                  "4. Drain excess oil and serve hot."
                  : _selectedBread == 'faratha'
                  ? "Recipe for Aloo Paratha\n\n"
                  "Ingredients:\n"
                  "- 2 cups whole wheat flour (atta)\n"
                  "- ½ tsp salt\n"
                  "- ¾ cup water (adjust as needed)\n"
                  "- 1 tbsp oil or ghee (for dough)\n"
                  "- Ghee or butter (for cooking)\n\n"
                  "Filling:\n"
                  "- 2 medium potatoes (boiled & mashed)\n"
                  "- 1 green chili (finely chopped)\n"
                  "- ½ tsp salt\n"
                  "- ½ tsp cumin powder\n"
                  "- ½ tsp garam masala\n"
                  "- 2 tbsp chopped coriander\n\n"
                  "Steps:\n"
                  "1. Mix flour, salt, and water to form a soft dough. Knead well and let it rest for 20-30 minutes.\n"
                  "2. In a bowl, mix mashed potatoes with spices and coriander to prepare the filling.\n"
                  "3. Divide dough into balls, roll out, place the filling in the center, seal, and roll again.\n"
                  "4. Cook on a hot pan, flipping and applying ghee until golden brown.\n"
                  "5. Serve hot with yogurt, pickle, or butter."

                  : "",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
