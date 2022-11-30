class CatalogUPSC {
  static final items = [
    Item(
        name: "Prelims Guide",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/upse/July-week-25-30-2022_compressed.pdf"),
    Item(
        name: "Environmental Studies",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/upse/INSTA-PT-2022-Exclusive-Environment_compressed.pdf"),
    Item(
        name: "History",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/upse/INSTA-Mains-2022-Exclusive-Disaster-Management.pdf"),
    Item(
        name: "Aptitude",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/upse/INSTA-JUNE-2022-Mindmaps-Compilation-PDF.pdf"),
    Item(
        name: "Current Affairs",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/upse/Insights-PT-2017-Exclusive_new.pdf"),
  ];
}

class Item {
  final String name;
  final String url;

  Item({required this.name, required this.url});
}
