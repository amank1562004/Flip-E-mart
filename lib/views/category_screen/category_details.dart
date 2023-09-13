import 'package:flip_app/consts/consts.dart';
import 'package:flip_app/views/category_screen/item_details.dart';
import 'package:flip_app/widgets_common/bg_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CategoryDetails extends StatelessWidget{
  final String? title;
  const CategoryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) => "Body Clothing".text.size(12).fontFamily(semibold).color(darkFontGrey).makeCentered().box.white.roundedSM.size(110, 60).margin(const EdgeInsets.symmetric(horizontal: 4)).make()),
                ),
              ),

            //  item container

              20.heightBox,
              Expanded(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 250, mainAxisSpacing: 8, crossAxisSpacing: 8),
                    itemBuilder: (context,index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imgP5, width: 200, height: 150, fit: BoxFit.cover,
                          ),
                          10.heightBox,
                          "Laptop 4Gb/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                          10.heightBox,
                          "\$600".text.color(redColor).fontFamily(bold).size(16).make(),
                        ],
                      ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.outerShadowSm.padding(const EdgeInsets.all(12)).make().onTap(() {
                        Get.to(()=>ItemDetails(title: "Dummy item"));
                      });
                    }
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}