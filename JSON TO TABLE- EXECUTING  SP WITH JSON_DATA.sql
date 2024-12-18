------------------JSON TO TABLE: BRIDGING UNSTRUCTURED AND STRUCTURED DATA----------------

--READING AND STORING JSON DATA INTO T_PC_REFERRALS TABLE
DECLARE @JSON NVARCHAR(MAX) ='[{
   "id":"0cecbaa3-4de0-4d7c-a221-36281c2efe46",
   "engagementId":"1352e03d-281b-49ef-acf5-0eb2b2dd3b13",
   "name":"Test",
   "organizationId":"26a76e1f-bc4e-4718-8d76-a6c7ea3cef48",
   "organizationName":"TESTTESTChrisVAR05",
   "lastModifiedVia":null,
   "lastRunId":null,
   "externalReferenceId":"",
   "createdDateTime":"2022-02-28T17:27:47.8754901Z",
   "updatedDateTime":"2022-03-07T06:29:18.8245671Z",
   "expirationDateTime":null,
   "status":"Active",
   "substatus":"Accepted",
   "statusReason":null,
   "qualification":"None",
   "type":"Independent",
   "referralSource":null,
   "eTag":"\"84001c9d-0000-0100-0000-6225a63e0000\"",
   "favorite":false,
   "campaignId":"",
   "salesStage":"100",
   "quality":"Unknown",
   "isSpam":false,
   "direction":"Incoming",
   "mpnId":"4863040",
   "referralProgram":null,
   "dealSensitivity":"None",
   "createdVia":null,
   "tags":[
      
   ],
   "acceptedDateTime":"2022-02-28T17:27:47.8742597Z",
   "closedDateTime":null,
   "callToAction":null,
   "registrationStatus":"None",
   "target":[
      
   ],
   "customerProfile":{
      "name":"TESTING LIMITED",
      "size":null,
      "isMatchingComplete":true,
      "address":{
         "addressLine1":"4-87, Sultanbazar, Koti",
         "addressLine2":"",
         "city":"Hyderabad",
         "state":"",
         "postalCode":"500095",
         "country":"IN",
         "region":null
      },
      "team":
         {
            "firstName":"Laura",
            "lastName":"Test",
            "phoneNumber":"869685198",
            "email":"partner@testing.com",
            "title":null,
            "contactPreference":{
               "locale":null,
               "disableNotifications":null
            }
         }
      ,
      "ids":[
         {
            "profileType":"Duns",
            "id":""
         },
         {
            "profileType":"External",
            "id":"6-EC3LOVPHK"
         }
      ]
   },
   "consent":{
      "consentToToShareInfoWithOthers":true,
      "consentToContact":true,
      "consentToShareReferralWithMicrosoftSellers":true
   },
   "details":{
      "notes":"",
      "dealValue":120,
      "currency":"INR",
      "closingDateTime":"2022-02-25T00:00:00Z",
      "customerRequestedContact":null,
      "customerAction":null,
      "incentiveLevel":null,
      "requirements":{
         "industries":[
            
         ],
         "products":[
            
         ],
         "services":[
            
         ],
         "solutions":[
            {
               "id":"SOL-2173-UYM",
               "name":null,
               "type":"None",
               "price":null,
               "quantity":null,
               "currency":null,
               "publisherName":null,
               "solutionType":null,
               "closingDateTime":null
            }
         ],
         "offers":[
            
         ],
         "salesPlays":[
            
         ],
         "additionalRequirements":{
            "iot":{
               "customerLicenseAgreementNumber":null,
               "deviceCategory":null,
               "siliconType":null,
               "azureCertifiedDevice":false,
               "attachServices":false
            }
         }
      }
   },
   "team":
      {
         "firstName":"Bobby",
         "lastName":"Hunter",
         "phoneNumber":"7212193598",
         "email":"partner@testing.com",
         "title":null,
         "contactPreference":{
            "locale":null,
            "disableNotifications":null
         }
      }
   ,
   "inviteContext":{
      "notes":null,
      "assistanceRequestCode":"Unknown",
      "invitedMpnId":"4863040",
      "invitedBy":{
         "organizationId":"26a76e1f-bc4e-4718-8d76-a6c7ea3cef48",
         "organizationName":"cyotorg30"
      }
   },
   "links":{
      "relatedReferrals":{
         "uri":"https://api.partner.microsoft-ppe.com/v1.0/engagements/referrals?$filter=engagementId eq 1352e03d-281b-49ef-acf5-0eb2b2dd3b13",
         "method":"GET"
      },
      "self":{
         "uri":"https://api.partner.microsoft-ppe.com/v1.0/engagements/referrals/0cecbaa3-4de0-4d7c-a221-36281c2efe46",
         "method":"GET"
      }
   },
   "trackingInfo":{
      "microsoftMsxId":null,
      "microsoftUSFedOpportunityId":null,
      "microsoftUSFedLeadId":null,
      "migratedPSCDealId":null,
      "migratedPSCPartnerDealId":null
   },
   "registrations":[
      
   ]
},
{
   "id":"5dd4dc44-2c1a-4e16-8478-f783ebe815de",
   "engagementId":"65921e35-4f28-472f-9ae4-58ddd6ae6270",
   "name":"Integration_Test_Referral",
   "organizationId":"b97870f2-fb0f-4b44-b597-992d4ecbe23d",
   "organizationName":"TEST_TEST_REFERRALS_PPE_DEV01",
   "lastModifiedVia":null,
   "lastRunId":null,
   "externalReferenceId":null,
   "createdDateTime":"2022-03-07T05:08:23.810144Z",
   "updatedDateTime":"2022-03-07T09:18:01.6076542Z",
   "expirationDateTime":null,
   "status":"Closed",
   "substatus":"Won",
   "statusReason":null,
   "qualification":"SalesQualified",
   "type":"Shared",
   "referralSource":null,
   "eTag":"\"8500e212-0000-0100-0000-6225cdc90000\"",
   "favorite":false,
   "campaignId":null,
   "salesStage":"100",
   "quality":"Unknown",
   "isSpam":false,
   "direction":"Incoming",
   "mpnId":"6115379",
   "referralProgram":null,
   "dealSensitivity":"None",
   "createdVia":null,
   "tags":[
      
   ],
   "acceptedDateTime":"2022-03-07T05:08:23.7620478Z",
   "closedDateTime":"2022-03-07T09:17:38.3518014Z",
   "callToAction":null,
   "registrationStatus":"ReviewPending",
   "target":[
      {
         "type":"SolutionProfile",
         "id":"SOL-6115380-IPC"
      }
   ],
   "customerProfile":{
      "name":"Integration_Test_Customer",
      "size":"",
      "isMatchingComplete":true,
      "address":{
         "addressLine1":"Lake hills",
         "addressLine2":"",
         "city":"Bellevue",
         "state":null,
         "postalCode":"98004",
         "country":"US",
         "region":"WA"
      },
      "team":
         {
            "firstName":"abb",
            "lastName":"sss",
            "phoneNumber":"4444444444",
            "email":"a@b.llc",
            "title":null,
            "contactPreference":{
               "locale":null,
               "disableNotifications":null
            }
         }
      ,
      "ids":[
         {
            "profileType":"External",
            "id":"1-15NFGVZ"
         }
      ]
   },
   "consent":{
      "consentToToShareInfoWithOthers":true,
      "consentToContact":true,
      "consentToShareReferralWithMicrosoftSellers":true
   },
   "details":{
      "notes":"update",
      "dealValue":30000,
      "currency":"USD",
      "closingDateTime":"2022-03-24T18:30:00Z",
      "customerRequestedContact":null,
      "customerAction":null,
      "incentiveLevel":null,
      "requirements":{
         "industries":[
            {
               "id":"Education"
            }
         ],
         "products":[
            {
               "id":"Office"
            }
         ],
         "services":[
            {
               "id":"Licensing"
            }
         ],
         "solutions":[
            {
               "id":"SOL-6115380-IPC",
               "name":null,
               "type":"Name",
               "price":null,
               "quantity":null,
               "currency":null,
               "publisherName":null,
               "solutionType":null,
               "closingDateTime":null
            }
         ],
         "offers":[
            
         ],
         "salesPlays":[
            
         ],
         "additionalRequirements":{
            "iot":{
               "customerLicenseAgreementNumber":null,
               "deviceCategory":null,
               "siliconType":null,
               "azureCertifiedDevice":false,
               "attachServices":false
            }
         }
      }
   },
   "team":
      {
         "firstName":"Kyle",
         "lastName":"Todd",
         "phoneNumber":null,
         "email":"kyle.todd@xxx.com",
         "title":null,
         "contactPreference":{
            "locale":"en-us",
            "disableNotifications":null
         }
      }
   ,
   "inviteContext":{
      "notes":"test agent notes to partner in v2",
      "assistanceRequestCode":"Unknown",
      "invitedMpnId":null,
      "invitedBy":{
         "organizationId":"b97870f2-fb0f-4b44-b597-992d4ecbe23d",
         "organizationName":"TEST_TEST_REFERRALS_PPE_DEV01"
      }
   },
   "links":{
      "relatedReferrals":{
         "uri":"https://api.partner.microsoft-ppe.com/v1.0/engagements/referrals?$filter=engagementId eq 65921e35-4f28-472f-9ae4-58ddd6ae6270",
         "method":"GET"
      },
      "self":{
         "uri":"https://api.partner.microsoft-ppe.com/v1.0/engagements/referrals/5dd4dc44-2c1a-4e16-8478-f783ebe815de",
         "method":"GET"
      }
   },
   "trackingInfo":{
      "microsoftMsxId":null,
      "microsoftUSFedOpportunityId":null,
      "microsoftUSFedLeadId":null,
      "migratedPSCDealId":null,
      "migratedPSCPartnerDealId":null
   }
},
{
	"id": "302d9c01-7bd6-4a99-b38d-bad528144545",
	"engagementId": "f889cdf9-8e09-4126-a1df-46e0ab69bcda",
	"name": "iManage Jones Day",
	"organizationId": "355e66da-9f6c-43bb-a13a-0885ebaabd5c",
	"organizationName": "iManage",
	"lastModifiedVia": null,
	"lastRunId": null,
	"externalReferenceId": null,
	"createdDateTime": "2022-02-25T13:49:42.887627Z",
	"updatedDateTime": "2022-02-25T15:15:08.2670935Z",
	"expirationDateTime":"2022-06-25T15:15:08.2670935Z",
	"status": "Active",
	"substatus": "Accepted",
	"statusReason": null,
	"qualification": "SalesQualified",
	"type": "Shared",
	"referralSource": null,
	"eTag": "\"6700f96c-0000-1000-0000-6218f27c0000\"",
	"favorite": false,
	"campaignId": null,
	"salesStage": null,
	"quality": "Unknown",
	"isSpam": false,
	"direction": "Incoming",
	"mpnId": "6193175",
	"referralProgram": null,
	"dealSensitivity": "None",
	"createdVia": null,
	"tags": [],
	"acceptedDateTime": "2022-02-25T13:49:42.2166047Z",
	"closedDateTime": null,
	"callToAction": null,
	"registrationStatus": "None",
	"target": [
		{
			"type": "SolutionProfile",
			"id": "d84be20e-6710-42f5-a009-5e72a9ad50bf"
		}
	],
	"customerProfile": {
		"name": "JONES DAY LIMITED PARTNERSHIP",
		"size": "",
		"isMatchingComplete": false,
		"address": {
			"addressLine1": "N POINT 901 LAKESIDE AVE",
			"addressLine2": null,
			"city": "CLEVELAND",
			"state": null,
			"postalCode": "44114",
			"country": "US",
			"region": "OH"
		},
		"team": 
			{
				"firstName": "Candia",
				"lastName": "Sweet",
				"phoneNumber": "2165863939",
				"email": "clsweet@jonesday.com",
				"title": null,
				"contactPreference": {
					"locale": null,
					"disableNotifications": true
				}
			}
		,
		"ids": []
	},
	"consent": {
		"consentToToShareInfoWithOthers": true,
		"consentToContact": true,
		"consentToShareReferralWithMicrosoftSellers": true
	},
	"details": {
		"notes": null,
		"dealValue": 1000000,
		"currency": "USD",
		"closingDateTime": "2022-06-29T23:00:00Z",
		"customerRequestedContact": null,
		"customerAction": null,
		"incentiveLevel": null,
		"requirements": {
			"industries": [],
			"products": [],
			"services": [],
			"solutions": [
				{
					"id": "d84be20e-6710-42f5-a009-5e72a9ad50bf",
					"name": "iManage Private Law and Professional Service Firms",
					"type": "Name",
					"price": null,
					"quantity": null,
					"currency": null,
					"publisherName": null,
					"solutionType": null,
					"closingDateTime": null
				}
			],
			"salesPlays": [],
			"additionalRequirements": {
				"iot": {
					"customerLicenseAgreementNumber": null,
					"deviceCategory": null,
					"siliconType": null,
					"azureCertifiedDevice": false,
					"attachServices": false
				}
			}
		}
	},
	"team": 
		
		{
			"firstName": "Brian",
			"lastName": "Roberts ",
			"phoneNumber": "9174566524",
			"email": "brian.roberts@imanage.com",
			"title": null,
			"contactPreference": {
				"locale": null,
				"disableNotifications": null
			}
		}
	,
	"inviteContext": {
		"notes": null,
		"assistanceRequestCode": "Unknown",
		"invitedMpnId": "6193175",
		"invitedBy": {
			"organizationId": "355e66da-9f6c-43bb-a13a-0885ebaabd5c",
			"organizationName": "iManage"
		}
	},
	"links": {
		"relatedReferrals": {
			"uri": "https://api.partner.microsoft.com/v1.0/engagements/referrals?$filter=engagementId eq f889cdf9-8e09-4126-a1df-46e0ab69bcda",
			"method": "GET"
		},
		"self": {
			"uri": "https://api.partner.microsoft.com/v1.0/engagements/referrals/302d9c01-7bd6-4a99-b38d-bad528144545",
			"method": "GET"
		}
	},
	"trackingInfo": {
		"microsoftMsxId": null,
		"microsoftUSFedOpportunityId": null,
		"microsoftUSFedLeadId": null,
		"migratedPSCDealId": null,
		"migratedPSCPartnerDealId": null
	},
	"registrations": []
},
{
	"id": "a2546b7e-34d9-46f9-84d2-af085aaec40f",
	"engagementId": "66b72794-3581-4eda-968d-837ea0730ac9",
	"name": "iManage Enterprise ",
	"organizationId": "355e66da-9f6c-43bb-a13a-0885ebaabd5c",
	"organizationName": "iManage",
	"lastModifiedVia": null,
	"lastRunId": null,
	"externalReferenceId": null,
	"createdDateTime": "2022-02-25T17:54:36.1961744Z",
	"updatedDateTime": "2022-02-25T18:08:51.6353008Z",
	"expirationDateTime": null,
	"status": "Active",
	"substatus": "Accepted",
	"statusReason": null,
	"qualification": "SalesQualified",
	"type": "Shared",
	"referralSource": null,
	"eTag": "\"1a008cb8-0000-0800-0000-62191b330000\"",
	"favorite": false,
	"campaignId": null,
	"salesStage": null,
	"quality": "Unknown",
	"isSpam": false,
	"direction": "Incoming",
	"mpnId": "6193175",
	"referralProgram": null,
	"dealSensitivity": "None",
	"createdVia": null,
	"tags": [],
	"acceptedDateTime": "2022-02-25T17:54:36.1957875Z",
	"closedDateTime": null,
	"callToAction": null,
	"registrationStatus": "None",
	"target": [
		{
			"type": "SolutionProfile",
			"id": "a1965dd8-065d-43d1-a831-6204c2117f5e"
		}
	],
	"customerProfile": {
		"name": "BASF SE",
		"size": "",
		"isMatchingComplete": false,
		"address": {
			"addressLine1": "Carl-Bosch-Str. 38",
			"addressLine2": null,
			"city": "Ludwigshafen am Rhein",
			"state": null,
			"postalCode": "67063",
			"country": "DE",
			"region": null
		},
		"team": [
			{
				"firstName": "Svetlana ",
				"lastName": "Shelepina",
				"phoneNumber": "49 621 600",
				"email": "svetlana.shelepina@basf.com",
				"title": null,
				"contactPreference": {
					"locale": null,
					"disableNotifications": true
				}
			}
		],
		"ids": [
			{
				"profileType": "Duns",
				"id": "315000554"
			}
		]
	},
	"consent": {
		"consentToToShareInfoWithOthers": true,
		"consentToContact": true,
		"consentToShareReferralWithMicrosoftSellers": true
	},
	"details": {
		"notes": null,
		"dealValue": 100000,
		"currency": "EUR",
		"closingDateTime": "2022-06-29T23:00:00Z",
		"customerRequestedContact": null,
		"customerAction": null,
		"incentiveLevel": null,
		"requirements": {
			"industries": [],
			"products": [],
			"services": [],
			"solutions": [
				{
					"id": "a1965dd8-065d-43d1-a831-6204c2117f5e",
					"name": "iManage Priv. Enterprise Legal, Audit, Compliance",
					"type": "Name",
					"price": null,
					"quantity": null,
					"currency": null,
					"publisherName": null,
					"solutionType": null,
					"closingDateTime": null
				}
			],
			"salesPlays": [],
			"additionalRequirements": {
				"iot": {
					"customerLicenseAgreementNumber": null,
					"deviceCategory": null,
					"siliconType": null,
					"azureCertifiedDevice": false,
					"attachServices": false
				}
			}
		}
	},
	"team": [
		{
			"firstName": "David",
			"lastName": "Moseley",
			"phoneNumber": "07720310891",
			"email": "david.moseley@imanage.com",
			"title": null,
			"contactPreference": {
				"locale": null,
				"disableNotifications": null
			}
		},
		{
			"firstName": "Stephen",
			"lastName": "Murphy",
			"phoneNumber": "+34 647 951 771",
			"email": "stephen.murphy@imanage.com",
			"title": null,
			"contactPreference": {
				"locale": null,
				"disableNotifications": null
			}
		},
		{
			"firstName": "Ronak",
			"lastName": "Dave",
			"phoneNumber": "224-628-8779",
			"email": "ronak.dave@imanage.com",
			"title": null,
			"contactPreference": {
				"locale": null,
				"disableNotifications": null
			}
		}
	],
	"inviteContext": {
		"notes": null,
		"assistanceRequestCode": "Unknown",
		"invitedMpnId": "6193175",
		"invitedBy": {
			"organizationId": "355e66da-9f6c-43bb-a13a-0885ebaabd5c",
			"organizationName": "iManage"
		}
	},
	"links": {
		"relatedReferrals": {
			"uri": "https://api.partner.microsoft.com/v1.0/engagements/referrals?$filter=engagementId eq 66b72794-3581-4eda-968d-837ea0730ac9",
			"method": "GET"
		},
		"self": {
			"uri": "https://api.partner.microsoft.com/v1.0/engagements/referrals/a2546b7e-34d9-46f9-84d2-af085aaec40f",
			"method": "GET"
		}
	},
	"trackingInfo": {
		"microsoftMsxId": null,
		"microsoftUSFedOpportunityId": null,
		"microsoftUSFedLeadId": null,
		"migratedPSCDealId": null,
		"migratedPSCPartnerDealId": null
	},
	"registrations": []
},
{
	"id": "d2ca6d20-0899-42a8-b9f7-5e9c06ad641d",
	"engagementId": "0ee9d55d-b7e9-4d3c-b76a-419a9d74a58a",
	"name": "Discover Sensitive Data Workshop",
	"organizationId": "1e2a4ff6-145c-46d2-ac2b-11ec80cbc601",
	"organizationName": "KPMG LLP",
	"lastModifiedVia": null,
	"lastRunId": null,
	"externalReferenceId": "",
	"createdDateTime": "2022-02-24T21:04:06.0372014Z",
	"updatedDateTime": "2022-02-24T21:12:46.1743218Z",
	"expirationDateTime": null,
	"status": "Active",
	"substatus": "Accepted",
	"statusReason": null,
	"qualification": "SalesQualified",
	"type": "Shared",
	"referralSource": null,
	"eTag": "\"69007a1e-0000-0800-0000-6217f4ce0000\"",
	"favorite": false,
	"campaignId": null,
	"salesStage": null,
	"quality": "Unknown",
	"isSpam": false,
	"direction": "Incoming",
	"mpnId": "1209668",
	"referralProgram": null,
	"dealSensitivity": "None",
	"createdVia": null,
	"tags": [],
	"acceptedDateTime": "2022-02-24T21:04:06.0368023Z",
	"closedDateTime": null,
	"callToAction": null,
	"registrationStatus": "None",
	"target": [
		{
			"type": "SolutionProfile",
			"id": "3a2fead4-d3fa-4fe9-819f-8062f6f3b2fe"
		},
		{
			"type": "SolutionProfile",
			"id": "4e0a923a-a5be-e911-a85f-000d3a1bbafa"
		}
	],
	"customerProfile": {
		"name": "VISTA OIL &amp; GAS ARGENTINA S.A.U.",
		"size": "",
		"isMatchingComplete": false,
		"address": {
			"addressLine1": "Avenida del Libertador 101",
			"addressLine2": null,
			"city": "Vicente López",
			"state": null,
			"postalCode": "B1638BEA",
			"country": "AR",
			"region": null
		},
		"team": [
			{
				"firstName": "MATIAS",
				"lastName": "SARANITI",
				"phoneNumber": "+5491153867232",
				"email": "matias.saraniti@vistaenergy.com",
				"title": null,
				"contactPreference": {
					"locale": null,
					"disableNotifications": true
				}
			}
		],
		"ids": [
			{
				"profileType": "Duns",
				"id": "970002754"
			}
		]
	},
	"consent": {
		"consentToToShareInfoWithOthers": true,
		"consentToContact": true,
		"consentToShareReferralWithMicrosoftSellers": true
	},
	"details": {
		"notes": null,
		"dealValue": 10000,
		"currency": "USD",
		"closingDateTime": "2022-03-04T03:00:00Z",
		"customerRequestedContact": null,
		"customerAction": null,
		"incentiveLevel": null,
		"requirements": {
			"industries": [],
			"products": [],
			"services": [],
			"solutions": [
				{
					"id": "3a2fead4-d3fa-4fe9-819f-8062f6f3b2fe",
					"name": "M365 E5 Compliance | Non-specific",
					"type": "Name",
					"price": null,
					"quantity": null,
					"currency": null,
					"publisherName": null,
					"solutionType": null,
					"closingDateTime": null
				},
				{
					"id": "4e0a923a-a5be-e911-a85f-000d3a1bbafa",
					"name": "M365 FLW Sec+Compliance - O365",
					"type": "Name",
					"price": null,
					"quantity": null,
					"currency": null,
					"publisherName": null,
					"solutionType": null,
					"closingDateTime": null
				}
			],
			"salesPlays": [],
			"additionalRequirements": {
				"iot": {
					"customerLicenseAgreementNumber": null,
					"deviceCategory": null,
					"siliconType": null,
					"azureCertifiedDevice": false,
					"attachServices": false
				}
			}
		}
	},
	"team": 
		{
			"firstName": "Emanuel",
			"lastName": "Martinez",
			"phoneNumber": "+5491167993193",
			"email": "emanuelmartinez@kpmg.com.ar",
			"title": null,
			"contactPreference": {
				"locale": null,
				"disableNotifications": null
			}
		}
	,
	"inviteContext": {
		"notes": null,
		"assistanceRequestCode": "Unknown",
		"invitedMpnId": "1209668",
		"invitedBy": {
			"organizationId": "1e2a4ff6-145c-46d2-ac2b-11ec80cbc601",
			"organizationName": "KPMG"
		}
	},
	"links": {
		"relatedReferrals": {
			"uri": "https://api.partner.microsoft.com/v1.0/engagements/referrals?$filter=engagementId eq 0ee9d55d-b7e9-4d3c-b76a-419a9d74a58a",
			"method": "GET"
		},
		"self": {
			"uri": "https://api.partner.microsoft.com/v1.0/engagements/referrals/d2ca6d20-0899-42a8-b9f7-5e9c06ad641d",
			"method": "GET"
		}
	},
	"trackingInfo": {
		"microsoftMsxId": null,
		"microsoftUSFedOpportunityId": null,
		"microsoftUSFedLeadId": null,
		"migratedPSCDealId": null,
		"migratedPSCPartnerDealId": null
	},
	"registrations": []
}]'

EXEC SP_PC_REFERRALS @JSON;

SELECT * FROM T_PC_REFERRALS