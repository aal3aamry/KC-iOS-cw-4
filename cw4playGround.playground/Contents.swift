import UIKit

var name = "Abdulrahman"
var birthdayYear = 2005
var age : Int
var currentYear = 2022
var numb1 = "8"
var numb2 = 4
var result : Double
age = currentYear - birthdayYear

print("Hello my name is \(name) and my age is \(age) ")

if age >= 14 && age <= 18
{
    print("نعم يمكنك المشاركة في الكويت تبرمج")
}
else {
    print(" لا يمكنك المشاركة في الكويت تبرمج")
}
result = (Double(numb1) ?? 0) + (Double(numb2))
print(result)
