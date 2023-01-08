//
//	CSRegistrationResponse.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


final class CSRegistrationResponse : Decodable, NSCoding{

	var accessFailedCount : Int!
	var archived : Bool!
	var birthDate : String!
	var claims : [String]!
	var created : String!
	var csDepartmentID : String!
	var csNotificationSubscribers : [String]!
	var csPropertyID : String!
	var deviceID : String!
	var displayName : String!
	var email : String!
	var emailConfirmed : Bool!
	var firstName : String!
	var gender : Bool!
	var id : String!
	var imageURL : String!
	var lastModified : String!
	var lastName : String!
	var lockoutEnabled : Bool!
	var lockoutEndDateUtc : String!
	var logins : [String]!
	var mobile : String!
	var passwordHash : String!
	var phoneNumber : String!
	var phoneNumberConfirmed : Bool!
	var roles : [String]!
	var securityStamp : String!
	var twoFactorEnabled : Bool!
	var userName : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		accessFailedCount = dictionary["accessFailedCount"] as? Int
		archived = dictionary["archived"] as? Bool
		birthDate = dictionary["birthDate"] as? String
		claims = dictionary["claims"] as? [String]
		created = dictionary["created"] as? String
		csDepartmentID = dictionary["csDepartmentID"] as? String
		csNotificationSubscribers = dictionary["csNotificationSubscribers"] as? [String]
		csPropertyID = dictionary["csPropertyID"] as? String
		deviceID = dictionary["deviceID"] as? String
		displayName = dictionary["displayName"] as? String
		email = dictionary["email"] as? String
		emailConfirmed = dictionary["emailConfirmed"] as? Bool
		firstName = dictionary["firstName"] as? String
		gender = dictionary["gender"] as? Bool
		id = dictionary["id"] as? String
		imageURL = dictionary["imageURL"] as? String
		lastModified = dictionary["lastModified"] as? String
		lastName = dictionary["lastName"] as? String
		lockoutEnabled = dictionary["lockoutEnabled"] as? Bool
		lockoutEndDateUtc = dictionary["lockoutEndDateUtc"] as? String
		logins = dictionary["logins"] as? [String]
		mobile = dictionary["mobile"] as? String
		passwordHash = dictionary["passwordHash"] as? String
		phoneNumber = dictionary["phoneNumber"] as? String
		phoneNumberConfirmed = dictionary["phoneNumberConfirmed"] as? Bool
		roles = dictionary["roles"] as? [String]
		securityStamp = dictionary["securityStamp"] as? String
		twoFactorEnabled = dictionary["twoFactorEnabled"] as? Bool
		userName = dictionary["userName"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if accessFailedCount != nil{
			dictionary["accessFailedCount"] = accessFailedCount
		}
		if archived != nil{
			dictionary["archived"] = archived
		}
		if birthDate != nil{
			dictionary["birthDate"] = birthDate
		}
		if claims != nil{
			dictionary["claims"] = claims
		}
		if created != nil{
			dictionary["created"] = created
		}
		if csDepartmentID != nil{
			dictionary["csDepartmentID"] = csDepartmentID
		}
		if csNotificationSubscribers != nil{
			dictionary["csNotificationSubscribers"] = csNotificationSubscribers
		}
		if csPropertyID != nil{
			dictionary["csPropertyID"] = csPropertyID
		}
		if deviceID != nil{
			dictionary["deviceID"] = deviceID
		}
		if displayName != nil{
			dictionary["displayName"] = displayName
		}
		if email != nil{
			dictionary["email"] = email
		}
		if emailConfirmed != nil{
			dictionary["emailConfirmed"] = emailConfirmed
		}
		if firstName != nil{
			dictionary["firstName"] = firstName
		}
		if gender != nil{
			dictionary["gender"] = gender
		}
		if id != nil{
			dictionary["id"] = id
		}
		if imageURL != nil{
			dictionary["imageURL"] = imageURL
		}
		if lastModified != nil{
			dictionary["lastModified"] = lastModified
		}
		if lastName != nil{
			dictionary["lastName"] = lastName
		}
		if lockoutEnabled != nil{
			dictionary["lockoutEnabled"] = lockoutEnabled
		}
		if lockoutEndDateUtc != nil{
			dictionary["lockoutEndDateUtc"] = lockoutEndDateUtc
		}
		if logins != nil{
			dictionary["logins"] = logins
		}
		if mobile != nil{
			dictionary["mobile"] = mobile
		}
		if passwordHash != nil{
			dictionary["passwordHash"] = passwordHash
		}
		if phoneNumber != nil{
			dictionary["phoneNumber"] = phoneNumber
		}
		if phoneNumberConfirmed != nil{
			dictionary["phoneNumberConfirmed"] = phoneNumberConfirmed
		}
		if roles != nil{
			dictionary["roles"] = roles
		}
		if securityStamp != nil{
			dictionary["securityStamp"] = securityStamp
		}
		if twoFactorEnabled != nil{
			dictionary["twoFactorEnabled"] = twoFactorEnabled
		}
		if userName != nil{
			dictionary["userName"] = userName
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         accessFailedCount = aDecoder.decodeObject(forKey: "accessFailedCount") as? Int
         archived = aDecoder.decodeObject(forKey: "archived") as? Bool
         birthDate = aDecoder.decodeObject(forKey: "birthDate") as? String
         claims = aDecoder.decodeObject(forKey: "claims") as? [String]
         created = aDecoder.decodeObject(forKey: "created") as? String
         csDepartmentID = aDecoder.decodeObject(forKey: "csDepartmentID") as? String
         csNotificationSubscribers = aDecoder.decodeObject(forKey: "csNotificationSubscribers") as? [String]
         csPropertyID = aDecoder.decodeObject(forKey: "csPropertyID") as? String
         deviceID = aDecoder.decodeObject(forKey: "deviceID") as? String
         displayName = aDecoder.decodeObject(forKey: "displayName") as? String
         email = aDecoder.decodeObject(forKey: "email") as? String
         emailConfirmed = aDecoder.decodeObject(forKey: "emailConfirmed") as? Bool
         firstName = aDecoder.decodeObject(forKey: "firstName") as? String
         gender = aDecoder.decodeObject(forKey: "gender") as? Bool
         id = aDecoder.decodeObject(forKey: "id") as? String
         imageURL = aDecoder.decodeObject(forKey: "imageURL") as? String
         lastModified = aDecoder.decodeObject(forKey: "lastModified") as? String
         lastName = aDecoder.decodeObject(forKey: "lastName") as? String
         lockoutEnabled = aDecoder.decodeObject(forKey: "lockoutEnabled") as? Bool
         lockoutEndDateUtc = aDecoder.decodeObject(forKey: "lockoutEndDateUtc") as? String
         logins = aDecoder.decodeObject(forKey: "logins") as? [String]
         mobile = aDecoder.decodeObject(forKey: "mobile") as? String
         passwordHash = aDecoder.decodeObject(forKey: "passwordHash") as? String
         phoneNumber = aDecoder.decodeObject(forKey: "phoneNumber") as? String
         phoneNumberConfirmed = aDecoder.decodeObject(forKey: "phoneNumberConfirmed") as? Bool
         roles = aDecoder.decodeObject(forKey: "roles") as? [String]
         securityStamp = aDecoder.decodeObject(forKey: "securityStamp") as? String
         twoFactorEnabled = aDecoder.decodeObject(forKey: "twoFactorEnabled") as? Bool
         userName = aDecoder.decodeObject(forKey: "userName") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if accessFailedCount != nil{
			aCoder.encode(accessFailedCount, forKey: "accessFailedCount")
		}
		if archived != nil{
			aCoder.encode(archived, forKey: "archived")
		}
		if birthDate != nil{
			aCoder.encode(birthDate, forKey: "birthDate")
		}
		if claims != nil{
			aCoder.encode(claims, forKey: "claims")
		}
		if created != nil{
			aCoder.encode(created, forKey: "created")
		}
		if csDepartmentID != nil{
			aCoder.encode(csDepartmentID, forKey: "csDepartmentID")
		}
		if csNotificationSubscribers != nil{
			aCoder.encode(csNotificationSubscribers, forKey: "csNotificationSubscribers")
		}
		if csPropertyID != nil{
			aCoder.encode(csPropertyID, forKey: "csPropertyID")
		}
		if deviceID != nil{
			aCoder.encode(deviceID, forKey: "deviceID")
		}
		if displayName != nil{
			aCoder.encode(displayName, forKey: "displayName")
		}
		if email != nil{
			aCoder.encode(email, forKey: "email")
		}
		if emailConfirmed != nil{
			aCoder.encode(emailConfirmed, forKey: "emailConfirmed")
		}
		if firstName != nil{
			aCoder.encode(firstName, forKey: "firstName")
		}
		if gender != nil{
			aCoder.encode(gender, forKey: "gender")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if imageURL != nil{
			aCoder.encode(imageURL, forKey: "imageURL")
		}
		if lastModified != nil{
			aCoder.encode(lastModified, forKey: "lastModified")
		}
		if lastName != nil{
			aCoder.encode(lastName, forKey: "lastName")
		}
		if lockoutEnabled != nil{
			aCoder.encode(lockoutEnabled, forKey: "lockoutEnabled")
		}
		if lockoutEndDateUtc != nil{
			aCoder.encode(lockoutEndDateUtc, forKey: "lockoutEndDateUtc")
		}
		if logins != nil{
			aCoder.encode(logins, forKey: "logins")
		}
		if mobile != nil{
			aCoder.encode(mobile, forKey: "mobile")
		}
		if passwordHash != nil{
			aCoder.encode(passwordHash, forKey: "passwordHash")
		}
		if phoneNumber != nil{
			aCoder.encode(phoneNumber, forKey: "phoneNumber")
		}
		if phoneNumberConfirmed != nil{
			aCoder.encode(phoneNumberConfirmed, forKey: "phoneNumberConfirmed")
		}
		if roles != nil{
			aCoder.encode(roles, forKey: "roles")
		}
		if securityStamp != nil{
			aCoder.encode(securityStamp, forKey: "securityStamp")
		}
		if twoFactorEnabled != nil{
			aCoder.encode(twoFactorEnabled, forKey: "twoFactorEnabled")
		}
		if userName != nil{
			aCoder.encode(userName, forKey: "userName")
		}

	}

}
