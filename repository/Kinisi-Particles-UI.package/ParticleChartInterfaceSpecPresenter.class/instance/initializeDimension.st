initialization
initializeDimension

	dimension := self
		             newDropListWith: self dimensionOptions
		             using: [ interfaceSpec dimension ]
		             and: [ :newDimension | 
		             interfaceSpec dimension: newDimension ]