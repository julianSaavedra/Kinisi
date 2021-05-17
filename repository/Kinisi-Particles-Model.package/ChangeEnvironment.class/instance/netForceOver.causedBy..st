private
netForceOver: particle causedBy: otherParticles

	^(changeDescription componentsFor: particle)
		ifEmpty: [ MeasureVector nullWith: UnitProvider soleInstance newton ]
		ifNotEmpty: [ :changeComponents | 
			changeComponents sum: [:component | component forceOver: particle causedBy: otherParticles ] ]