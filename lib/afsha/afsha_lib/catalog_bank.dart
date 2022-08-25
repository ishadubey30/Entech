class CatalogBank {
  static final items = [
    Item(
        name: "Aptitude",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/banking/coding-decoding-a7c612de_compressed.pdf"),
    Item(
        name: "English",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/banking/english+bank.pdf"),
    Item(
        name: "Syllogim",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/banking/lr_syllogism-34e24fe4.pdf"),
    Item(
        name: "Current Affairs",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/banking/Monthly-Current-Affairs-GK-Digest-June-2022.pdf"),
    Item(
        name: "Mathematics",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/managent/300+HIGH+LEVEL+DI+SUMS_compressed.pdf"),
  ];
}

class Item {
  String name;
  String url;

  Item({required this.name, required this.url});
}
