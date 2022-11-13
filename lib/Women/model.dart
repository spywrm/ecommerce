class Model{
  final dynamic name;
  final dynamic price;
  final dynamic image;
  final dynamic text;
  final dynamic color;
  final List<List>? color1 ;
  final List<bool>?checkcolor;
  final List<bool>?checksize;
  Model(
      this.price,
      this.name,
      this.image,
      this.text,
      this.color,
       {
         this.color1=null,
         this.checkcolor=null,
         this.checksize=null,
       }
      ){
  }
}