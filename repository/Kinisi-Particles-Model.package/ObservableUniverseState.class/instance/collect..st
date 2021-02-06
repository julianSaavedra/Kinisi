setting
collect: particleTransfomation

	| newParticles |
	newParticles := self particles collect: particleTransfomation.
	^self class withAll: newParticles