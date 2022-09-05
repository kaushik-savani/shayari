import 'package:flutter/material.dart';

class baseclass {
  List<String> category = [
    "Birthday Shayari",
    "Breakup Shayari",
    "Funny Shayari",
    "Life Shayari",
    "Love Shayari",
    "Motivational Shayari",
    "Romantic Shayari",
    "Sad Shayari",
  ];

  List<String> images = [
    "imageshayari/birthday3.png",
    "imageshayari/breakup.png",
    "imageshayari/funny.png",
    "imageshayari/life.png",
    "imageshayari/love.png",
    "imageshayari/motivation.png",
    "imageshayari/romantic.png",
    "imageshayari/sad.png",
  ];

  static List<Gradient> randomlist = [
    LinearGradient(colors: [Colors.purple, Colors.blueAccent]),
    LinearGradient(colors: [Color(0xf2ffafbd), Color(0xf2ffc3a0)]),
    LinearGradient(colors: [Color(0xf22193b0), Color(0xf26dd5ed)]),
    LinearGradient(colors: [Color(0xf2cc2b5e), Color(0xf2753a88)]),
    LinearGradient(colors: [Color(0xf2bdc3c7), Color(0xf22c3e50)]),
    LinearGradient(colors: [Color(0xf2de6262), Color(0xf2ffb88c)]),
    LinearGradient(colors: [Color(0xf2eacda3), Color(0xf2d6ae7b)]),
    LinearGradient(colors: [Color(0xf202aab0), Color(0xf200cdac)]),
    LinearGradient(colors: [Color(0xf200cdac), Color(0xf2185a9d)]),
    LinearGradient(colors: [Color(0xf2DAFEA4), Color(0xf2F254A8)])
  ];

  static List<Color> basecolor = [
    Colors.black,
    Colors.white,
    Colors.red,
    Colors.redAccent,
    Colors.grey,
    Colors.green,
    Colors.greenAccent,
    Colors.amber,
    Colors.amberAccent,
    Colors.blueGrey,
    Colors.blueAccent,
    Colors.blue,
    Colors.brown,
    Colors.blueAccent,
    Colors.cyan,
    Colors.cyanAccent,
    Colors.indigo,
    Colors.lime,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.yellow,
    Colors.deepPurpleAccent,
    Colors.deepOrange,
    Colors.limeAccent
  ];

  static List<String> birthday = [
    """Tohfa-E-Dil De Dun Ya De Dun Chaand Taare,
JanamDin Pe Tujhe Kya Dun Puchhe Mujhse Sare,
Ye Zindagi Tere Naam Kar Dun Bhi Toh Kam Hai.
Daaman Mein Bhar Dun Har Khushi Main Tumhare.""",
    """Kaise Karoon Shukriya Uska Iss Din Ke Liye,
Jisne Tumhein Dharti Pe Bheja Humare Liye,
Iss JanmDin Par Kuchh Aur Toh Nahi De Sakte,
Bas Meri Har Dua Hai Teri Lambi Umr Ke Liye.""",
    """Ugta hua Suraj dua de aapko,
Khilta hua phool khushbu de aapko,
hum to kuch dene ke kabil nahi hai,
dene wala hazaar khushiyan de aapko!
HAPPY BIRTHDAY..!""",
    """Sooraj Raushanee Le Kar Aaya
Aur Chidiyon Na Gaana Gaaya
Phoolon Ne Hans Hans Kar Bola
Mubaarak Ho Tumhaara Janmadin Aaya
""",
    """Khuda Buree Nazar Se Bachae Aap Ko
Chaand Sitaaron Se Sajae Aap Ko
Gam Kya Hota Hai Ye Aap Bhool Hee Jao
Khuda Zindagee Me Itana Hansae Aapako
Wish U A Very Happy Bday
""",
    """Har Din Se Pyaar Lagata Hai Hame Ye Khaas Din
Jise Ham Bitaana Nahee Chaahate Aapake Bin
Vese To Dil Sada Dua Deta Hai Aapako
Phir Bhee Kahate Hai Janmadin Mubaarak Aapako""",
    """Rab ne bhi us din tyauhar manaya hoga,
jis din apane hathon se tumhen banaya hoga,
 usane bhi bahaye honge aansoo jis din apako yahan bhej kar khud ko akela paya hoga.""",
    """Tamnnao se bhari ho aapki jindagi,
Khwahishon se bhara har pal,
Daaman bhi chhota lage,
Itni khushiya de aapko ye naya aane wala kal!!
""",
    """Janamdin Hai Aapka Sochta Hu Uphar Kya Du,
Sochta Hu Ish Varsh Naya Kya Du,
Gulab Se Badhkar Koi Phool Hota To Deta Jaroor,
Magar Jo Khud Gulab Hai Use Gulab Bhi Kya Du.
HAPPY BIRTHDAY""",
    """Phoolo si tu sada muskuraye.
Panchhiyon ki tarah sada chahchaye,
Jo bhi chaho tum zindagi me,
Khuda kare wo tumhe bin mange hi mil jaye.
HAPPY BIRTHDAY
""",
  ];
  static List<String> breakup = [
    """Hamari Chahat Ne
Uss Bewafa Ko Khusi De Di
Or Uss Bewafa Ne
Hume Zindagi Bhar Ki Khamoshi De di
Mangi To Dua Uss Rab Se Marne Ki Thi
Lekin Upar Wale Ne
Tadapne Ke Liye Zindagi De Di""",
    """Wo kehte Hain Hum Bhul Jaye Unhe
Par Kyu Batate Nahi
Koi Or Pasand Hain Unhe
Na jaane Kitni Mannato Ke Baad Paya Tha
Or Aaj Kehte Hain Hum Pasand Nahi Unhe""",
    """dil ko aata hai jab bhi khayal unka,
tasveer se puchhte hain haal unka,
wo kabhi humse pucha karti thi judaai kya hai,
aaj samjh mein aaya hai sawal unka…

""",
    """Gam na kar hum teri rah me nahi ayenge,
Agar aa bhi gye to tujse nazre nhi milayege
Jab hoga tujhe apni galti ka ehsass
Tab tak hum kisi aur ke ho jayenge….""",
    """Gam na kar hum teri rah me nahi ayenge,
Agar aa bhi gye to tujse nazre nhi milayege
Jab hoga tujhe apni galti ka ehsass
Tab tak hum kisi aur ke ho jayenge….""",
    """Palkon Pe Ruk Gaya Hai Samundar Khumaar Ka
Kitnaa Ajab Nashaa Hai Tere Intezaar Ka
""",
    """""",
    """""",
    """""",
    """""",
    """""",
    """"""
  ];
  static List<String> funny = [
    """Hum Uske Ishq Mein
Iss Kadar Chot Khaye Huye Hain,
Kal Uske Baap Ne Maara Tha
Aaj Bhai Aaye Huye Hain.""",
    """Bahut Khoobsurat Ho Tum Phool Ki Tareh,
Khud Ko Duniya Ki Najar Se Bachaya Karo,
Sirf Aankhon Mein Kaajal Hi Kafi Nahi,
Gale Mein Nimboo-Mirchi Bhi Latkaya Karo.""",
    """Teri Meri Bane To Bane Kaise..
Tujhe Nibhana Nahi Aata,
Mujhe Bhulana Nahi Aata....!""",
    """Dilwane to hum bhi the mohabat me dil jala baithe,
takdeer hi apni kuch aise thi ek bewafa se dil laga baithe...!
""",
    """Jinki yaad mein hum dewane ho gaye,
Wo hum hi se begaane ho gaye.
Shayad unhe talash hai ab naye dost ki,
Kyunki unki nazar me ab hum purane ho gaye…!""",
    """tere ishq me ham tutkar bikhar gaye hai,
lagta hai, ab ham bhi shayari likhna seekh gaye hai.""",
    """fareb thi hasi unki ham aashiqi samajh bethe
aur mot ko hi ham unki zindagi samajh bethe.""",
    """kabhi jo ek hasrat thi tujhe pane ki,
aaj wo ek koshish hai tujhe bhulane ki.""",
    """kisi or ke khatir wo mujhse jhoot bolne laga,
rafta rafta hi sahi wo mera dil todne laga hai.""",
    """hasrate kuch is tarah badal gai,
mohabbat thi jinse beinteha,
aaj unse nafrat bhi hadd se guzar gai…

""",
    """main tabah hun unke pyar me,
aur unhe kisi or ka khyal hai,
kabhi samay mile to mere masle par bhi gor kar lo,
meri bhi zindagi ka sawal hai.""",
    """tumhe hi padi hai yahan se door jane ki,
ham to puri zindagi sath nibhana chahte the."""
  ];
  static List<String> life = [
    """Bade He Ajeeb Hain Ye Zindagi Ke Raste,
Anjaan Mod Par Kuch Log Apne Ban Jate Hain.
Milne Ki Khushsi Den Ya Na Den
Magar Bichdne Ka Gham Zaroor De Jate Hain.""",
    """Had-e-Shahar Se Nikali To Gaon-Gaon Chali,
Kuchh Yaadein Mere Sang Paaon Paaon Chali,
Safar Jo Dhoop Ka Kiya To Tazurba Hua,
Wo Zindagi Hi Kya Jo Chhaon-Chhaon Chali.""",
    """Fursat Agar Mile To Mujhe Padhna Jarur,
Nakaam Zindagi Ki Mukammal Kitaab Hu Main..!!""",
    """Ajeeb Tarah Se Gujar Gayi Meri Bhi Zindagi,
Socha Kuchh, Kia Kuchh, Hua Kuchh, Mila Kuchh.""",
    """Jeene Ka Hausla Kabhi Marne Ki Aarzoo,
Din Yoon Hi Dhoop-Chhaaon Mein Apne Bhi Kat Gaye.""",
    """Ab Samajh Leta Hun Meethhe Lafzon Ki Kaduwahat,
Ho Gaya Hai Zindagi Ka Tajurba Thoda Thoda.""",
    """Na jaane kaun see shoharat par aadamee ko naaj hai,
jabaki aakharee saphar ke lie bhee aadamee auron ka mohataaj hai
""",
    """Aaram Se Kat Rahi Thi To Acchi Thi !!
Zindagi Tu Kaha In Aankho Ki Baate Me Aa Gayi !!""",
    """Khabar Nahi Mujhe Yah Zindagi Kaha Le Jaye !!
Kahi Thahar Ke Mera Intezar Mat Karna !!""",
    """Yu To Haadse Me Gujari Hai Hamari Zindagi !!
Haadse Ye Bhi Kam Nahi Ki Hame Mout Na Mili !!""",
    """Sabke Karje Chuka Du Marne Se Pahile ,Aisi Meri Niyat Hai !!
Maut Se Pahile Tu Hi Bata De Zindagi ,Teri Kya Kimat Hai !!""",
    """Ye Na Puch Ki Sikayate Kitni Hai Tujhse !!
Ye Zindagi ,Sirf Ye Bata Ki Tera Koi Aur !!
Sitam Baaki To Nahi Hai !!
""",
    """Zindagi Jeene Ko Ek Yaha Khawaab Milta Hai !!
Yaha Har Sawaal Ka Jhutha Jawaab Milta Hai !!
Kise Samjhe Apna Kise Paraya !!
Yaha Har Chehre Pe Ek Nakaab Milta Hai !!
"""
  ];
  static List<String> love = [
    """Tere Khayal Se Khud Ko Chhupa Ke Dekha Hai,
Dil-o-Najar Ko Rula-Rula Ke Dekha Hai,
Tu Nahi To Kuchh Bhi Nahi Hai Teri Kasam,
Maine Kuchh Pal Tujhe Bhula Ke Dekha Hai.""",
    """Nahi Jo Dil Mein Jagah To Najar Mein Rehne Do,
Meri Hayaat Ko Tum Apne Asar Mein Rehne Do,
Main Apni Soch Ko Teri Gali Mein Chhod Aaya Hun,
Mere Wajood Ko Khwabon Ke Ghar Mein Rehne Do.""",
    """Bewajah Hum Wajah Dhhoodhte Hain Tere Paas Aane Ko,
Yeh Dil Bekaraar Hai Tujhe Dhadkan Mein Basaane Ko,
Bujhti Nahin Hai Pyaas Mere Iss Pyaase Dil Ki,
Na Jaane Kab Milega Sukoon Tere Iss Diwane Ko.""",
    """Kab Tak Woh Mere Hone Se Inkaar Karega,
Khud Toot Kar Wo Ek Din MujhSe Pyaar Karega,
Pyar Ki Aag Mein Hum Usko itna Jala Denge.
Ke Ijhaar Woh Mujhse Sare-Baajar Karega.""",
    """Aankhon Ki Gaharai Ko Samajh Nahi Sakate,
Honto Se Kuchh Kah Nahi Sakate,
Kaise Baya Kare Ham Aapako Yah Dil Ka Haal,
Ki Tumhi Ho Jisake Bagair Ham Rah Nahi Sakate..""",
    """Pyar Ke Panno Se Bhari Kitab Ho Tum,
Rishton Ke Phulo Me Gulab Ho Tum,
Kuchh Log Kehte Hai Ki Pyar Sacha Nhi Hota,
Un Logon Ke Har Sawaal Ka Jawab Ho Tum..""",
    """.Aapke Parchhae Hamaare Dil Mein Hai,
Aapke Yaadon Hamaare Ankhon Mein Hai,
Aapako Ham Bhulaen Bhee Kaise,
Aapke Mohabbat Hamare Saanso Mein Hai..""",
    """Sirf Najdikiyo Se Mohabat Hua Nahi Karti,
Fasle Jo Dilon Me Ho To Fir Chahat Hua Nhi Karti,
Agar Naraz Ho Khafa Ho To Shikayat Karo Hamse,
Khamosh Rahne Se Dilo Ki Duriya Mita Nahi Karti..""",
    """Chaahat Ke Yeh Kaise Afsane Huye,
Khud Nazron Mein Apni Begane Huye,
Kisi Bhi Riste Ka Khayal Nahi Mujhe,
Ishq Mein Tere Is Kadar Diwaane Huye..""",
    """Mana Hum Halaat Se Majbur Rehte Hai,
Phir Bhi Tere Khayalon Me Chur Rehte Hai,
Aakhon Mein Rehti Hai Tasveer Tumhari,
Kya Hua Jo Hum Tumse Door-Door Rehte Hai..""",
    """Har Dard Ki Dava Ho Tum,
Aaj Tak Jo Maangi Meri Ek Lauti Dua Ho Tum,
Tumhe Milane Ki Tamanna Nahin Uthati Kabhi,
Kyoonki Jo Har Baqt Saath Rahati Hai
Vo Hawa Ho Tum..!""",
    """Achha Lagata Hai,
Tera Naam Mere Naam Ke Saath,
Jaise Koi Subah Judi Ho
Kisi Hasin Shaam Ke Saath..!!""",
    """Dil Ki Dhadkan Aur Meri Sadaa Hai Tu,
Meri Pehli Aur Aakhiri Wafa Hai Tu, 
Chaha Hai Tujhe Chahat Se Bhi Barh Kar, 
Meri Chahat Aur Chahat Ki Inteha Hai Tu.""",
    """Kya Chahun Rab Se Tumhen Pane Ke Baad, 
Kiska Karoon Intezaar Tere Aane Ke Baad, 
Kyu Moahabbat Mein Jaan Luta Dete Hain Log, 
Maine Bhi Yeh Jana Ishq Karne Ke Baad.""",
  ];
  static List<String> motivational = [
    """Bhuji shaam bhi jal sakti hai
Tufano se kashti bhi nikal sakti hai
Hoke mayus yu ne apne irade badal
Teri kismat kab bhi badal sakti hai""",
    """Mushkil nhin kuch is duniya me ,
Tu himmat karke to dekh
Khwab badlenge hakeekat me
Tu mehnat to karke dekh""",
    """Udne mein burai nahi hai
 Aap bhi udee lekin
 Utna hi jaha se zamin 
Saaf dikhai de..!""",
    """Jo ho gaya usse socha nahi karte
Jo mila hai usse khoya nahi karte
Hashil unhe hi hoti hai manzil
Jo kismat pe roya nahi karte..!
""",
    """Parinde ko milegi manzil ek din
Yeh faaile unke par bolte hai aur
Wo log rehete hai khamossh aksar  
Zamane mee jinke hunar bolte hai""",
    """Tum girane mee lage rahe 
Tumne socha hi nahi main geera
Toh phir khada ho jaunga
Chalne do abhi akela mera safar
Roka toh kafila ho jaunga..!""",
    """Rone se taqdeer badalti nahi
Waqt se phele raat dhalti nahi
Dusaro ki kamiyabi lagti hai aasan
Magar kmiyabi raste mee padi milti nahi""",
    """Aaj tere liye waqt ka ishara hai
Dekhta yeh jahan sara hai
Phir bhi tujhe raasto ki talaash hai
Aaj phir tujhe manzilo ne pukara hai""",
    """Galti peeth ki tarah hoti hai ,
Dusron ko dikhti hai khud ko nhin""",
    """Kaam Karo Aisa Ki Ek Pehchaan Ban Jaye,
Har Kadam Aisa Chalo Ki Nishan Ban Jaye,
Yehan Zindagi To Har Koi Kaat Leta Hai,
Zindagi Jiyo Iss Kadar Ki Misaal Ban Jaye.""",
    """Nahi Chal Payega Wo Ek Pag Bhi,
Bhale Baisakhiyan Sone Ki De Do,
Sahare Ki Jise Aadat Padi Ho,
Usey Himmat Khade Hone Ki De Do.""",
    """Jo Na Poora Ho Use Armaan Kehte Hai,
Jo Na Badle Use Imaan Kehte Hai,
Zindagi Mushkilon Mein Bhale Hi Beet Jaye,
Par Jo Jhukta Nahi Use Insaan Kehte Hai.""",
    """Jab Tootne Lage Hausla To Bas Ye Yaad Rakhna,
Bina Mehnat Ke Haasil Takht-o-Taj Nahi Hote,
Dhhoond Lena Andhere Mein Hi Manzil Apni Dosto,
Kyunki Jugnoo Kabhi Roshni Ke Mohtaj Nahi Hote.""",
    """Mujhe unchaiyon me dekh kar hairan hain kuch log ,
Beshak unhonne mere pairon k chhale nhin dekhe""",
  ];
  static List<String> romantic = [
    """Mujshe Mat Puch Ki Kyun 
Aankhein Jhuka Li Maine.. 
Teri Tasveer Thi In Aankhon Mein 
Woh Tujhi Se Chhupa Li Maine..""",
    """Aapke Aane Se Zindagi Kitni Khubsurat Hai,
Dil Mein Basai Hai Jo Woh Aapki Hi Surat Hai,
Dur Jana Nahi Humse Kabhi Bhulkar Bhi,
Humein Har Kadam Par Aapki Jarurat Hai.""",
    """Khud Nahi Jante Kitne Pyare Ho Aap,
Jaan Ho Hamari Par Jaan Se Pyari Ho Aap,
Duriyon Ke Hone Se Koi Fark Nahi Padta,
Kal Bhi Hamare The Aur Aaj Bhi Hamari Ho Aap.""",
    """Kaha jayenge hum aapse door
Tere bina ek lamha nahi reh sakte
Toh poori zindagi kaise reh sakte hai """,
    """Kitna jaanta hoga wo shaqs mujhe
Mere muskurane par bhi pooch liya
Ki tum itne udaas kyu ho aaj""",
    """Tu dekh ya naa dekh
Tere dekhne ka koi gam nahi
Tere naa dekhne ki aada
Koi dekhne se kam nahi """,
    """Maana ki hamne tumhe kabhi 
Jaan keh kar nahi boolaya
Par yakeen karo hamne jaan se
Jyada pyaar kiya hai tumse""",
    """Mat pooch kaise guzarta hai 
Har pal tere bina
Kabhi baat karne ki hasraat
Kabhi dekhne ki tamann""",
    """Jabse meri aankho mee
Basse ho tum noor banke
Kasam se koi nazaara
Tere begair aacha nahi lagta""",
    """Ji chahata hai aapse pyari si baat ho
Khaamosh tare aur ek lambi si raat ho
Rooz aapse aise hi meri mulakkat ho
Phir chahe hamse door poori kayanaat ho""",
    """Raaz dil ka dil mee chupate hai wo
Saamne aate hi nazar jhookate hai wo
Baat karne se bohot sharmaate hai wo
Jab bhi milte hai muskurate hai wo 😊""",
    """Mana Ke Tum Jeete Ho Zamane Ke Liye
Ek Bar Jee Ke To Dekho Hamare Liye
Dil Ki Kya Aukaat Apke Saamne
Hum To Jaan Bhi De Denge Apko Pane Ke Liye…""",
    """Chupke Se Aakar Is Dil Mein Utar Jate Ho,
Saanson Mein Khushboo Ban Ke Bikhar Jate Ho,
Kuchh Yoon Chala Hai Aapke Pyar Ka Jadoo,
Sote Jagte Bas Tum Hi Najar Aate Ho."""
  ];
  static List<String> sad = [
    """Zindagi Ke Kuch Lamhe Yaadgar Hote Hain, 
Yadoon Mein Kuch Log Khass Hote Hain, 
Yun To Wo Door Hote Hain Nazaron Se, 
Par Unke Ahsaas Dil Ke Paas Hote Hain.""",
    """Sirf Chehre Ki Udaasi Se
Bhar Aaye Teri Aankhon Mein Aansoo,
Mere Dil Ka Kya Aalam Hai
Ye To Tu Abhi Jaanta Nahi.""",
    """Kuchh Tabiyat Hi Mili Thi Aisi,
Chain Se Jeene Ki Soorat Nahi Huyi,
Jisko Chaaha Usey Apna Na Sake,
Jo Mila Uss Se Mohabbat Na Huyi.""",
    """Mana Ki Kismat Pe Mera Koi Jor Nahi,
Par Ye Sach Hai Ki Mohabbat Meri Kamjor Nahi,
Uske Dil Mein, Yaadon Mein Koi Aur Hai Lekin,
Meri Har Saans Mein Uske Siwa Koi Aur Nahi.""",
    """Koi Achha Lage Toh Unse Pyaar Mat Karna,
Unke Liye Apni Neendein Bekar Mat Karna,
Do Din Toh Aayenge Khushi Se Milne,
Teesre Din Kahenge Intezaar Mat Karna.""",
    """illagi Thi Use Hum Se Mohabbat Kab Thi,
Mehfil-e-Gair Se Uss Ko Fursat Kab Thi,
Kahte Toh Hum Mohabbat Mein Fanaah Ho Jate,
Uss Ke Vaadon Mein Par Woh Hakiqat Kab Thi.""",
    """Bahut Khamoshi Se Gujri Ja Rahi Hai Zindgi,
Na Khushion Ki Raunak Na Gamo Ka Koi Shor,
Aahista Hi Sahi Par Kat Jayega Yeh Safar,
Na Aayega Dil Mein Uske Siwa Koi Aur.""",
    """Ishq Sabhi Ko Jena Sikha Deta Hai,
Wafa Ke Naam Par Marna Sikha Deta Hai,
Ishq Nahi Kiya To Karke Dekho,
Zalim Har Dard Sehna Sikha Deta Hai!""",
    """Saari Duniya Ke Rooth Jane Se,
Mujhe Koyi Fark Nahi Padta,
Bas Ek Tera Khamosh Rahna,
Bahut Takleef Deta Hai.""",
    """Saanso Ka Tut Jana To
Bahut Choti Baat Hai Doston,
Jab Apne Yaad Karna Chod De
Maut To Use Kahte Hain.""",
    """Aankhen thak gayi hai aasmaan ko dekhte dekhte
par vo taaraa nahin tuttaa ,jise dekhakar tumhen maang lun
""",
    """Tumne samjhaa hi nahin aur naa samajhnaa chaahaa,
ham chaahte hi kyaa the tumse “tumhaare sivaa""",
    """kyaa baat hai, bde chupchaap se baithe ho.
koi baat dil pe lagi hai yaa dil kahi lagaa baithe ho…""",
    """Vo chhod ke gaye hamen,
n jaane unki kyaa majburi thi,
khudaa ne kahaa esmen unkaa koi kasur nahin,
ye kahaani to mainne likhi hi adhuri thi."""
  ];
}
