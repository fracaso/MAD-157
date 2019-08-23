import UIKit



class AgeAtYear{
    var dob:Date
    
    // Init the Class
    init(dateOfBirth:Date){
        self.dob = dateOfBirth
    }
    
    // Year at Age takes any decimal age and approximates the year
    func yearAtAge(age:Double)->Int{
        // Break Date Age into Parts
        let wholeYear:Int = Int(age.rounded(.down))
        let wholeMonth:Int = Int(((age - Double(wholeYear)) * 12).rounded(.down))
        let wholeDay:Int = Int(((age - Double(wholeYear + (wholeMonth / 12))) * 30).rounded(.up))
        
        // Create Date Components Structure and fill it
        var dateComp = DateComponents()
        
        dateComp.year = wholeYear
        dateComp.month = wholeMonth
        dateComp.day = wholeDay
        
        // Set return Year
        // I would handle this differently if playground handled inputs and outputs better
        var returnYear = 0
        
        // Grapple with optional
        if let returnDate = Calendar.current.date(byAdding: dateComp, to: self.dob){
            returnYear = Calendar.current.component(.year, from: returnDate)
        }

        return returnYear
    }
    
}

// Create input birthdate
var myBirthDate = DateComponents()
myBirthDate.year = 1973
myBirthDate.month = 9
myBirthDate.day = 28

// Implement Class
if let myDate = Calendar.current.date(from:myBirthDate){
    let me = AgeAtYear(dateOfBirth: myDate)
    
    print(me.yearAtAge(age: 46))
    
}

