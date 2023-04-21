class Food {
  Food({
    this.foodName = '',
    this.foodImage = '',
    // this.foodMaker = '',
    this.description = '',
    // this.startColor,
    // this.endColor
  });

  String foodName;
  String foodImage;
  String description;
  // String foodMaker;
  // Color? startColor;
  // Color? endColor;
}

var foods = [
  Food(
    foodName: 'Burger',
    foodImage: 'burger01.jpg',
    // foodMaker: 'Foodie Yuki',
    description:
        'Introducing the Classic American Burger - a culinary masterpiece that features a juicy, flame-grilled beef patty, fresh lettuce, ripe tomatoes, and sliced red onions, topped with melted cheese, tangy pickles, ketchup, mustard, and mayo, all nestled between a toasted sesame seed bun. Every bite is a symphony of flavors and textures, with the tender beef, crisp veggies, and creamy condiments creating the perfect balance of savory, tangy, and sweet. A timeless classic beloved by foodies and burger enthusiasts, the Classic American Burger is the ultimate comfort food experience that will leave you craving for more.',
    // startColor: const Color(0xFFF37552),
    // endColor: const Color(0xFFF58B5A),
  ),
  Food(
    foodName: 'Donut',
    foodImage: 'donut01.jpg',
    // foodMaker: 'Angela Boggiano',
    description:
        'Introducing the Irresistible Donut! This sweet treat is a true delight for the senses, with its golden-brown, perfectly fried dough that\'s soft and fluffy on the inside, and crispy on the outside. The aroma of freshly baked donuts wafts through the air, instantly tantalizing your taste buds. The donut is then coated in a luscious glaze or dusted with powdered sugar, adding a touch of sweetness and a hint of decadence. With a wide array of flavors and toppings to choose from, including classic options like chocolate, vanilla, or strawberry, or creative twists like maple bacon, matcha, or lemon lavender, there\'s a donut for every palate. Each bite is a heavenly experience, as you sink your teeth into the melt-in-your-mouth dough and relish the burst of flavors. Whether you\'re enjoying it with a cup of coffee in the morning or as an afternoon treat, the Irresistible Donut is a beloved indulgence that brings joy to every bite. Bite into a sugary sensation with the Irresistible Donut - a timeless classic that\'s sure to satisfy your sweet tooth and leave you craving for more.',
    // startColor: const Color(0xFFaf781d),
    // endColor: const Color(0xFFd6a651),
  ),
  Food(
    foodName: 'Fries',
    foodImage: 'fries01.jpg',
    // foodMaker: 'Cassie Best',
    description:
        'Introducing the Crispy Fries! These golden delights are a timeless classic that are loved by people of all ages. Made from perfectly cut and fried potatoes, the Crispy Fries are the epitome of comfort food. They boast a tantalizing crunch on the outside and a fluffy interior, creating a satisfying texture that keeps you coming back for more. Seasoned with just the right amount of salt, these fries are a savory treat that\'s perfect on their own or as a side dish. Whether you like them thin and crispy, thick and hearty, or loaded with toppings like cheese, gravy, or chili, the Crispy Fries are a delicious indulgence that\'s hard to resist. They\'re perfect for a quick snack, a side to your favorite burger or sandwich, or even as a standalone treat. Bite into the crispy perfection of these golden fries and experience the comfort and satisfaction of this timeless classic - a true staple in the world of comfort food.',
    // startColor: const Color(0xFFa1783c),
    // endColor: const Color(0xFFf3dc37),
  ),
  Food(
    foodName: 'Hot Dog',
    foodImage: 'hot-dog04.jpg',
    // foodMaker: 'Jennifer Joyce',
    description:
        'Introducing the Classic Hot Dog! This beloved American staple is a delicious treat that\'s perfect for any occasion. It starts with a plump, juicy frankfurter nestled in a soft, fluffy bun. The hot dog is cooked to perfection, with a slight snap when you bite into it, releasing its savory flavors. Topped with a generous drizzle of ketchup and mustard, and optionally adorned with diced onions, sauerkraut, or relish, the Classic Hot Dog is a symphony of flavors that will transport you to a summer barbecue or a ballpark. It\'s a handheld delight that\'s easy to enjoy on the go or at a casual gathering with friends and family. Bite into this timeless classic and savor the quintessential taste of Americana with the Classic Hot Dog - a simple yet delicious indulgence that\'s sure to satisfy your cravings.',
    // startColor: const Color(0xFFe18b41),
    // endColor: const Color(0xFFc7c73d),
  ),
  Food(
    foodName: 'Pizza',
    foodImage: 'pizza03.jpg',
    // foodMaker: 'Marianne Turner',
    description:
        'Introducing the Heavenly Margherita Pizza! This iconic Italian classic is a true masterpiece, with a thin, crispy crust that\'s hand-tossed to perfection and topped with a rich tomato sauce made from ripe San Marzano tomatoes, fragrant basil, and savory garlic. Generous dollops of creamy mozzarella cheese are then scattered over the sauce, melting into a gooey, golden perfection in the oven. The final touch is a drizzle of high-quality extra-virgin olive oil that adds a burst of flavor and richness. The combination of the crispy crust, tangy tomato sauce, creamy cheese, and aromatic basil creates a symphony of flavors that will transport your taste buds straight to the streets of Naples. Whether you\'re enjoying it at a cozy pizzeria or savoring it at home, the Margherita Pizza is a culinary delight that embodies the essence of Italian cuisine. Bite into a slice of pizza paradise with the Heavenly Margherita Pizza - a timeless classic that will tantalize your senses and leave you craving for more.',
    // startColor: const Color(0xFF621e14),
    // endColor: const Color(0xFFd13b10),
  ),
  Food(
    foodName: 'Sandwich',
    foodImage: 'sandwich02.jpg',
    // foodMaker: 'Esther Clark',
    description:
        'Introducing the Exquisite Sandwich! This culinary masterpiece features fresh bread filled with an array of delectable fillings, from thinly sliced deli meats to cheeses, crisp vegetables, and flavorful spreads. Customizable to suit any taste, the Delightful Sandwich is a symphony of flavors and textures that come together in perfect harmony. Perfect for a quick and satisfying lunch or a hearty meal on the go, this timeless classic satisfies your hunger and pleases your taste buds. Bite into a symphony of flavors with the Delightful Sandwich - a culinary delight that\'s sure to impress and leave you craving for more.',
    // startColor: const Color(0xFF9a9d9a),
    // endColor: const Color(0xFFb9b2b5),
  ),
];
