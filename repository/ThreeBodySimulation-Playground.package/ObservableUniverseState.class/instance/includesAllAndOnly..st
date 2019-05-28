private
includesAllAndOnly: physicalStateCollection

	^physicalStates size = physicalStateCollection size and: [
		physicalStates allSatisfy: [:ownPhysicalState |
			physicalStateCollection anySatisfy: [:collectionPhysicalState |
				collectionPhysicalState = ownPhysicalState ] ]
		]