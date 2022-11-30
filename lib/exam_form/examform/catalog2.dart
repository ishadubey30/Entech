class CatalogModel {
  static final items = [
    Item(
      name: "GATE",
      des:
          "The Joint Entrance Examination, JEE (Main) comprises two papers. Paper 1 is conducted for admission to Undergraduate Engineering Programs (B.E/B.Tech.) at NITs, IIITs, other Centrally Funded Technical Institutions (CFTIs), Institutions/Universities funded/recognized by participating State Governments. JEE (Main) is also an eligibility test for JEE (Advanced), which is conducted for admission to IITs. Paper 2 is conducted for admission to B. Arch and B. Planning courses in the Country.",
      image: "https://career.webindia123.com/career/options/images/gate.jpg",
      price: "₹400",
    ),
    Item(
      name: "NEET PG",
      des:
          "JEE Advanced (formerly known as IIT JEE) is the second phase of the JEE examination and is usually conducted after the JEE Main exam. It is an important test for engineering aspirants (especially for those who are seeking admission in premier engineering institutes such as IITs). JEE Advanced is a computer-based exam and is usually conducted by seven different Indian IITs (IIT Kharagpur, IIT Bombay, IIT Roorkee, IIT Madras, IIT Kanpur, IIT Delhi and IIT Guwahati) on a rotational basis.",
      image:
          "https://d2cyt36b7wnvt9.cloudfront.net/exams/wp-content/uploads/2021/11/04190223/NEET-PG.png",
      price: "₹700",
    ),
    Item(
      name: "DU JAT",
      des:
          "NATIONAL ELIGIBILITY CUM ENTRANCE TEST [ NEET (UG) – 2022] will be conducted by National Testing Agency (NTA) on Sunday, the 17 July 2022 (Sunday) in Pen and Paper mode in 13 languages, as a uniform entrance examination for admission to MBBS/BDS/BAMS/BSMS/BUMS/BHMS and other undergraduate medical courses in approved/recognized Medical/Dental /AYUSH and other Colleges/ Deemed Universities /Institutes (AIIMS & JIPMER) in India, as per Section 14 of The National Medical Commission (NMC) Act, 2019 and relevant Graduate Medical Education Regulations (GMER) 1997, as amended from time to time. The languages in which the NEET (UG) 2022 would be conducted are : English, Hindi, Assamese, Bengali, Gujarati, Kannada, Malayalam, Marathi, Odia, Punjabi, Tamil, Telugu, and Urdu.",
      image:
          "https://img.fresherslive.com/assets-images/education/origin/2021/02/26/du-jat-exam.jpg",
      price: "₹350",
    ),
    Item(
      name: "CDSE",
      des:
          "Common Law Admission Test (CLAT) is an all India Entrance Examination conducted by the National Law Schools/Uiversities( NLU's) for admissions to their under-graduate and post graduate degree programmes (LL.B & LL.M). The responsibility of conducting the exam is rotated among NLU's and given on the basis of seniority in establishment.",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ54ClMHTYgvPvl0bPyWLNbq5Uzv9fhRA9qOA&usqp=CAU",
      price: "₹500",
    ),
    Item(
      name: "CEED",
      des:
          "CEED (Common Entrance Examination for Design) is an all India examination conducted by the Indian Institute of Technology, Bombay (IIT, Bombay), on behalf of the Ministry of Human Resources Development, Department of Education, Government of India."
          "The examination tests the candidates for visual perception ability, drawing skills, design aptitude and communication skills."
          "CEED is a qualifying examination for admission to Post Graduate M.Des. programmes at the Industrial Design Centre, IIT Bombay; IDDC, IIT Delhi; CPMD, IISc Bangalore; design Programme, IIT Kanpur."
          "In addition to CEED, candidates also have to fulfill other requirements such as tests & interviews of the respective institutions for admission.",
      image: "https://www.exams88.in/wp-content/uploads/2017/01/CEED-2022.jpg",
      price: "₹200",
    ),
    Item(
      name: "NIFT",
      des:
          "The National Institute of Fashion Technology (NIFT) has re-opened the option to pay the seat-acceptance fee for the Spot Round from August 4-7 (12 noon). The institute had earlier notified candidates who have been allotted seats to get in touch with the allotted campuses to get updates on reporting and orientation formalities."
          "The seat allotments for the Spot Round were announced on July 30. To check their allotment status, the candidate needs to log in to the admission portal using their email id and password. Fresh registrations were conducted for the Spot Round from July 21-24. Candidates with a Common Merit Rank (CMR) were eligible to participate in the Spot Round of NIFT counseling",
      image:
          "https://coursesxpert.com/wp-content/uploads/2021/06/NIFT-Exam.jpg",
      price: "₹1000",
    ),
  ];
}

class Item {
  final String name;
  final String image;
  final String des;
  final String price;

  Item(
      {required this.name,
      required this.image,
      required this.des,
      required this.price});
}
