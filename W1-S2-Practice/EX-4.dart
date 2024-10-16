void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const order = ['margherita', 'pepperoni', 'pineapple'];
  const order2 = ['margherita', 'pepperoni'];

  // Your code
  print(calculateTotal(order, pizzaPrices));
  print(calculateTotal(order2, pizzaPrices));
}

double calculateTotal(List<String> order, Map<String, double> pizzaPrices) {
  double total = 0.0;
  for (var pizza in order) {
    //pizza here refers to the eelement in order list
    if (pizzaPrices.containsKey(pizza)) {
      total += pizzaPrices[pizza]!;
    } else {
      print('$pizza doesnt exist');
      return 0.0;
    }
  }
  return total;
}
