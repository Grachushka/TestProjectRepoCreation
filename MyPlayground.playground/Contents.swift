import UIKit

var str = "Hello, playground"

var name=2.3333
var name2=2
var name3=name2+Int(name)
typealias number=Int
var chislo:number=44
var stringDate="stringDate"
var flag=true
if flag==false{
    print("loh")
}else {
    print("\(name) sosi")
}


var binokol="binokol"
var key="key"
binokol.append(key)

var n=20
for i in 0...n{
print("loh \(i)")
}

let names=["gena","valera","paha"]
names.count
var nameArray = [String]()
nameArray=["PIDOR"]


nameArray+=names
nameArray[0]="gg"
print(nameArray[0..<1])

if nameArray.isEmpty{
    print("EMPTY")
}


nameArray.insert("EMPTY", at: 2)
var dic=[30:"mama",1:"papa",2:"brat"]
dic[1]
dic.keys
dic.values
dic.removeValue(forKey: 30)
dic
for key in dic.keys{
    print("\(key) , value=\(dic[key]!)")
}
for (key,value) in dic{
    print("\(key) \(value)")
}
let oneTuple=("polina",4,3.0,false)
let (stringValue,intValue,doubleValue,booleanValue)=oneTuple
print(stringValue)


func say(){
    print("gg")
}
say()

var journalArray=[String]()

func addStudentToJournal(name:String, prof:String){

    journalArray.append(name)

    journalArray.append(prof)

}
addStudentToJournal(name: "Gena", prof: "Santehnik")
addStudentToJournal(name: "Jora", prof: "Mafia")

print(journalArray)

func sum(firstNumber:Int,secondNumber:Int)->Int{
    return firstNumber+secondNumber
}

print(sum(firstNumber: 2, secondNumber: 3))

let sumArray=[1,1,1,1,1]
func getSumArray(sumArray:[Int])->Int{
    print(sumArray)
    var sum=0
    for item in sumArray {
        sum=sum+item
        
    }
    return sum
}
var sum=getSumArray(sumArray: sumArray)
print(sum)


func doubleFunc(answer:Bool) -> () -> String{
    func firstAnswer()->String{
        return "YES"
    }
    func secondAnswer()->String{
        return "NO"
    }
    return answer ? firstAnswer : secondAnswer
}

var s=doubleFunc(answer: false)()
var stringWriter:String?
stringWriter="20.05.2018"
if let timeValue=stringWriter{
    print("gg \(timeValue)")
}else{
    print("can't help you!")
}

var day=0;
switch day {
case 1...4:
    print("WorkDay")
case 5:
    print("WorkDay Friday")
case 6...7:
    print("Weekend!")

default:
    print("I dont know this number of day!")
    break
}

enum People{
    case Vasya
    case Alex
    case Serega
}
let human=People.Alex

switch human{
case .Vasya:

    print("Vasya")
case .Alex:
    print("Alex")
case .Serega:
    print("Serega")

}
enum Garag{
    case BMW,MERCEDEC, VOLVO
}

var garagArray=[Garag]()

garagArray.append(Garag.BMW)
garagArray.append(Garag.MERCEDEC)
garagArray.append(Garag.VOLVO)

for item in garagArray{
    print(item)
}


class Worker{
    
    let prof=String("DevOps")
    var name=String()
    var age=Int()
    init(name:String,age:Int) {
        self.name=name
        self.age=age
    }
    func fun() -> Int {
        return age-5
    }
    
}

var objectWorker=Worker(name: "Petrov",age: 13)


print(objectWorker.name,objectWorker.age,objectWorker.fun(),objectWorker.prof)

struct WorkerStruct{
    var name:String
    var age:Int
 
    
}
var objectStructWorker=WorkerStruct(name: "Petuh", age: 32)
print(objectStructWorker)

struct Observer{
    var name:String{
    willSet{
    print("Новое значение \(newValue)")
    }
    didSet{
        name=name.capitalized
    print("Старое значение \(oldValue)")
        
        
    }
}
}

var obsStruct=Observer(name: "valeriya")
obsStruct.name="heroinaopHeroina"
print(obsStruct.name)


struct Person{
    var firstName:String
    var lastName:String
    var fullName:String{
        get{
            return firstName+" "+lastName
        }
        set{
            print("setter \(newValue)")
        }
    }
}
var objectPerson=Person(firstName: "Paul", lastName: "Procenko")
print(objectPerson.fullName)


var callBack: (Int, String)->() = { _,_  in}
//var array: [String] = []

DispatchQueue.global(qos: .default).async {
    for _ in 0...1000000{}
    
    //json
    //json["id"]
    //json["name"]
    callBack(23, "pidor")
}

callBack = { id, Name in
    
    
    print("\(id) \(Name)")
}
print("pidor1")


enum test: String{
    
    case paha = "paha", saha = "saha", vana = "vana"
    
    static let result = [paha.rawValue, saha.rawValue, vana.rawValue]
}

//var

print(test.result)

struct MyStruct{
    var name=String()
    
}

var struct1=MyStruct(name: "Genadiy")

class IOS_Students{
    var dateOfBirth=Date()
    var skills=String()
}

struct Create_Triangle{
    var angleA:Int
    var angleC:Int
    var sumAngls:Int{
        get{
            return angleA+angleC
        }
        set{
            
        }
    }
}
var realizeStruct=Create_Triangle(angleA: 20, angleC: 15)
realizeStruct.sumAngls

struct Rezume{
    var lastName=String()
    var firstName=String()
    var position=String()
    var expirience=Int()
    var phone=Int()
    var aboutYou=String()
}

struct JournalOfStudents{
    static var maxRating=5
    static var maxCharacterNames=15
    
    var name=String(){
        willSet{
           
        }
        didSet{
            if name.count>JournalOfStudents.maxCharacterNames{
                print("Имя не должно превышать 15 символов")
                name=oldValue
            }
            
            
        }
       
    }
    var lastName=String(){
        willSet{
            
        }
        didSet{
            if lastName.count>JournalOfStudents.maxCharacterNames{
                print("Имя не должно превышать 15 символов")
                lastName=oldValue
            }
            
            
        }
    }
        
    var rating=Int(){
        willSet{
            
        }
        didSet{
            if rating>JournalOfStudents.maxRating{
                print("Оценка не может быть больше 5")
                rating=oldValue
            }
            
            
        }
    }
    
    
}
var dddd=JournalOfStudents(name: "Gena", lastName:"Bukin", rating: 4)
dddd.rating=3
dddd.rating


class Pidor{
    func empty() {
print("message")
    }
    func withParams(name:String,age:Int) {
    print(name,age)
    }
    func sumOfResults(first:Int,second:Int) -> Int {
        return first+second
    }
}

var pidor=Pidor()
pidor.empty()
pidor.withParams(name: "zyablik", age: 8)
var resultOfReturn=pidor.sumOfResults(first: 2, second: 3)
print(resultOfReturn)

struct Table{
    var multi:Int
    subscript(index:Int)->Int{
        get{
            return multi*index
        }
        
    }
}
var tableResult=Table(multi: 3)
tableResult[10]

class Humans{
    var name=String()
    var height=Double()
    var weight=Double()
    var sex=String()
    init(name:String,height:Double,weight:Double,sex:String) {
        self.name=name
        self.height=height
        self.weight=weight
        self.sex=sex
        
    }
    func say()->String{
        return "\(name) \(height) \(weight) \(sex)"
    }
}
class Chief:Humans{
    override func say() -> String {
        return super.say()+" I'm chief!"
    }
}
class Manager:Humans{
    override func say() ->String{
        return super.say()+" I'm a manager!"
    }
}
class Fighter:Humans{
    override func say() ->String{
        return super.say()+" I'm a fighter!"
    }
}
class Paul:Humans{
 
    var hobbyes=String()
    var rating=Double()
    init(name: String, height: Double, weight: Double, sex: String, hobbyes:String, rating:Double) {
        super.init(name: name, height: height, weight: weight, sex: sex)
        self.hobbyes=hobbyes
        self.rating=rating
    }
    override func say() ->String{
        return super.say()+" I'm a Paul ! \(hobbyes) \(rating)"
    }
    }

var humans=Humans(name: "Human", height: 2, weight:80 , sex: "Man")
var chief=Chief(name: "Chief", height: 2, weight: 65, sex: "Man")
var manager=Manager(name: "Manager", height: 2, weight: 60, sex: "Man")
var fighter=Fighter(name: "Alisa", height: 1.5, weight: 45, sex: "Woman")
var paul=Paul(name: "Paul", height: 3, weight: 12, sex: "Man", hobbyes: "Swimming", rating: 4)
var arrayOfHumans=[humans,chief,manager,fighter,paul]

for human in arrayOfHumans {
    var phrase=human.say()
    print(String(phrase.reversed()))
    
    
}
class Martian{
    var countOfHeads=Int()
    var countOfHands=Int()
    var countOfLegs=Int()
    var nameOfMartian=String()
    init(countOfHeads:Int,countOfHands:Int,countOfLegs:Int,nameOfMartian:String) {
        self.countOfHands=countOfHands
        self.countOfHeads=countOfHeads
        self.countOfLegs=countOfLegs
        self.nameOfMartian=nameOfMartian
    }
    func say(){
        print("I'm Martianin!")
        
    }
}
class HumanMartianin: Martian{
    override func say() {
        print("I'm HumanMartianin!")
    }
}
class NotHumanMartianin:Martian{
    override func say() {
        print("I'm not HumanMartianin")
    }
}
var martian=Martian(countOfHeads: 2, countOfHands: 3, countOfLegs: 8, nameOfMartian: "Bitch")

var arrayOfHumans2:[AnyObject]=[humans,chief,manager,fighter,paul,martian]


for item in arrayOfHumans2{
    if let person=item as? Humans{
        var phrase = person.say()
        print(phrase)
        
    }
    if let person=item as? Martian{
        person.say()
    }
}
