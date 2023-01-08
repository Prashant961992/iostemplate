//
//	CSRegistrationRequest.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class CSRegistrationRequest : Decodable, NSCoding {

	var birthDate : String!
	var confirmPassword : String!
	var email : String!
	var firstName : String!
	var gender : Bool!
	var lastName : String!
	var password : String!

    init() {
        
    }
    
	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		birthDate = dictionary["birthDate"] as? String
		confirmPassword = dictionary["confirmPassword"] as? String
		email = dictionary["email"] as? String
		firstName = dictionary["firstName"] as? String
		gender = dictionary["gender"] as? Bool
		lastName = dictionary["lastName"] as? String
		password = dictionary["password"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if birthDate != nil{
			dictionary["birthDate"] = birthDate
		}
		if confirmPassword != nil{
			dictionary["confirmPassword"] = confirmPassword
		}
		if email != nil{
			dictionary["email"] = email
		}
		if firstName != nil{
			dictionary["firstName"] = firstName
		}
		if gender != nil{
			dictionary["gender"] = gender
		}
		if lastName != nil{
			dictionary["lastName"] = lastName
		}
		if password != nil{
			dictionary["password"] = password
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         birthDate = aDecoder.decodeObject(forKey: "birthDate") as? String
         confirmPassword = aDecoder.decodeObject(forKey: "confirmPassword") as? String
         email = aDecoder.decodeObject(forKey: "email") as? String
         firstName = aDecoder.decodeObject(forKey: "firstName") as? String
         gender = aDecoder.decodeObject(forKey: "gender") as? Bool
         lastName = aDecoder.decodeObject(forKey: "lastName") as? String
         password = aDecoder.decodeObject(forKey: "password") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if birthDate != nil{
			aCoder.encode(birthDate, forKey: "birthDate")
		}
		if confirmPassword != nil{
			aCoder.encode(confirmPassword, forKey: "confirmPassword")
		}
		if email != nil{
			aCoder.encode(email, forKey: "email")
		}
		if firstName != nil{
			aCoder.encode(firstName, forKey: "firstName")
		}
		if gender != nil{
			aCoder.encode(gender, forKey: "gender")
		}
		if lastName != nil{
			aCoder.encode(lastName, forKey: "lastName")
		}
		if password != nil{
			aCoder.encode(password, forKey: "password")
		}

	}

}
