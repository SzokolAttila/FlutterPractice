class Student {
  final int id;
  final String name;
  final List<String> subjects;
  final List<int> grades;

  Student(
      {required this.id, required this.name, required this.subjects, required this.grades});

}

  const List sample_data = [
    {
      "id": 1,
      "name": "Granilla Péter",
      "subjects": ["C#", "Web", "Physics", "Maths"],
      "grades": [2, 5, 4, 3, 1],
    },
    {
      "id": 2,
      "name": "Kovács János",
      "subjects": ["PE", "IKT", "History", "Database"],
      "grades": [1, 3, 5, 2, 4],
    },
    {
      "id": 3,
      "name": "Hajdú Benedek",
      "subjects": ["Literature", "Web", "Grammar", "Linux"],
      "grades": [3, 4, 5, 2, 1],
    },
    {
      "id": 4,
      "name": "Ipacs Péter",
      "subjects": ["Grammar", "Maths", "Literature", "PE"],
      "grades": [2, 1, 3, 5, 4],
    },
  ];

