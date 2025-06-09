
sealed class MenuFoodEvent {
  const MenuFoodEvent();
}

class MenuFoodLoadEvent extends MenuFoodEvent {
  const MenuFoodLoadEvent();
}
class MenuFoodGetAllEvent extends MenuFoodEvent {
  const MenuFoodGetAllEvent();
}

class MenuFoodDeleteEvent extends MenuFoodEvent {
  const MenuFoodDeleteEvent(this.foodId);
  final String foodId;
}


