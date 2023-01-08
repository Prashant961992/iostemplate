//
//	CSLoginResonse.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class CSLoginResonse : NSObject, NSCoding{

	var accessToken : String!
	var expiration : Int!
	var expiresIn : Int!
	var id : String!
	var refreshToken : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		accessToken = dictionary["access_token"] as? String
		expiration = dictionary["expiration"] as? Int
		expiresIn = dictionary["expires_in"] as? Int
		id = dictionary["id"] as? String
		refreshToken = dictionary["refresh_token"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if accessToken != nil{
			dictionary["access_token"] = accessToken
		}
		if expiration != nil{
			dictionary["expiration"] = expiration
		}
		if expiresIn != nil{
			dictionary["expires_in"] = expiresIn
		}
		if id != nil{
			dictionary["id"] = id
		}
		if refreshToken != nil{
			dictionary["refresh_token"] = refreshToken
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         accessToken = aDecoder.decodeObject(forKey: "access_token") as? String
         expiration = aDecoder.decodeObject(forKey: "expiration") as? Int
         expiresIn = aDecoder.decodeObject(forKey: "expires_in") as? Int
         id = aDecoder.decodeObject(forKey: "id") as? String
         refreshToken = aDecoder.decodeObject(forKey: "refresh_token") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if accessToken != nil{
			aCoder.encode(accessToken, forKey: "access_token")
		}
		if expiration != nil{
			aCoder.encode(expiration, forKey: "expiration")
		}
		if expiresIn != nil{
			aCoder.encode(expiresIn, forKey: "expires_in")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if refreshToken != nil{
			aCoder.encode(refreshToken, forKey: "refresh_token")
		}

	}

}