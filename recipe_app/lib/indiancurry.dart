import 'package:flutter/material.dart';

class IndianCurryPage extends StatefulWidget {
  @override
  _IndianCurryPageState createState() => _IndianCurryPageState();
}

class _IndianCurryPageState extends State<IndianCurryPage> {
  String? _selectedCurry;

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
                  "**Indian Curry**",
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
                  value: 'butterchicken',
                  groupValue: _selectedCurry,
                  onChanged: (value) {
                    setState(() {
                      _selectedCurry = value!;
                    });
                  },
                ),
                title: const Text('Butter Chicken'),
                trailing: Image.asset('assets/images/butterchicken.jpg', width: 100, height: 250),
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
                  value: 'daalmakhini',
                  groupValue: _selectedCurry,
                  onChanged: (value) {
                    setState(() {
                      _selectedCurry = value!;
                    });
                  },
                ),
                title: const Text('Daal Makhini'),
                trailing: Image.asset('assets/images/daalmakhini.jpg', width: 100, height: 250),
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
                  value: 'aloogobi',
                  groupValue: _selectedCurry,
                  onChanged: (value) {
                    setState(() {
                      _selectedCurry = value!;
                    });
                  },
                ),
                title: const Text('Aloo Gobi'),
                trailing: Image.asset('assets/images/aloogobi.jpg', width: 100, height: 250),
              ),
            ),
            const SizedBox(height: 25),
            Text(
              _selectedCurry == 'butterchicken'
                  ? "Recipe for Butter Chicken\n\n"
                  "Ingredients:\n"
                  "- 500g chicken (boneless, cut into pieces)\n"
                  "- 2 tbsp butter\n"
                  "- 1 large onion (finely chopped)\n"
                  "- 2 tomatoes (pureed)\n"
                  "- 1 tbsp ginger-garlic paste\n"
                  "- 1 tsp red chili powder\n"
                  "- 1 tsp garam masala\n"
                  "- ½ tsp turmeric powder\n"
                  "- ½ cup cream\n"
                  "- Salt to taste\n"
                  "- Fresh coriander (for garnish)\n\n"
                  "Steps:\n"
                  "1. Marinate chicken with yogurt, red chili powder, turmeric, salt, and garam masala for 1-2 hours.\n"
                  "2. In a pan, melt butter, sauté onions until golden, then add ginger-garlic paste and sauté for 1 minute.\n"
                  "3. Add tomato puree and cook until oil separates. Add the marinated chicken and cook until tender.\n"
                  "4. Stir in cream and cook for 5 minutes, garnish with fresh coriander.\n"
                  "5. Serve with naan or rice."
                  : _selectedCurry == 'daalmakhini'
                  ? "Recipe for Daal Makhani\n\n"
                  "Ingredients:\n"
                  "- 1 cup black lentils (whole urad dal)\n"
                  "- ½ cup kidney beans (rajma)\n"
                  "- 2 tbsp butter or ghee\n"
                  "- 1 onion (finely chopped)\n"
                  "- 1 tomato (pureed)\n"
                  "- 1 tbsp ginger-garlic paste\n"
                  "- 1 tsp cumin seeds\n"
                  "- 1 tsp red chili powder\n"
                  "- 1 tsp garam masala\n"
                  "- ½ tsp turmeric powder\n"
                  "- 1 cup cream\n"
                  "- Salt to taste\n"
                  "- Fresh coriander (for garnish)\n\n"
                  "Steps:\n"
                  "1. Soak lentils and kidney beans overnight. Cook them in a pressure cooker for 4-5 whistles.\n"
                  "2. In a pan, heat butter, add cumin seeds and sauté onions until golden.\n"
                  "3. Add ginger-garlic paste, tomato puree, and cook until the oil separates.\n"
                  "4. Add cooked lentils and beans to the pan, along with red chili powder, garam masala, and salt. Simmer for 30-40 minutes.\n"
                  "5. Stir in cream and cook for an additional 10 minutes. Garnish with coriander.\n"
                  "6. Serve with naan or rice."

                  : _selectedCurry == 'aloogobi'
                  ? "Recipe for Aloo Gobi\n\n"
                  "Ingredients:\n"
                  "- 2 medium potatoes (peeled and diced)\n"
                  "- 1 small cauliflower (cut into florets)\n"
                  "- 2 tbsp oil\n"
                  "- 1 onion (chopped)\n"
                  "- 1 tomato (chopped)\n"
                  "- 1 tbsp ginger-garlic paste\n"
                  "- 1 tsp cumin seeds\n"
                  "- ½ tsp turmeric powder\n"
                  "- 1 tsp coriander powder\n"
                  "- 1 tsp red chili powder\n"
                  "- Salt to taste\n"
                  "- Fresh coriander (for garnish)\n\n"
                  "Steps:\n"
                  "1. Heat oil in a pan, add cumin seeds, and sauté onions until golden.\n"
                  "2. Add ginger-garlic paste, chopped tomato, and cook until soft.\n"
                  "3. Add turmeric powder, coriander powder, red chili powder, and salt. Stir well.\n"
                  "4. Add diced potatoes and cauliflower florets, mix well, and cook covered until tender.\n"
                  "5. Garnish with fresh coriander and serve hot with roti or rice."


                  : "Please select a curry.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
