void ex08_1() {
  List noun = ['temperature','chalet','ski','café','voiture'];
  List verbs = ['skier', 'tomber','boire','manger','conduire'];
  List adjectives = ['belle','chaleureux','bon','rapide','extraordinaire'];
  List adverbs = ['extraodinairement', 'intuitivement','rapidement','courageusement'];
  for (var i = 0; i < 4; i++) // 
  {var rand1 = new Random().nextInt(4), rand2= new Random().nextInt(4) ,rand3 = new Random().nextInt(4) , rand4 =new Random().nextInt(4);
    var phrase = [noun[rand1],verbs[rand2],adjectives[rand3],adverbs[rand4]];
    print(phrase);
  }

}

void ex08_2(){
  var association = [
                     {"name": "ASG", "description": "Association de soccer de Gatineau"},
                     {"name": "LNH", "descrption": "Ligue National de Hockey"}
];
  List members = [
                     {"associationname": "ASG", "firstName": "Guillaume", "lastName": "Bernier", "email": "FB@gmail.com"},
                     {"associationname": "NHL", "firstName": "Alex", "lastName": "Ovechkin", "email": "Ovy@washcaps.com"},
                     {"associationname": "NHL", "firstName": "Thomas", "lastName": "Plekanec", "email": "Plecky@habs.com"}
                            ];
  Map<String, int> letterFrequency(String text) {
    String textWoutSpaces = 
        text.replaceAll(new RegExp(r'\W+'), '');
    List charList = textWoutSpaces.split('');
    //print(charList);
    charList.sort((ASG,NHL) => ASG.compareTo(NHL));
    var charMap = {};
    for (var char in charList) {
      charMap[char] = charMap.putIfAbsent(char, () => 0) + 1;
    }
    return charMap;
  }

    }


void main (){
  ex08_1;
  ex08_2;
}