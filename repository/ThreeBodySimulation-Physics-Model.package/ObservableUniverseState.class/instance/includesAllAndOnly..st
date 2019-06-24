private
includesAllAndOnly: physicalStateCollection

	^physicalStates size = physicalStateCollection size
		and: [ physicalStates includesAll: physicalStateCollection ]
	
