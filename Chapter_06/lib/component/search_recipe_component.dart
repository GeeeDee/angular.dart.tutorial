library search_recipe_component;

import '../service/recipe.dart';
import 'package:angular/angular.dart';

@NgComponent(
    selector: 'search-recipe',
    templateUrl: 'packages/angular_dart_demo/component/search_recipe_component.html',
    cssUrl: 'packages/angular_dart_demo/component/search_recipe_component.css',
    publishAs: 'ctrl',
    map: const {
      'name-filter-string': '<=>nameFilterString',
      'category-filter-map' : '<=>categoryFilterMap'
    }
)
class SearchRecipeComponent {
  String nameFilterString = "";
  Map categoryFilterMap;

  get categories {
    return categoryFilterMap.keys.toList();
  }

  void clearFilters() {
    categoryFilterMap.keys.forEach((f) => categoryFilterMap[f] = false);
    nameFilterString = "";
  }
}