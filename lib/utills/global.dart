List optionList = [
  {
    'name': 'Hot coffee',
  },
  {
    'name': 'Cold coffee',
  },
  {
    'name': 'Other',
  }
];
List volumList=[
  {
     'volum':'150ml',
  },
  {
    'volum':'200ml',
  },
  {
    'volum':'250ml',
  },
  {
    'volum':'300ml',
  },
  {
    'volum':'350ml',
  },
];
int temp=0;
Map empty={};
List productAddList=[];
double showPrice=0;

List CoffeeList = [
  {
    'name': 'cappuccino Coffee',
    'img': 'assets/img/cappuccino.jpg',
    'price': 300,
    'description': 'A cappuccino is the perfect balance of espresso the structure and the even splitting of all elements into equal thirds. An expertly made cappuccino should be rich, but not acidic and have a mildly sweet flavouring from the milk',
    'Views': '5⭐',
  },
  {
    'name': 'latte Coffee',
    'img': 'assets/img/latte.jpeg',
    'price': 450,
    'description': 'A latte or caffè latte is a milk coffee that boasts a silky layer of foam as a real highlight to the drink. A true latte will be made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
    'Views':'4.2⭐',
  },
  {
    'name': 'Mocha Coffee',
    'img': 'assets/img/mocha.jpeg',
    'price': 320,
    'description': 'Although a mocha is often interpreted differently across the world, the basis is that a shot of espresso is combined with a chocolate powder or syrup, followed by milk or cream. It is a variant of a latte, in the sense that it is often 1/3 espresso and 2/3 steamed milk.',
    'Views':'3.5⭐',
  },
  {
    'name': 'Espresso Coffee',
    'img': 'assets/img/espresso.jpg',
    'price': 650,
    'description': 'As a beverage, espresso is a concentrated form of coffee brewed with high pressure, hot water and finely ground coffee beans. Espresso is thicker than regular coffee and has a layer of “crema” on top, which results from air bubbles mixing with the coffee',
    'Views':'3.2⭐',
  },
  {
    'name': 'Ratio Coffee',
    'img': 'assets/img/ratio.jpeg',
    'price': 950,
    'description': 'According to the Specialty Coffee Association of America, the “golden ratio” is 1:18 – 18 ml of water per gram of coffee. Of course, this ratio depends on your brew method, coffee choice, and personal taste preference. For example, , you would use less water',
    'Views':'4.3⭐',
  },
  {
    'name': 'Cold brew Coffee',
    'img': 'assets/img/cold brew.jpeg',
    'price': 899,
    'description': 'Cold brew coffee is usually made by steeping coffee in water for a number of hours at cold or ambient (room) temperature. This slow, low temp brew makes cold brew taste very different from hot brewing the same type of coffee beans: mild chocolate are common flavor notes.',
    'Views':'4⭐',
  },
  {
    'name': 'Breve Coffee',
    'img': 'assets/img/Breve.jpeg',
    'price': 650,
    'description': 'Breve is a coffee drink made with equal parts espresso and steamed half-and-half. Breves are typically served in a small coffee cup and can be enjoyed hot or poured over ice. This coffee beverage is a popular choice richer, and heavier textured coffee.',
    'Views':'2⭐',
  },
  {
    'name': 'Dalgona Coffee',
    'img': 'assets/img/Dalgona.jpeg',
    'price': 780,
    'description': 'Dalgona coffee, also known as “whipped coffee”, is a coffee drink made by whipping instant coffee, hot water, and sugar with a hand mixer or whisk until it becomes frothy. This mixture is then poured over a glass of cold or hot milk.',
    'Views':'4.5⭐',
  },
  {
    'name': 'Cortado Coffee',
    'img': 'assets/img/Cortado.jpeg',
    'price': 1150,
    'description': 'Cortado coffee consists of two ounces of espresso that are diluted with two ounces of steamed milk. The milk is less foamy and intended to balance out the espressos’ bitterness. This coffee drink is served in a small glass and is typically enjoyed as a mid-morning or mid-afternoon pick-me-up.',
    'Views':'5⭐',
  },
  {
    'name': 'Irish Coffee',
    'img': 'assets/img/Irish.jpg',
    'price': 650,
    'description': 'Irish coffee is a combination of hot coffee, sugar, and Irish whiskey, topped with cream or whipped cream. This coffee drink is served warm and can be enjoyed as an after-dinner drink.',
    'Views':'4.6⭐',
  },
];

List coldCoffeeList = [
  {
    'name': 'Cold brew',
    'img': 'assets/img/Cold brew coffee.jpg',
    'price': 880,
    'description':'Cold brew coffee, also called cold water extraction or cold pressing, is the process of steeping coffee grounds in water at cool temperatures for an extended period.',
    'View':'3.4⭐',
  },
  {
    'name': 'Nitro cold brew ',
    'img': 'assets/img/Nitro cold brew.jpeg',
    'price': 800,
    'description': 'cold brew coffee infused with nitrogen gas. Nitrogen gas is completely safe and has been used in beer varieties like porters and stouts for decades, creamy texture.',
    'View':'2.6⭐',
  },
  {
    'name': 'Frappuccino',
    'img': 'assets/img/Frappuccino.jpg',
    'price': 920,
    'description':' Typically lime or lemon juice is used to add a tart, tangy contrast to the sweetness of the ginger beer.A splash of simple syrup or a flavored liqueur can be added to balance the flavors and enhance the sweetness.',
    'View':'5⭐',
  },
  {
    'name': 'Iced Mochas',
    'img': 'assets/img/iced mochas.jpg',
    'price': 920,
    'description':'Icsed Mochas is a type of cold coffee that is made by blending coffee with ice and milk. They can be made with or without espresso. They can also be made in ...',
    'View':'3.2⭐',
  },
  {
    'name': 'Vietnamese',
    'img': 'assets/img/vietnamese coconut.jpg',
    'price': 1250,
    'description':'Frappuccino is a type of cold coffee that is made by blending coffee with ice and milk. They can be made with or without espresso. They can also be made in ...',
    'View':'1.5⭐',
  },
  {
    'name': 'Banana coffee ',
    'img': 'assets/img/banana coffee.jpg',
    'price': 699,
    'description': 'floral and fruity flavor of bananas and the heady bitterness of coffee, banana coffee is for you. Bananas and peanut butter are a classic combo, so it was no surprise when I saw the TikToker slide a scoop of the nut butter into the blender.',
    'View':'4⭐',
  },
  {
    'name': 'Mazagran',
    'img': 'assets/img/mazagran.jpg',
    'price': 999,
    'description':'Mazagran is prepared with strong,  served in a narrow, tall glass. It has also been described as "coffee taken with water instead of milk", with a separate container of water to mix in with the coffee.',
    'View':'3.5⭐',
  },
  {
    'name': 'Affogato',
    'img': 'assets/img/affogato.jpeg',
    'price': 835,
    'description':'An affogato, which means drowned in Italian, consists of a scoop of vanilla gelato or ice cream drowned with a shot of hot espresso.  creating a delicious blend of creamy and bitter flavors.',
    'View':'2.6⭐',
  },
  {
    'name': ' Shakerato',
    'img': 'assets/img/shakerato.jpeg',
    'price': 780,
    'description':'A shakerato is a classic Italian  shaking sweetened espresso with ice until frothy  invigorating coffee drink,The result is a smooth, slightly creamy, and very cold espresso, often enjoyed as an afternoon pick-me-up.',
    'View':'3.6⭐',
  },
  {
    'name': 'Frappe ',
    'img': 'assets/img/frappé.jpeg',
    'price': 340,
    'description':'A frappé is a popular iced originated in Greece.coffee, water, and sugar until frothy, then adding ice and sometimes milk. The result is a creamy, cold, and refreshing beverage, perfect for hot weather.',
    'View':'3.2⭐',
  },
];
List hotCoffeeList = [
  {
    'name': 'Flat white ',
    'img': 'assets/img/flat white.jpg',
    'price': 230,
    'description':'A Flat White is a coffee prepared with a double milk, topped with a thin layer of milk foamounces (90 millilitres) (120 millilitres) of steamed milk, topped with a thin layer of milk foam. ',
    'View':'4.2⭐',
  },
  {
    'name': 'Cortado ',
    'img': 'assets/img/Cortado.jpeg',
    'price': 1102,
    'description':'A cortado is a coffee made with a small amount of boiled milk and a thin  smooth flavour and creamy, velvety texture.',
    'View':'3⭐',
  },
  {
    'name': 'Red Eye ',
    'img': 'assets/img/Red Eye.jpeg',
    'price': 585,
    'description':'A Red Eye is a coffee made by  It is called a "Red Eye" because the added  is believed to help people stay A Red Eye is typically made with about 8 of espresso.',
    'View':'4.5⭐',
  },
  {
    'name': 'Black Eye',
    'img': 'assets/img/Black Eye.jpeg',
    'price': 150,
    'description':'A Black Eye is a type of  called a "Black Eye" because the added caffeine believed to help people  It is often preferred by those concentrated espresso flavour. ',
    'View':'2.5⭐',
  },
  {
    'name': 'Doppio',
    'img': 'assets/img/Doppio.jpeg',
    'price': 435,
    'description':'A doppio is a  The word "doppio" means "double" in Italian, made with two espresso shots. A doppio coffee ideal for those who need as a "straight shot." ',
    'View':'5.8⭐',
  },
  {
    'name': 'Vienna',
    'img': 'assets/img/Vienna.jpeg',
    'price': 240,
    'description':'A Vienna is a coffee made with an espresso base and whipped cream instead of milk foam. It is called "Vienna" because it is believed to have originated in the Austrian capital city of Vienna. It is similar to a latte, but it is made with whipped cream instead of milk foam, which gives it a lighter, fluffier texture.',
    'View':'5⭐',
  },
  {
    'name': 'London Fog',
    'img': 'assets/img/London Fog.jpeg',
    'price': 155,
    'description':'A London Fog is a coffee made with an Earl Grey tea base and a latte base. It is a creamy, aromatic coffee characterized by its bold, citrusy flavour. A London Fog is made by brewing a cup of Earl Grey tea and adding a shot of espresso to it. It is then topped with steamed milk and a thin layer of milk foam.',
    'View':'4⭐',
  },
  {
    'name': 'French Press',
    'img': 'assets/img/French Press.jpeg',
    'price': 830,
    'description':'A French press is a coffee brewer used to make a full-bodied, strong cup of coffee. It consists of a cylindrical glass with a plunger and a metal or nylon mesh filter. To use a French press, coarsely ground coffee beans are placed in the bank,  is allowed to steep for several minutes. ',
    'View':'3.2⭐',
  },
  {
    'name': 'Golden Latte',
    'img': 'assets/img/Golden Latte.jpeg',
    'price': 90,
    'description': 'A Golden Latte is a coffee made with a latte base, turmeric, ginger, and other spices. It is a creamy, aromatic coffee characterized by its smooth, velvety texture and warm, spicy flavour. A Golden Latte is made with about 3 ounces and a blend of spices, such as turmeric, ginger, cinnamon, and black pepper.',
    'View':'3.5⭐',
  },
  {
    'name': 'Chai Latte',
    'img': 'assets/img/Chai Latte.jpeg',
    'price': 150,
    'description': 'A Chai Latte is a coffee made with a latte base and chai tea concentrate. It is a spicy, aromatic coffee characterized by its bold, full-bodied flavour and smooth, creamy texture. A Chai(90 millilitres) of espresso, of chai tea concentrate.',
    'View':'4.2⭐',
  },
];

List otherList = [
  {
    'name': 'Espresso martini',
    'img': 'assets/img/Espresso martini.jpg',
    'price': 190,
    'description':'This famous coffee cocktail was allegedly invented in the 1980s at the request of a supermodel who asked for “something to wake me up, then fuck me up.” Bartender Dick Bradsell , espresso, and coffee liqueur, and a legend was born.',
    'View':'5⭐',
  },
  {
    'name': 'Prairie Buzz',
    'img': 'assets/img/prairie Buzz.jpeg',
    'price': 285,
    'description': 'Whatever buzz you’re looking for, you’ll find it in this rich and herbaceous drink, which combines Rieger’s Kansas City whiskey, vino chinato, amaretto liqueur, cold-brew coffee, heavy cream, and cinnamon syrup.',
    'View':'3.2⭐',
  },
  {
    'name': 'Mrg Cocktail',
    'img': 'assets/img/death_by_morning_cocktail.jpeg',
    'price': 285,
    'description': 'Whatever buzz you’re looking for, you’ll find it in this rich and herbaceous drink, which combines Rieger’s Kansas City whiskey, vino chinato, amaretto liqueur, cold-brew coffee, heavy cream, and cinnamon syrup.',
    'View':'3⭐',
  },
  {
    'name': 'Cheess cake',
    'img': 'assets/img/cheess cake.jpg',
    'price': 495,
    'description': 'Coffee cheesecake is a decadent dessert that combines the rich flavors of coffee and creamy cheesecake,Typically made from crushed cookies, such as graham crackers or chocolate wafers,  cheese, sugar, eggs, and strong is added for extra depth.',
    'View':'5⭐',
  },
  {
    'name': 'Bean Bark',
    'img': 'assets/img/Bean_bark.jpeg',
    'price': 100,
    'description': 'High-quality dark or milk chocolate, whole roasted coffee beans,Melt the chocolate and spread it evenly on a baking sheet. Sprinkle whole coffee  break it into  serving.It is perfect for coffee lovers and makes for a great homemade gift.',
    'View':'4.9⭐',
  },
  {
    'name': 'Roman Cocktail',
    'img': 'assets/img/Roman_cocktail.jpeg',
    'price': 120,
    'description': 'An Italian apéritif with a slightly bitter, citrusy flavor,Adds a botanical complexity to the drink.Provides a tart, refreshing kick.Balances the flavors with a touch of sweetness.Adds a sparkling finish.',
    'View':'3.2⭐',
  },
  {
    'name': 'Midnight Cocktail',
    'img': 'assets/img/midnight-oil.jpeg',
    'price': 155,
    'description': 'Provides a deep, molasses-like flavor,Adds a smooth coffee taste,Intensifies the coffee notes and adds freshness ,Adds a touch of, and simple syrup in a shaker with ice.',
    'View':'2⭐',
  },
  {
    'name': 'Mousse trifle',
    'img': 'assets/img/Mousse_cup.jpg',
    'price': 300,
    'description': 'The base layer typically consists of ladyfingers or pieces of sponge cake soaked in a coffee syrup or espresso, providing a  with espresso or strong coffee, whipped cream, and mascarpone cheese.',
    'View':'3.4⭐',
  },
  {
    'name': 'Tiramisu Cookies',
    'img': 'assets/img/tiramisu_cookie.jpeg',
    'price': 320,
    'description': 'Tiramisu cookies feature a pronounced coffee flavor, often achieved by incorporating espresso or strong brewed e coffee-soaked mascarpone cheese are emulated in these cookies, ',
    'View':'3.2⭐',
  },
  {
    'name': 'Spark Cocktail',
    'img': 'assets/img/sparkCocktail.jpg',
    'price': 150,
    'description': 'The base of the cocktail, providing a spicy and effervescent kick. Choose a high-quality ginger beer for the best flavor.Adds extra fizz and lightens the drink, creating a refreshing and bubbly texture.',
    'View':'1.5⭐',
  },
];
