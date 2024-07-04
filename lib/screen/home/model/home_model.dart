class HomeModel {
  String? bodyPart, equipment, name, target, gifUrl;
  int? id;
  List<dynamic>? secondaryMusclesList = [];
  List<dynamic>? instructions = [];

  HomeModel(
      {this.bodyPart,
      this.equipment,
      this.name,
      this.target,
      this.id,
      this.gifUrl,
      this.secondaryMusclesList,
      this.instructions});

  factory HomeModel.mapToModel(Map m1) {
    return HomeModel(
      id: m1['id'],
      name: m1['name'],
      bodyPart: m1['bodyPart'],
      equipment: m1['equipment'],
      target: m1['target'],
      gifUrl: m1['gifUrl'],
      instructions: m1['instructions'],
      secondaryMusclesList: m1['secondaryMusclesList'],
    );
  }
}
