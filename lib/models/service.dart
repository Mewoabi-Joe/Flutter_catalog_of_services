class Service{
  String serviceImagePath;
  String title;
  String description;

  Service({required this.description, required this.serviceImagePath, required this.title});

  @override
  String toString() {
    return 'Service{serviceImagePath: $serviceImagePath, title: $title, description: $description}';
  }
}