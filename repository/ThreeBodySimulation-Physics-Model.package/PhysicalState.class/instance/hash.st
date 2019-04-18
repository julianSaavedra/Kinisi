comparing
hash

	^ self position hash
		bitXor: (self velocity hash
			bitXor: self acceleration hash)