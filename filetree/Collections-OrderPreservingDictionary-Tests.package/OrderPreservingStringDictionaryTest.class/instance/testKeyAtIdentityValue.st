tests
testKeyAtIdentityValue
	| dictionary |

	dictionary := self emptyDictionary.
	self orderedAssociations do: [:each |
		self assert: (dictionary keyAtIdentityValue: each value) equals: ''.

		dictionary add: each.
		self
			assert: (dictionary keyAtIdentityValue: each value) equals: each key;
			assert: (dictionary keyAtIdentityValue: each value copy) equals: ''].