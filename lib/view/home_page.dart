import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TextEditingController taskcontroller=TextEditingController();


  var tasks=[]; 

  void addTask(task){
    tasks.add(task);
    setState(() {
      
    });

  } 
  TextEditingController taskcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading:const Icon(Icons.menu),
        leading:const Icon(
          Icons.person,
          color:Colors.white

        ),
        title: Text("My Profile",style: GoogleFonts.poppins(
          fontWeight:FontWeight.w600 ,
          fontSize: 20,
          color: Colors.white,
          letterSpacing: 1.0

        ),
        ),

      ),
      
      body:



       Stack(
        
        children: [
         ListView.builder(
           itemCount: tasks.length,
           itemBuilder: (context,index){
             return  Text(tasks[index]);
           }
           
         ),


        //Name Section

         Positioned(
           top:40,
            width: MediaQuery.of(context).size.width,
           child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
           children:[ 
                   Text("SPANDANA",style: GoogleFonts.poppins(
                    fontWeight:FontWeight.w500 ,
                    fontSize: 30,
                    color: Colors.black,
                    letterSpacing: 2.0
        ),
        )
           ]
           )

         ),

          // ProfilePhoto section 

         Center(
           heightFactor: 2.9,
           
         child: ClipOval(
                
                child: SizedBox.fromSize(
                
                size:const  Size.fromRadius(60),
                
                child: Image.network('profiles.jpg',
                // width: 900,
                // height: 900, 
                fit: BoxFit.cover,
              
                ),
             ),
                                        
          ),
         ),
          
          
                          
          
          //Information section

          Positioned(
           top:270,
            width: MediaQuery.of(context).size.width,
           child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
           children:[ 
                   Text("Name : SPANDANA",style: GoogleFonts.poppins(
                    fontWeight:FontWeight.w600 ,
                    fontSize: 20,
                    color: Colors.black,
                    letterSpacing: 1.0,
                    wordSpacing: 2.0
                    
        ),
        )
           ]
           )

         ),

         Positioned(
           top:320,
            width: MediaQuery.of(context).size.width,
           child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
           children:[ 
                   Text("Email : spandanashetty2001@gmail.com",style: GoogleFonts.poppins(
                    fontWeight:FontWeight.w600 ,
                    fontSize: 20,
                    color: Colors.black,
                    letterSpacing: 1.0
        ),
        )
           ]
           )

         ),

         Positioned(
           top:370,
            width: MediaQuery.of(context).size.width,
           child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
           children:[ 
                   Text("USN : 4MT19CS160",style: GoogleFonts.poppins(
                    fontWeight:FontWeight.w600 ,
                    fontSize: 20,
                    color: Colors.black,
                    letterSpacing: 1.0
        ),
        )
           ]
           )

         ),

         Positioned(
           top:420,
            width: MediaQuery.of(context).size.width,
           child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
           children:[ 
                   Text("Age : 20",style: GoogleFonts.poppins(
                    fontWeight:FontWeight.w600 ,
                    fontSize: 20,
                    color: Colors.black,
                    letterSpacing: 1.0
        ),
        )
           ]
           )

         ),
          


            //comment section        
          
          Positioned(
            
            bottom:0 ,
            child: Container(
              color: Colors.grey.shade400,
              height: 80,
              width: MediaQuery.of(context).size.width,
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                  children: [
                    Container(
                      height: 50,
                      width:MediaQuery.of(context).size.width-75,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color:Colors.black,
                          width:2.0
                          ),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: TextFormField(
                        controller: taskcontroller ,
                        decoration: const InputDecoration(
                          
                          border:InputBorder.none,hintText: "Add comment",contentPadding: EdgeInsets.all(20.0)
                         ),

                      ),
                    ),
                    InkWell(
                      onTap: (){
                        if(taskcontroller.text.isNotEmpty){
                        addTask(taskcontroller.text);
                        taskcontroller.text="";
                  
                        }
                      },
                      child: Container(
                       height: 50,
                       width: 50,
                       
                       decoration:BoxDecoration(
                         borderRadius: BorderRadius.circular(25),
                         color: Colors.purple,
                        ),
                        child:const Icon(Icons.add_sharp,
                        color: Colors.white)
                      
                    
                    
                      ),
                    )
                  ],
                ),
              )
            ),
          ),
          
        ],
      ),
      
      
    );
  }
}