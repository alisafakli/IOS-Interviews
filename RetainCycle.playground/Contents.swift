//: Playground - noun: a place where people can play

class Person {
    let name: String!
    /*weak*/var apartment: Apartment?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Apartment {
    
    let number: Int!
    var tenant: Person? //Define weak for deinitialization
//    weak var tenant: Person?
    
    init(number: Int) {
        self.number = number
    }
    
    deinit {
        print("Apartment \(number) is being deinitialized")
    }
}

var bob: Person? = Person(name: "Bob")
var apt: Apartment? = Apartment(number: 111)
apt?.tenant = bob
bob?.apartment = apt

bob = nil
apt = nil





