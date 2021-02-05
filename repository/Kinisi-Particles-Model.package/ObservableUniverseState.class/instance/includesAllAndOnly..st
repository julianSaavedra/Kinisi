private
includesAllAndOnly: particles

	^particleStates size = particles size
		and: [ particleStates includesAll: particles ]
	
