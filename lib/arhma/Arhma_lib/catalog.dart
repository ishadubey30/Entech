import 'package:flutter/cupertino.dart';

class CatalogModel {
  static final items = [
    Item(
      name: "JEE MAIN",
      des:
          "The Joint Entrance Examination, JEE (Main) comprises two papers. Paper 1 is conducted for admission to Undergraduate Engineering Programs (B.E/B.Tech.) at NITs, IIITs, other Centrally Funded Technical Institutions (CFTIs), Institutions/Universities funded/recognized by participating State Governments. JEE (Main) is also an eligibility test for JEE (Advanced), which is conducted for admission to IITs. Paper 2 is conducted for admission to B. Arch and B. Planning courses in the Country.",
      image:
          "https://imgeng.jagran.com/images/2022/feb/jee-main-examination1644845985908.jpg",
      price: "₹700",
    ),
    Item(
        name: "JEE ADVANCED",
        des:
            "JEE Advanced (formerly known as IIT JEE) is the second phase of the JEE examination and is usually conducted after the JEE Main exam. It is an important test for engineering aspirants (especially for those who are seeking admission in premier engineering institutes such as IITs). JEE Advanced is a computer-based exam and is usually conducted by seven different Indian IITs (IIT Kharagpur, IIT Bombay, IIT Roorkee, IIT Madras, IIT Kanpur, IIT Delhi and IIT Guwahati) on a rotational basis.",
        image: "https://duresult.in/wp-content/uploads/2021/09/JeeAdvanced.jpg",
        price: "₹500"),
    Item(
      name: "NEET",
      des:
          "NATIONAL ELIGIBILITY CUM ENTRANCE TEST [ NEET (UG) – 2022] will be conducted by National Testing Agency (NTA) on Sunday, the 17 July 2022 (Sunday) in Pen and Paper mode in 13 languages, as a uniform entrance examination for admission to MBBS/BDS/BAMS/BSMS/BUMS/BHMS and other undergraduate medical courses in approved/recognized Medical/Dental /AYUSH and other Colleges/ Deemed Universities /Institutes (AIIMS & JIPMER) in India, as per Section 14 of The National Medical Commission (NMC) Act, 2019 and relevant Graduate Medical Education Regulations (GMER) 1997, as amended from time to time. The languages in which the NEET (UG) 2022 would be conducted are : English, Hindi, Assamese, Bengali, Gujarati, Kannada, Malayalam, Marathi, Odia, Punjabi, Tamil, Telugu, and Urdu.",
      image:
          "https://www.livelaw.in/h-upload/2019/11/05/366225-neet.jpg?width=500&height=300",
      price: "₹400",
    ),
    Item(
      name: "CLAT",
      des:
          "Common Law Admission Test (CLAT) is an all India Entrance Examination conducted by the National Law Schools/Uiversities( NLU's) for admissions to their under-graduate and post graduate degree programmes (LL.B & LL.M). The responsibility of conducting the exam is rotated among NLU's and given on the basis of seniority in establishment.",
      image:
          "https://www.livelaw.in/h-upload/2021/07/20/396995-clat.jpg?width=500&height=300",
      price: "₹400",
    ),
    Item(
      name: "NDA",
      des:
          "The NDA exam is a national level defence entrance exam conducted by the UPSC. It stands for National Defence Academy. The exam is conducted for the recruitment of individuals in the Army, Navy and Air Force Wings of NDA."
          " The UPSC NDA exam is conducted in two stages- a written Test and SSB Interview. The candidates who clear the written exam with the minimum qualifying marks will be shortlisted for the SSB Interview round in Intelligence and Personality Test. Those who clear the interview have to go through a thorough medical check-up based on the standards set by the board."
          "Finally, a merit list is released with the names of the recommended candidates. Marks of all the stages are added up, only those who clear get recommended and called for training.",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV9K85BjCGnaSryioHCkTage2NSNCDut0Dvg&usqp=CAU",
      price: "₹600",
    ),
    Item(
      name: "INDIAN ARMY TES",
      des:
          "Technical Entry Scheme (10+2) is one of the opportunities for the defence aspirants to join the Indian Army as an officer in the Engineering Core. The TES is conducted by the Indian Army twice a year. There are no written examinations like UPSC- CDS or NDS; Candidates can directly apply for the SSB interview based on their marks in 12th standard (Physics, Chemistry, Maths)."
          " The selected candidates under TES (10+2) recruitment are admitted to engineering courses by the Indian Army, and they are appointed directly on the Rank of Lieutenant after the successful completion of the course."
          "Note: JEE mains has been made obligatory for the aspirants from TES 47. It is an eligibility criterion along with 60% marks in PCM (Physics, Chemistry, and Maths) in the 12th Class.",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7fbLC9JPhiL5r6oR-HL9c0jIomvIdHcClsg&usqp=CAU",
      price: "₹800",
    ),
    Item(
      name: "NIFT",
      des:
          "The National Institute of Fashion Technology (NIFT) has re-opened the option to pay the seat-acceptance fee for the Spot Round from August 4-7 (12 noon). The institute had earlier notified candidates who have been allotted seats to get in touch with the allotted campuses to get updates on reporting and orientation formalities."
          "The seat allotments for the Spot Round were announced on July 30. To check their allotment status, the candidate needs to log in to the admission portal using their email id and password. Fresh registrations were conducted for the Spot Round from July 21-24. Candidates with a Common Merit Rank (CMR) were eligible to participate in the Spot Round of NIFT counseling",
      image:
          "https://coursesxpert.com/wp-content/uploads/2021/06/NIFT-Exam.jpg",
      price: "₹900",
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
