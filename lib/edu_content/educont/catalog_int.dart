class CatalogInt {
  static final items = [
    Item(
        name: "TOEFL",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/sat/Master_TOEFL_Vocabulary.pdf"),
    Item(
        name: "IELTS Writing",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/sat/Best+Practice+Book+for+IELTS+Writing+230+IELTS+Writing+Samples+(+PDFDrive+).pdf"),
    Item(
        name: "IELTS Vocabulary ",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/sat/Best+Practice+Book+for+IELTS+Writing+230+IELTS+Writing+Samples+(+PDFDrive+)_compressed.pdf"),
    Item(
        name: "SAT",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/sat/500%2B+Practice+Questions+for+the+New+SAT+(+PDFDrive+)_compressed.pdf"),
    Item(
        name: "GRE",
        url:
            "https://afsha.s3.ap-south-1.amazonaws.com/sat/1608211068Magoosh+GRE+Prep.pdf"),
  ];
}

class Item {
  final String name;
  final String url;

  Item({required this.name, required this.url});
}
