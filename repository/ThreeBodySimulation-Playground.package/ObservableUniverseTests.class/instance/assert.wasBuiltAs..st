test - to be removed
assert: observableUniverse wasBuiltAs: draft

	| universeParticles particleDrafts |	
	universeParticles := observableUniverse particles.
	particleDrafts := draft particleDrafts.

	self assert: universeParticles size equals: particleDrafts size.
	universeParticles
		do: [ :aParticle | 
			particleDrafts
				detect: [ :particleDraft | particleDraft particleName = aParticle name ]
				ifFound: [ :particleDraft | 
					self assert: aParticle name equals: particleDraft particleName.
					self assert: aParticle color equals: particleDraft color.
					self assert: aParticle mass equals: particleDraft mass.
					self assert: aParticle position equals: particleDraft position.
					self assert: aParticle velocity equals: particleDraft velocity.
					self
						assert: aParticle acceleration
						equals: particleDraft acceleration ]
				ifNone: [ self assert: false ] ]