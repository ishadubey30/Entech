import 'package:flutter/cupertino.dart';

class SecModel {
  static final items = [
    Sitem(
        title: "1. Keep software up-to-date",
        des:
            "Installing software updates for your operating system and programs is critical. Always install the latest security updates for your devices:\n\n"
            "*"
            " Turn on Automatic Updates for your operating system.\n\n"
            "*"
            " Use web browsers such as Chrome or Firefox that receive frequent, automatic security updates.\n\n"
            "*"
            " Make sure to keep browser plug-ins (Flash, Java, etc.) up-to-date.",
        image:
            "https://www.setechnical.net/wp-content/uploads/software-updated--1024x427.jpg",
        link: "https://www.youtube.com/watch?v=TDVoH7tOHmo"),
    Sitem(
        title:
            "2. Avoid Phishing scams - beware of suspicious emails and phone calls",
        des:
            "Phishing scams are a constant threat - using various social engineering(link is external) ploys, cyber-criminals will attempt to trick you into divulging personal information such as your login ID and password, banking or credit card information.\n\n"
            "*"
            " Phishing scams can be carried out by phone, text, or through social networking sites - but most commonly by email.\n\n"
            "*"
            " Be suspicious of any official-looking email message or phone call that asks for personal or financial information.",
        image:
            "https://pixelprivacy.com/wp-content/uploads/2021/01/Depositphotos_149207810_m-2015.jpg",
        link: "https://www.youtube.com/watch?v=XsOWczwRVuc"),
    Sitem(
        title: "3. Use Two-Factor or Multi-Factor Authentication",
        des:
            "Generally, you require only your user id and your password to sign in to your account but the MFA service enables you to add extra security layers to the standard method of using passwords for online verification. With this, you will receive a prompt to add another method of authentication along with the password, like a code, fingerprint, OTP in your phone number or email, etc. With this method, you will be required to enter more than two credentials while logging in, keeping your account more secure by making it more difficult for hackers to access your data. This is another one of the most significant Cyber Security measures that you must take.",
        image:
            "https://cdn.techjuice.pk/wp-content/uploads/2021/06/Two-Factor-Authentication-Thumb-1280x720-1.jpeg",
        link:
            "https://www.geeksforgeeks.org/thoughtworks-recruitment-process/"),
    Sitem(
        title: "4. Never leave devices unattended",
        des:
            "Leaving your devices ([phones, laptops, etc.) unattended is the easiest way to get them stolen, yet it is the easiest practice to fix. You should be treating your unattended devices like your unattended wallet containing money, credit cards, and personal information. \n\nHere are a few simple tips to protect your devices from being stolen: \n\n"
            " 1. If you have a desk that can be locked – secure your devices in it even when leaving for a brief period. Unbelievably, most mobile device theft occurs in the workplace during business hours.\n\n"
            " 2. Do not leave your devices in plain sight. If you are unable to bring your devices with you or secure them in a locked location, hide them in an inconspicuous case or cover them with something someone would be disinclined to move to try and steal what is underneath.\n\n"
            " 3. Never ask strangers to watch your unattended devices for you, only you are responsible for your devices.  ",
        image:
            "https://www.wheelhouseit.com/wp-content/uploads/2018/03/cyber-security-never-leave-your-devices-unattended.jpg",
        link: "https://www.youtube.com/watch?v=289iL9FOHw8"),
    Sitem(
        title: "5. Avoid Unfamiliar Websites",
        des:
            "As you know, roaming the internet can be a risky proposition.There are, for instance, trap websites awaiting your arrival so they can infect your computer with viruses, malware, ransomware, scripts, and other bad stuff.\n\nHow do you determine the trustworthiness of a site you’ve never before visited?Easy. First, hover your mouse over the link you’re planning to click to take you to that site. The site’s full URL—its internet address—will then become visible.Check to see if the URL begins with the letters HTTPS.\n\nThat’s computer shorthand for Hypertext Transfer Protocol Secure. It means the site’s owner has obtained a Secure Sockets Layer (SSL) certificate, which gives assurance that the data you exchange with the website will be encrypted.If you don’t see HTTPS at the beginning of the URL, what might show up instead is HTTP (no “S” at the end). That means the site is unsecured, and the data you exchange will not be encrypted.\n\nSuppose you go straight to a site (without first doing the mouse hover), and the URL in your browser’s address bar is missing the HTTPS or even the HTTP prefix. You’ll still be able to tell if the site has SSL certification. Just look for a little padlock icon in front of the URL. If you see it, you’re golden.",
        image:
            "https://www.lifewire.com/thmb/4Ke4MG3zFeoovhN8H619s3M8wX4=/1539x1154/smart/filters:no_upscale()/red-x-laptop-0c4e67a184a743c48a5aaef48d1bab89.png",
        link: "https://www.youtube.com/watch?v=owZPdb6NMhI"),
    Sitem(
      title: "6. Use Strong Passwords",
      des:
          "Strong passwords are utterly important – they prevent unauthorized access to your electronic accounts and devices.\n\nIf you choose a very complicated and long password, you will make it very difficult for a hacker to crack it, whether by a brute-force attack (i.e., trying every possible combination of numbers, letters or special characters) or an automated machine attack trying thousands of combinations per second to guess your one and only.So, the more complex your password is, the more security it provides for your account. Remember that your account is where you store a great deal of sensitive information that you don’t want to have stolen. As you understand, the stakes are very high. Therefore, taking care of your account password is crucial.\n\nYour account password should never include these:\n\n"
          "*"
          " many obvious combinations such as 12345, combinations of phone numbers and addresses, or your personal information;\n\n"
          "*"
          " any string with sequential numbers or letters;\n\n"
          "*"
          " any part of the username with a slight variation of the password;\n\n"
          "*"
          " words in the dictionary that a hacker can easily hack with the help of a dictionary program.",
      image:
          "https://my.infotex.com/wp-content/uploads/2017/06/use_strong_passwords_graphic_032317.png",
      link: "https://www.youtube.com/watch?v=xdfLBHIlt4o",
    ),
  ];
}

class Sitem {
  final String title;
  final String image;
  final String des;
  final String link;
  Sitem(
      {required this.title,
      required this.image,
      required this.des,
      required this.link});
}
