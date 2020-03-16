asserting
assert: accessingBlock isChangeTo: targetValue with: changingBlock

	| originalParticle newParticle |
	originalParticle := self particleA.	
	self deny: (accessingBlock value: originalParticle) equals: targetValue.
	
	newParticle := changingBlock value: originalParticle value: targetValue.
	
	self assert: (accessingBlock value: newParticle) equals: targetValue.
	self deny: originalParticle identicalTo: newParticle