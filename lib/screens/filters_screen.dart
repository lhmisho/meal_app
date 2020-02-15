import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filter-screen';
  final Function saveFilters;
  final Map<String, bool> initFilters;

  FiltersScreen(this.initFilters, this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _isGlutenFree = false;
  bool _isVagetarian = false;
  bool _isVegan = false;
  bool _isLactoseFree = false;

  @override
  void initState() {
    // TODO: implement initState
    _isGlutenFree = widget.initFilters['isGlutin'];
    _isLactoseFree = widget.initFilters['isLactose'];
    _isVegan = widget.initFilters['isVegan'];
    _isVagetarian = widget.initFilters['isVagetarian'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'isGlutin': _isGlutenFree,
                'isLactose': _isLactoseFree,
                'isVegan': _isVegan,
                'isVagetarian': _isVagetarian
              };
              widget.saveFilters(selectedFilters);
            },
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Adjust your meal selection',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildSwitchTile(
                    'Glutin free',
                    'Only glutin-free meals!',
                    _isGlutenFree,
                    (val) {
                      setState(
                        () {
                          _isGlutenFree = val;
                        },
                      );
                    },
                  ),
                  _buildSwitchTile(
                    'Vegetarian',
                    'Only vageterian meals!',
                    _isVagetarian,
                    (val) {
                      setState(
                        () {
                          _isVagetarian = val;
                        },
                      );
                    },
                  ),
                  _buildSwitchTile(
                    'Lactose free',
                    'Only lactose free meals!',
                    _isLactoseFree,
                    (val) {
                      setState(
                        () {
                          _isLactoseFree = val;
                        },
                      );
                    },
                  ),
                  _buildSwitchTile(
                    'Vegetarian',
                    'Only Vean meals!',
                    _isVegan,
                    (val) {
                      setState(
                        () {
                          _isVegan = val;
                        },
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchTile(
    String title,
    String subTitle,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      value: currentValue,
      onChanged: updateValue,
    );
  }
}
