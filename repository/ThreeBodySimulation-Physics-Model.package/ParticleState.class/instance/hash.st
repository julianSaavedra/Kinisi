comparing
hash

	^self particleName hash
		bitXor: (self mass hash
			bitXor: (self position hash
				bitXor: (self velocity hash
					bitXor: self acceleration hash)))