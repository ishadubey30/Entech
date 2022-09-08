class DiscountModel {
  static final items = [
    Item(
      name: "Amazon Prime Student",
      des:
          "Amazon Prime includes many benefits, but the price tag might be steep for some college students. However, the Amazon Prime Student plan costs only half as much, which makes using Amazon Prime much more affordable.\n\nWho Is Eligible for Amazon Prime Student?\n\nIf you want to use Amazon Prime Student, you must be enrolled in a college or school for higher education and have an .edu email address or other documentation to prove your enrollment.\n\nAmazon’s Prime Student is available as a free 6-month trial, after which you can opt to get the service for\n\n"
          "*"
          " ₹5600 a year, the equivalent of \$5.75 per month.\n\n"
          "*"
          " If you pay by the month, the charge is \$7.49.\n\nAmazon Student Exclusive Offers\n\nAn Amazon Student account includes exclusive services and offers that change periodically; currently, they are:\n\n"
          "*"
          " Six months of free LinkedIn Premium to help soon-to-be graduates find jobs and help undergrads find internship\n\n"
          "*"
          " Showtime movies and shows for only \$0.99 per month for up to a year\n\n"
          "*"
          " Kindle Unlimited free 2-month trial with over a million titles\n\n"
          "*"
          " Free Grub Hub food delivery in some areas\n\n"
          "*"
          " Special deals for students on college-specific items",
      image:
          "https://images-eu.ssl-images-amazon.com/images/G/31/social_share/amazon_logo._CB633266945_.png",
      price: "5600",
    ),
    Item(
      name: "Adobe Creative Cloud",
      des:
          "Students, teachers and other education workers can get up to 60% off an all-Apps subscription to the Creative Cloud, which includes 20+ industry-leading apps including Photoshop, Lightroom, After Effects, Premiere Pro, Illustrator, InDesign and more.\n\nWho can get an Adobe Student discount?\n\nTo qualify for the student discount on Creative Cloud,you must be at least 13 years old and enrolled in one of the following institutions:\n\n"
          "*"
          " Any accredited public or private university or college, as long as your degree requires the equivalent of at least two years of full-time study. Full-time and part-time students are both eligible.\n\n"
          "*"
          " Any accredited public or private primary or secondary school providing full-time instruction.\n\n"
          "*"
          " Home-schooling ",
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Adobe_Creative_Cloud_rainbow_icon.svg/1200px-Adobe_Creative_Cloud_rainbow_icon.svg.png",
      price: "1596",
    ),
    Item(
      name: "Spotify",
      des:
          "As a student, paying subscription fees on top of tuition and various other expenses isn’t fun. Luckily, many subscription services offer students discounts and bonuses, like the Spotify student discount. Spotify Premium Student is an exclusive student discount for one of the top music streaming services.\n\nTo get Spotify Premium Student, you must verify yourself as a “Qualifying Student"
          "through a third-party service known as SheerID. You must be 18 and attend an accredited college or university to be eligible.\n\nStudents can subscribe to Spotify Premium Student for a maximum of four years, after which they will need to pay the full price of \$9.99.\n\nWith the student discount, that price drops to \$4.99.",
      image:
          "https://digital.hbs.edu/platform-digit/wp-content/uploads/sites/2/2020/04/spotify-logo-1920x1080-2.jpg",
      price: "230",
    ),
    Item(
        name: "Skilshare",
        des:
            "Skillshare is a platform that showcases courses in the fields of animation, design, illustration, lifestyle, photo/film, business, and writing. They have such a wide variety of courses and classes; you can find almost anything to learn here!\n\nSkillshare believes creativity should be part of all education. They also recognize the financial limitations of student life and offer a generous 50% discount for this reason.\n\nOnce approved, you’ll have unlimited access to all of their courses and offline videos, and at a greatly discounted price!",
        image:
            "https://static.skillshare.com/assets/images/opengraph-default.png",
        price: "340"),
    Item(
        name: "Lenovo",
        des:
            "Lenovo is one of the biggest names in desktop and laptop computers, with popular brands like Thinkpad and Ideapad. If you can prove your enrollment at a qualifying institution, you can save as much as 20 percent on Lenovo laptops through the official Lenovo store.\n\nWho Is Eligible For the Lenovo Student Discount?\n\nLenovo has requirements that you must meet to take advantage of their student discount. To qualify for this discount, you must be:\n\n"
            "*"
            " At least 18 years old.\n\n"
            "*"
            " Currently enrolled at a college, university, community college, or technical college.",
        image:
            "https://logodownload.org/wp-content/uploads/2014/09/lenovo-logo-1-1.png",
        price: "640"),
    Item(
        name: "Microsoft",
        des:
            "If you’re currently in education, It's handy to know how to get a Microsoft student discount, to save money on a range of excellent hardware and software.\n\nThe Microsoft Store runs a series of student-exclusive discounts that rotate throughout the year, so it’s worth checking the offers regularly. Expect to see savings on desktop computers, laptops, tablets and accessories. That’s not all because Microsoft also offers some of its most popular software, including Office 365, for free to students, making this one of the most generous student discounts available.\n\n Whether you want to save big on a laptop or a tablet or just fancy getting access to some essential software for free",
        image:
            "https://www.gartner.com/imagesrv/peer-insights/vendors/logos/microsoft.jpg",
        price: "480"),
    Item(
        name: "Apple",
        des:
            "Are you looking for some more info on the Apple Student discount? Well, you've come to the right place. We have gathered up all you need to know about the Apple Student savings from who's eligible to what products are available with the discount. You can save on the newest Apple products such as the latest iMac and the iPad Pro. Plus, if you buy any of the Apple products, then Apple will give you a gift card worth up to \$150/£120 as part of its student discount.\n\nThere is no set amount on how much you'll save with the Apple Student discount, however, you can expect to save approximately 10 per cent off the full price Apple products. We know, that doesn't sound like loads of cash, but we assure you that all the savings add up. ",
        image:
            "https://www.theglades.co.uk/wp-content/uploads/2020/02/media.idownloadblog.com-23104664601427570.png",
        price: "82000"),
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
