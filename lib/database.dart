// @dart=2.9


List<String> questions = [
  'كسر حرق ضرر مادي ذاكرة عشوائية رام Ram',

];

List<String> answer = [
  'ربما يكون مستخدم الكمبيوتر أو القائم بعملية الصيانة هو السبب الرئيسي فيها، حيث تكون الذاكرة العشوائية سليمة و تحتاج إلى صيانة كالتنظيف مثلا ثم تُكسر مما يؤدى إلى تلفها كمكون مادى و توقفها عن العمل، خاصة و أن الذاكرة العشوائية عبارة عن شريحة إلكترونية ضعيفة بعض الشيء و كذلك قد تتعرض الذاكرة العشوائية لتيار كهربائي عنيف أو درجة حرارة مرتفعة جداً يجب استبدال الذاكرة العشوائية بأخرى جديدة.',

];


String checkQuestion(String userInput){
  if(userInput == questions[0]){
    return answer[0];

  }else
    return "Not found";
}