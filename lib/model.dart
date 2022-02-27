class Data {
   int? id ;
   int? count ;
   String? name ;
   String? description ;

   Data({this.name ,this.id,this.count,this.description});
   factory Data.fromJson(Map<dynamic ,dynamic>json){
     return Data(
       id: json['id'] as int,
       count: json['count'] as int,
       name: json['name'] as String,
       description: json['description'] as String,
     );
   }
}
