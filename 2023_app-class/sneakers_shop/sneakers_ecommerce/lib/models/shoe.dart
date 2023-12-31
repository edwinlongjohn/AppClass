class Shoe {
  final String name;
  final String price;
  final String imagePath;
  final String description;
  final String rating;
  final int color;

  Shoe({
    required this.name,
    required this.price,
    required this.imagePath,
    this.description= '',
    this.rating = '',
    this.color = 0,
    
  });
}
