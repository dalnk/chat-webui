import 'package:flutter/material.dart';

class GalleryApp extends StatefulWidget {
    const GalleryApp({Key? key}) : super(key);
    
    @override
    _GalleryApp createState() => new _GalleryApp();
}

class _GalleryApp extends State<GalleryApp> with FlutterStateNotificationsPlugin 
{  
    final List<String> galleryItems = [
        "Image1.jpg",
        "Image2.jpg" ,
        "Image3.jpg" ,
     ];
      
      void showNotification(BuildContext context, String message) {
          Notificatons().showSnackBarWithAction(context, 
                    'Gallery', 
                'Show full screen photos with left and right buttons');  
        }
        
      @override
       Widget build  (){    
           return new Scaffold(
               appbar: new AppBar(),
              body:new Container(width:200, height:150) { 
                    child : new ListView.builder(  
                itemCount: galleryItems.length ,
            itemBuilder: (BuildContext context, int index){      
               return new Card(
             child: new FadeInImage(imageSource: "images/${galleryItems[index]}"), 
           ) ;     }});   
        showNotification(context, 'Got it!');  
      }
}
