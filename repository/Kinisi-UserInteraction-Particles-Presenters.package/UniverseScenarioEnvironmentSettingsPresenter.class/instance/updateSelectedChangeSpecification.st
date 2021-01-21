private
updateSelectedChangeSpecification

	self
		withSelectedChangeSpecificationDo: [:changeSpecification | self updateSelectedChangeSpecificationWith: changeSpecification ]
		ifNone: [ self cleanSelectedChangeSpecification ].
	self update