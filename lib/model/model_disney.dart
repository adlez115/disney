class DisneyModel{
  String? name;
  String? sourceUrl;
  String? imageUrl;

  DisneyModel({
    this.name,
    this.sourceUrl,
    this.imageUrl,

  });

  factory DisneyModel.fromMapJson(Map<String,dynamic> data) => DisneyModel(

    name: data['name'],
    sourceUrl: data['sourceUrl'],
    imageUrl: data['imageUrl'],



  );

}