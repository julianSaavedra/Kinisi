package names
allDomains

	^(Array with: self coreDomain)
		  withAll: self experimentSpecificDomains;
		  yourself