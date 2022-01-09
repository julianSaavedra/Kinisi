initialization
initializeProperty

	property := self
		            newDropListWith: self propertyOptions
		            using: [ interfaceSpec property ]
		            and: [ :newProperty | 
		            interfaceSpec property: newProperty ]