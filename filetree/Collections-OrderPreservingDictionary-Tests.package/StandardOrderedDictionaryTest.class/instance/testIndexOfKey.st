tests
testIndexOfKey
	| dictionary |

	dictionary := self emptyDictionary.
	self orderedAssociations withIndexDo: [:each :i |
		self assert: (dictionary indexOfKey: each key) equals: 0.

		dictionary add: each.
		self assert: (dictionary indexOfKey: each key) equals: i].