comparing
hash

	^self mass hash
		bitXor: (self position hash
			bitXor: (self velocity hash
				bitXor: self acceleration hash))