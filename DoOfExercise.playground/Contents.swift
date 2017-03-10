import UIKit

func topla(sayi1:Int ,sayi2:Int) -> Int{


return sayi1 + sayi2
}

func cikar(sayi1:Int,sayi2:Int)-> Int{

return sayi1 - sayi2
}

//: Aşağıdaki array bazı kelimeler içeriyor. Sentence adında bir String'e array'in 6. ve 7. elemanlarını yerleştirerek bir cümle oluşturuyoruz. SillySentence adındaki String ise random olarak array'in içerisinden seçtiğimiz kelimeleri yerleştirerek rastgele bir cümle oluşturuyoruz.

let nounArray = ["köpek", "laptop", "okyanus","uygulama", "inek", "kaykay", "geliştirici", "kahve", "ay"]

let index1 = Int(arc4random()%9)
let index2 = Int(arc4random()%9)

let sentece = "\(nounArray[6]) \(nounArray[7]) döktü."

let sillysentece = "\(nounArray[index1]) \(nounArray[index2]) üzerine"

//: Yukarıda öğrendiğimiz bilgilere dayanarak haftanın en sevdiğim günün ...'dır random stringini oluşturunuz.

let hafta = ["pazartesi","salı","çarşamba","perşembe","cuma","cumartesi","pazar"]

let index3 = Int(arc4random()%7)

let gün = "haftanın en sevdiğim günü \(hafta[index3])'dir."

//: shoutString'i didYouKnowString'ini kullanarak yeniden oluşturunuz.
let didYouKnowString = "Did you know that the Swift String class comes with lots of useful methods?"

let whisperString = "psst" + ", " + didYouKnowString.lowercased()
var shoutString =  "HEY! DID YOU KNOW THAT THE SWIFT STRING CLASS COMES WITH LOTS OF USEFUL METHODS?"
shoutString = "HEY! \(didYouKnowString.uppercased())"

//: Aşağıdaki String'de kaç karakter bulunur?
let howManyCharacters = "How much wood could a woodchuck chuck if a woodchuck could chuck wood?"
howManyCharacters.characters.count

var countt = 0
for say in howManyCharacters.characters
{
    countt+=1
}

print(countt)


//: Aşağıdaki String'de kaç adet "g" veya "G" olduğunu for-in döngüsü kullanarak bulunuz.
let gString = "Gary's giraffe gobbled gooseberries greedily"

var count = 0

for kac in gString.characters{
    
    if( kac == "g" || kac == "G" ){
       count = count + 1
    }
}
print(count)

//: Aşağıdaki String'in "tuna" kelimesini içerip içermediğini programmatik olarak bulunuz.
let word = "fortunate"

var counttt = 0

if (word.contains("tuna")) {
    print("var")
}else{
print("yok")
}


//: Aşağıdaki String'den "like" kelimelerinin tamamını silecek programı yazınız.
var lottaLikes = "If like, you wanna learn Swift, like, you should build lots of small apps, cuz it's like, a good way to practice."

lottaLikes.replacingOccurrences(of: "like", with: "")


// Example
let sillyMonkeyString = "A monkey stole my iPhone"
let newString = sillyMonkeyString.replacingOccurrences(of: "monkey", with: "🐒")
let newerString = newString.replacingOccurrences(of: "iPhone", with: "📱")
//: Yukarıdaki işlemi for-in döngüsü kullanarak tekrarlayınız.
//: Aşağıdaki dictionary ve string'i kullanabilirsiniz.
let dictionary = ["monkey": "🐒", "iPhone":"📱"]
var degis = sillyMonkeyString
for (key,value) in dictionary{

    degis = degis.replacingOccurrences(of: key, with: value)

}
print(degis)


//: Zeynep kuruş kuruş para biriktirmektedir. Mevcut parasını TL'ye çevirmesine yardım ediniz.
// Example
let numOfPennies = 567
//beklenen output = "$5.67"

let lira = numOfPennies / 100
let kurus = numOfPennies % 100

print("\(lira).\(kurus)")

//: Aşağıdaki kod bir String'i ters çevirebilir. Tanımlanan: stringToReverse ve reversedString değerlerine bir göz atınız. Hangisinin var hangisinin let ile tanımlanması gerektiğine karar veriniz. İşiniz bittiği zaman code'u uncomment ederek derlenebilir biçime getirip kontrol ediniz.

let stringToReverse = "Mutable or Immutable? That is the question." //TODO:Choose let or var
var reversedString = "" //TODO:Choose let or var
for character in stringToReverse.characters {
    reversedString = "\(character)" + reversedString
}
print(reversedString)

















