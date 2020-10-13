tests
testIdentityIndexOfKey
	| dictionary |

	dictionary := self emptyDictionary.
	self orderedAssociations withIndexDo: [:each :i |
		self assert: (dictionary identityIndexOfKey: each key) equals: 0.

		dictionary add: each.
		self
			assert: (dictionary identityIndexOfKey: each key) equals: i;
			assert: (dictionary identityIndexOfKey: each key copy) equals: 0].