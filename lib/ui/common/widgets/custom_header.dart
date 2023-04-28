import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zah_website/ui/common/app_colors.dart';
import 'package:zah_website/ui/common/shared_styles.dart';
class CustomHeader extends StatelessWidget {
 final String currentPage;
 final GlobalKey<ScaffoldState>? scaffoldKey;
 const CustomHeader({Key? key,required this.currentPage,this.scaffoldKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    _customText(String title,void Function()? onTap){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: InkWell(
          onTap: title!=currentPage?onTap:null,
          child: Text(title,style: ktsTitleText.copyWith(
            color: currentPage==title?kcPrimaryColor:kcSecondaryColor,
            fontSize: 15
          ),),
        ),
      );
    }
    return  ScreenTypeLayout.builder(
      desktop: (_)=> Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
            Image.asset("assets/zahlogo.jpeg",fit: BoxFit.fill),
            Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
              _customText("الرئيسية",(){ Navigator.pushNamed(context, '/');}),
              _customText("خدماتنا",(){ Navigator.pushNamed(context, '/');}),
              _customText("من نحن",(){ Navigator.pushNamed(context, '/about-us');}),
              _customText("لماذا نحن",(){ Navigator.pushNamed(context, '/why');}),
              _customText("تواصل معنا",(){ Navigator.pushNamed(context, '/contact-us');}),
            ],)
          ]),
        ),
      ),
      mobile:(_)=> Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Image.asset("assets/zahlogo.jpeg",fit: BoxFit.fill),
            IconButton(onPressed: (){
              scaffoldKey!.currentState!.openDrawer();
            }, icon: Icon(Icons.menu))
          ]),
        ),
      ),
    );
  }
}
