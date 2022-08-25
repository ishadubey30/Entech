class CatalogEng {
  static final items = [
    Item(
        name: "CS/IT",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/pg+eng/DBMS+exercises_merged_compressed-1-135.pdf"),
    Item(
        name: "Mechanical",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/pg+eng/Machine+Design_merged_compressed+(1)-1-194.pdf"),
    Item(
        name: "Electronic Communication",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/pg+eng/ECE-Formula-Sheet-PDF.pdf"),
    Item(
        name: "Civil",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/pg+eng/GATE+Electrical+-+R+K+Kanodia_compressed-5-192.pdf"),
    Item(
        name: "Electrical",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/pg+eng/Electrical_Circuit_Theory_and_Technology-6-147.pdf"),
  ];
}

class Item {
  final String name;
  final String url;

  Item({required this.name, required this.url});
}
