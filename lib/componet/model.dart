
class Productmodels {
   final String? name;
 final double? price;
  final String? description;
final  String? brands; 



  
  Productmodels(
      { this.name,
       this.price,
      this.description,
     this.brands}); 

// "name": "test",
//             "description": "This is the description to product 1",
//             "price": 250,
//             "brand": "Brand 1"


  factory Productmodels.fromJson(jsonData) {
    return Productmodels(
      name: jsonData["name"],
      price: jsonData["price"],
      description: jsonData["description"],
      brands: jsonData["brand"],
    );
  }
}
