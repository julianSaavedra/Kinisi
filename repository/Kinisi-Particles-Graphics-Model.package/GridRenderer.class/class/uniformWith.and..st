instance creation
uniformWith: color and: size

	^self with: color using: (UniformGridLinesGenerator with: size)