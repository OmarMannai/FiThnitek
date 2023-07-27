class Livreur {
  final String fullName;
  final String route;
  final double maxWeight;
  final int vehicule;
  final String time;
  final String date;
  final String imageUrl;
  final int id;

  Livreur(
      {required this.fullName,
      required this.route,
      required this.maxWeight,
      required this.vehicule,
      required this.time,
      required this.date,
      required this.imageUrl,
      required this.id
      });
}

List<Livreur> allLivreur = [
  Livreur(
      id:1,
      fullName: 'Mannai Omar',
      route: 'Ariana -> Tunis',
      maxWeight: 70,
      vehicule: 0,
      time: '3:00',
      date: '17/5/2023',
      imageUrl:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
  Livreur(
      id: 2,
      fullName: 'Mannai Omar',
      route: 'Ariana -> Tunis',
      maxWeight: 30,
      vehicule: 1,
      time: '3:00',
      date: '17/5/2023',
      imageUrl:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
  Livreur(
      id: 3,
      fullName: 'Mannai Omar',
      route: 'Ariana -> Tunis',
      maxWeight: 30,
      vehicule: 3,
      time: '3:00',
      date: '17/5/2023',
      imageUrl:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
  Livreur(
      id:4,
      fullName: 'Mannai Omar',
      route: 'Ariana -> Tunis',
      maxWeight: 90,
      vehicule: 2,
      time: '3:00',
      date: '17/5/2023',
      imageUrl:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
];

class Colis {
  final String fullName;
  final String route;
  final double aproxWeight;
  final List<String> type;
  final double price;
  final String date;
  final List<String> imageUrl;

  Colis(
      {required this.fullName,
      required this.route,
      required this.aproxWeight,
      this.type = const ['glass', 'liquid'],
      required this.price,
      required this.date,
      required this.imageUrl});
}

List<Colis> allColis = [
  Colis(
      fullName: 'Omar Mannai',
      route: 'Ariana -> Tunis',
      aproxWeight: 50,
      price: 18,
      date: '17/05/2023',
      imageUrl: [
        'https://images.unsplash.com/photo-1577702312572-5bb9328a9f15?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGNvbGlzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1577705998148-6da4f3963bc8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Y29saXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1631010231130-5c7828d9a3a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbGlzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
      ]),
  Colis(
      fullName: 'Omar Mannai',
      route: 'Ariana -> Tunis',
      aproxWeight: 50,
      price: 18,
      date: '17/05/2023',
      imageUrl: [
        'https://images.unsplash.com/photo-1577702312572-5bb9328a9f15?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGNvbGlzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1577705998148-6da4f3963bc8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Y29saXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1631010231130-5c7828d9a3a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbGlzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
      ]),
  Colis(
      fullName: 'Omar Mannai',
      route: 'Ariana -> Tunis',
      aproxWeight: 50,
      price: 18,
      date: '17/05/2023',
      imageUrl: [
        'https://images.unsplash.com/photo-1577702312572-5bb9328a9f15?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGNvbGlzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1577705998148-6da4f3963bc8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Y29saXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1631010231130-5c7828d9a3a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbGlzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
      ]),
  Colis(
      fullName: 'Omar Mannai',
      route: 'Ariana -> Tunis',
      aproxWeight: 50,
      price: 18,
      date: '17/05/2023',
      imageUrl: [
        'https://images.unsplash.com/photo-1577702312572-5bb9328a9f15?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGNvbGlzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1577705998148-6da4f3963bc8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Y29saXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1631010231130-5c7828d9a3a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbGlzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
      ]),
  Colis(
      fullName: 'Omar Mannai',
      route: 'Ariana -> Tunis',
      aproxWeight: 50,
      price: 18,
      date: '17/05/2023',
      imageUrl: [
        'https://images.unsplash.com/photo-1577702312572-5bb9328a9f15?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGNvbGlzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1577705998148-6da4f3963bc8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Y29saXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1631010231130-5c7828d9a3a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbGlzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
      ]),
];

List <Livreur> notifications =[
  Livreur(
      id: 1,
      fullName: 'Mannai Omar',
      route: 'Ariana -> Tunis',
      maxWeight: 30,
      vehicule: 1,
      time: '3:00',
      date: '17/5/2023',
      imageUrl:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
  Livreur(
      id:2,
      fullName: 'Mannai Omar',
      route: 'Ariana -> Tunis',
      maxWeight: 30,
      vehicule: 3,
      time: '3:00',
      date: '17/5/2023',
      imageUrl:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
  Livreur(
      id : 3,
      fullName: 'Mannai Omar',
      route: 'Ariana -> Tunis',
      maxWeight: 90,
      vehicule: 2,
      time: '3:00',
      date: '17/5/2023',
      imageUrl:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),

];
