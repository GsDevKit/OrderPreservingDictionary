tests
testKeyAtIndex
	| dictionary |

	dictionary := self emptyDictionary.
	self assert: (dictionary keyAtIndex: 0) equals: ''.
	self orderedAssociations withIndexDo: [:each :i |
		self assert: (dictionary keyAtIndex: i) equals: ''.

		dictionary add: each.
		self assert: (dictionary keyAtIndex: i) equals: each key]