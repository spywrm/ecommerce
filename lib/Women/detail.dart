import 'package:flutter/material.dart';

class Detail extends StatefulWidget {

  final List<List> listall;

  final dynamic i;
  final dynamic index;

  Detail(this.listall, this.i, this.index);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {


  List<String> Size = ["S","M","L","XL"];
  var i;
  var index;
  dynamic amount=0;
  void initState() {
    x();
    super.initState();
  }
  void x(){
   setState(() {
     i = widget.i;
     index=widget.index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(widget.listall[i][index].color),
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {}),
        actions: [
          IconButton(
              icon: Icon(Icons.search_sharp, color: Colors.black),
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
              onPressed: () {}),
        ],
      ),
      backgroundColor: Color(widget.listall[i][index].color),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  child: Image(
                    image: AssetImage(
                        "${widget.listall[i][index].image}"),
                    width: 300,
                    height: 300,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45, bottom: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Text(
                        "${widget.listall[i][index].name}",
                        style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                        "THB ${widget.listall[i][index].price}",
                        style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45),
            child: Row(
              children: [
                Expanded(child: Text(
                    "${widget.listall[i][index].text}")),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              SizedBox(width: 45,),
              for(int r = 0; r < widget.listall[i][index].color1.length; r++)
                widget.listall[i][index].checkcolor[r] == true ?
                colortrue(r): colorfalse(r)
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 45,),
              for(int r = 0; r < widget.listall[i][index].checksize.length; r++)
                widget.listall[i][index].checksize[r] == true ?
                    sizetrue(r):sizefalse(r),
              quantity(),
            ],
          ),
          SizedBox(height:10),
          for(int r = 0; r < widget.listall[i][index].checkcolor.length; r++)
            for(int c = 0; c < widget.listall[i][index].checksize.length; c++)
              if( widget.listall[i][index].checkcolor[r] == true&&widget.listall[i][index].checksize[c]==true)
                      Additem(r,c),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Expanded(child: Buy()),
                Expanded(child: AddCart())
            ],
          ),
        ],
      ),
    );
  }
  Widget AddCart(){
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 45),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: (){},
        child: Container(
          alignment: Alignment.center,
          width: 120,
          height: 45,
          decoration: BoxDecoration(
            color: Color(0xffe6e6ff),
            border: Border.all(
              color: Colors.black87,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text("Add",style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
  Widget Buy(){
    return Padding(
      padding: const EdgeInsets.only(left:45, right: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: (){},
        child: Container(
          alignment: Alignment.center,

          width: 120,
          height: 45,
          decoration: BoxDecoration(
            color: Color(0xffccccff),
            border: Border.all(
              color: Colors.black87,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text("Buy",style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }

  Widget Additem(int r,int c){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: (){
            setState(() {
              amount--;
              if(amount<0){
                amount=0;
              }
            });
          },
          child: Container(
            width: 30,
            height: 30,
              child: Icon(Icons.remove)
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 30,
          width: 30,
          child: Text("${amount}"),
        ),
        InkWell(
          onTap: (){
            setState(() {
              if(amount<widget.listall[i][index].color1[r][c+1]){
              amount++;
               }
            });
          },
          child: Container(
            width: 30,
            height: 30,
              child: Icon(Icons.add)
          ),
        )

      ],
    );
  }

  Widget quantity(){
    return Row(

      children: [
        Text("QUANTITY : ",style: TextStyle(fontWeight: FontWeight.bold)),
        for(int r = 0; r < widget.listall[i][index].checkcolor.length; r++)
          for(int c = 0; c < widget.listall[i][index].checksize.length; c++)
           if( widget.listall[i][index].checkcolor[r] == true&&widget.listall[i][index].checksize[c]==true)
             Text("${widget.listall[i][index].color1[r][c+1]}"),
      ],
    );
  }

  Widget colorfalse(int r) {
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: (){
            setState(() {
              for(int r = 0; r < widget.listall[i][index].color1.length; r++){
                widget.listall[i][index].checkcolor[r] = false;
              }
              widget.listall[i][index].checkcolor[r] = true;
            });
          },
          child: Container(
            height: 50,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black54,
                width: 1,
              ),
              color: Color(widget.listall[i][index].color1[r][0]),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        SizedBox(width: 8,)
      ],
    );
  }

  Widget colortrue(int r) {
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            height: 50,
            width: 70,
            decoration: BoxDecoration(
              color: Color(widget.listall[i][index].color1[r][0]),
              border: Border.all(
                color: Colors.black87,
                width: 2.3,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        SizedBox(width: 8),
      ],
    );
  }

  Widget sizetrue(int r){
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black87,
                width: 2.3,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(Size[r],style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
        SizedBox(width: 8),
      ],
    );
  }

  Widget sizefalse(int r){
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: (){
            setState(() {
              for(int r = 0; r < widget.listall[i][index].checksize.length; r++){
                widget.listall[i][index].checksize[r] = false;
              }
              widget.listall[i][index].checksize[r] = true;
            });
          },
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black87,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(Size[r],style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),

        SizedBox(width: 8,)
      ],
    );
  }
}
