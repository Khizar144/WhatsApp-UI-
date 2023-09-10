class User {
  String name;
  String img;
  String lastSeen;

  User({
    required this.name,
    required this.img,
    required this.lastSeen,
  });

  static List<User> userList = [
    User(name: 'Khizar', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Rizwan', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Zakir', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Hassan', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Shakir', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Muneer', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Zamin', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'ALi', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Haris', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Rehan', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Khizar', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Khizar', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Khizar', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Khizar', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Khizar', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Khizar', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Khizar', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Khizar', img: 'img', lastSeen: '44 imn ago'),
    User(name: 'Khizar', img: 'img', lastSeen: '44 imn ago'),
  ];

  static get user => userList;
}
