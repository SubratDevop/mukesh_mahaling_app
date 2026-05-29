import 'package:get/get.dart';

class AboutController extends GetxController {
  RxInt expandedIndex = (-1).obs; // track which tile is open
  var isExpanded = false.obs;

  final sections = [
    {
      "title": "Roots & Early Leadership",
      "content":
          "Dr. Mukesh Mahaling was born to two retired teachers, Mr. Miniketan Mahaling and Mrs. Basanta Barik, in western Odisha. As the eldest among four siblings, discipline and responsibility shaped his early life. His leadership qualities emerged during his student days when he became General Secretary of Anchal College Student Union. Later, as Secretary of the SPCB Officers’ Association, he further honed his ability to guide teams and inspire people.",
    },
    {
      "title": "Two Decades as an Environmental Scientist",
      "content":
          "Dr. Mahaling served in the State Pollution Control Board (SPCB), Odisha for 21 years in multiple capacities including Regional Officer at Jharsuguda, Rourkela, and Paradeep. He specialized in environmental monitoring, waste management, environmental impact assessment, and coastal ecosystem management.",
    },
    {
      "title": "Entry into Politics",
      "content":
          "In 2019, Dr. Mahaling joined BJP and transitioned into active politics with a vision to bring organizational strength and cultural values into governance.",
    },
    {
      "title": "Vision & Philosophy",
      "content":
          "He believes that the strength to build a nation comes through organization and that the youth of the 21st century hold the key to India’s future.",
    },
    {
      "title": "Cabinet Minister of Odisha (Since June 12, 2024)",
      "content":
          "Dr. Mahaling has served as Cabinet Minister for Health & Family Welfare, Electronics & IT, and Parliamentary Affairs, spearheading public health campaigns, digital governance initiatives, and legislative efficiency.",
    },
    {
      "title": "Transforming Healthcare",
      "content":
          "As Health Minister, he launched major public health programs, focusing on preventive healthcare, hospital modernization, and accessibility for rural communities.",
    },
  ];

  onExpansionChange(int index, bool expanded) {
    expandedIndex.value = expanded ? index : -1;
  }
}
