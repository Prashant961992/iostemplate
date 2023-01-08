//
//	CSLoginRequest.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class CSLoginRequest : NSObject, NSCoding{

	var clientType : Int!
	var deviceId : String!
	var email : String!
	var password : String!
	var rememberMe : Bool!

    override init() {
        
    }
	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		clientType = dictionary["clientType"] as? Int
		deviceId = dictionary["deviceId"] as? String
		email = dictionary["email"] as? String
		password = dictionary["password"] as? String
		rememberMe = dictionary["rememberMe"] as? Bool
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if clientType != nil{
			dictionary["clientType"] = clientType
		}
		if deviceId != nil{
			dictionary["deviceId"] = deviceId
		}
		if email != nil{
			dictionary["email"] = email
		}
		if password != nil{
			dictionary["password"] = password
		}
		if rememberMe != nil{
			dictionary["rememberMe"] = rememberMe
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         clientType = aDecoder.decodeObject(forKey: "clientType") as? Int
         deviceId = aDecoder.decodeObject(forKey: "deviceId") as? String
         email = aDecoder.decodeObject(forKey: "email") as? String
         password = aDecoder.decodeObject(forKey: "password") as? String
         rememberMe = aDecoder.decodeObject(forKey: "rememberMe") as? Bool

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if clientType != nil{
			aCoder.encode(clientType, forKey: "clientType")
		}
		if deviceId != nil{
			aCoder.encode(deviceId, forKey: "deviceId")
		}
		if email != nil{
			aCoder.encode(email, forKey: "email")
		}
		if password != nil{
			aCoder.encode(password, forKey: "password")
		}
		if rememberMe != nil{
			aCoder.encode(rememberMe, forKey: "rememberMe")
		}

	}

}
