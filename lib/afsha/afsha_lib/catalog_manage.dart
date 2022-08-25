class CatalogMan {
  static final items = [
    Item(
        name: "English",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/managent/100+golden+rules+of+English+Grammar+%5Bwww.qmaths.in%5D_compressed.pdf"),
    Item(
        name: "Quantitative Aptitude",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/managent/101+QUANT+SHORTCUTS.pdf"),
    Item(
        name: "Reading Comprehension guide for GMAT/CAT",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/managent/RC+for+Gmat_compressed.pdf"),
    Item(
        name: "Current Affairs",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/banking/Current-Affairs-Question-Bank-June-2022.pdf"),
    Item(
        name: "Mathematics",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/managent/HKFMathFundas-5-64_compressed.pdf"),
  ];
}

class Item {
  final String name;
  final String url;

  Item({required this.name, required this.url});
}
