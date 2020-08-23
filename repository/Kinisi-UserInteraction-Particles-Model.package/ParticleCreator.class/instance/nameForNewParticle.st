private
nameForNewParticle

	^self
		new: [:particle | particle particleName ]
		using: self nameGenerator