configuring
replace: oldComponent with: newComponent

	self remove: oldComponent.
	self addChangeSpecification: newComponent 