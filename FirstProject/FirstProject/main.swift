
import Foundation

// dğişkenler
let x = 7
var y = 65
var z = 45

print("z=\(z)")
print("x=\(x)")

y = y + 4

print("y=\(y)")

var c : Double = 0.0
print("c=\(c)")

// diziler

var d : [Int] = [2,232,4,54,56,767,0,6878,8,8]

var dizi : Dictionary <Int, String> = [12: "sed", 123 : "kub", 35 : "dil" ,  57: "cal" ]


print("DİZİ...")


for i in d
{
print(i)
}



print("SÖZLÜK..")


for i in dizi
{
print(i)
}

// donguler

var a = 7
let b = 8

if a>b
{
print(" \(a) büyüktür \(b) den")

} else
{
print("\(a) küçüktür \(b) den")
}



/*
 Sayı Toplama;
  1 den n sayısına kadar sayıların toplamı.
 1+2+3 ....+ n = ?
*/

var n=20

var s:Int=0

var i:Int

/*for i=1;i<=n;i =+1
    
{ s = s + i
    
}

print("1+2+3+...\(n)=\(s)")

*/

// let öğreniyoruz.

let label = "selam arkadaş "
let with = 78
let labelwith = "ben arkadşınım yeni yıll da \(with) yaşına girdim."
print(labelwith)

// Example 1 

let individualScore = [54,869,968,34,5,3,5356,636,56,3,32,43]
var teamScore = 0
for score in individualScore {
    if score < 100 {
    teamScore += 4
    } else{
        teamScore += 1
    }
}
print(teamScore)


// exam2

let days = ["pazartesi","salı","çarşamaba","perşembe","cuma","cumartesi","pazar"]
let index1 = Int(arc4random()%7)




















































