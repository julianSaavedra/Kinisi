validation
assertValid: delta
 
	delta negative
		ifTrue: [ PhysicsModelError signal: 'Delta cannot be negative.' ]