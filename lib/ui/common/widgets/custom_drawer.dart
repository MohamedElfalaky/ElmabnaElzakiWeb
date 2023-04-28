import 'package:flutter/material.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
class CustomDrawer extends StatelessWidget {
 final GlobalKey<ScaffoldState>? scaffoldKey;
  final String currentPage;
  const CustomDrawer({Key? key,this.scaffoldKey,required this.currentPage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    _customItem({required String title,required void Function()? onTap}){
      return   ListTile(
        title:  Text(title,style: ktsTitleText.copyWith(
            color: currentPage==title?kcPrimaryColor:kcSecondaryColor,
            fontSize: 15
        )),
        onTap: title!=currentPage?onTap:null,
      );
    }
    return Drawer(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
           Row(
             children: [
               IconButton(onPressed: (){
                 scaffoldKey!.currentState!.closeDrawer();
               }, icon: Icon(Icons.close)),
             ],
           ),
            _customItem(
              title: "الرئيسية",
              onTap: (){Navigator.pushNamed(context, '/');scaffoldKey!.currentState!.closeDrawer();},
            ),
            _customItem(
              title: "خدماتنا",
              onTap: (){Navigator.pushNamed(context, '/');scaffoldKey!.currentState!.closeDrawer();},
            ),
            _customItem(
              title: "من نحن",
              onTap: (){Navigator.pushNamed(context, '/about-us');scaffoldKey!.currentState!.closeDrawer();},
            ),
            _customItem(
              title: "لماذا نحن",
              onTap: (){Navigator.pushNamed(context, '/why');scaffoldKey!.currentState!.closeDrawer();},
            ),
            _customItem(
              title: "تواصل معنا",
              onTap: (){Navigator.pushNamed(context, '/contact-us');scaffoldKey!.currentState!.closeDrawer();},
            ),
          ],
        ),
      ),
    );
  }
}
