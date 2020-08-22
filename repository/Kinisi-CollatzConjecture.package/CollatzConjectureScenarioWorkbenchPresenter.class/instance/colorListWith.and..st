initialization
colorListWith: colorAccess and: modifierCreation

	^self
		newDropListOn: self systemColors
		with: modifierCreation
		using: colorAccess