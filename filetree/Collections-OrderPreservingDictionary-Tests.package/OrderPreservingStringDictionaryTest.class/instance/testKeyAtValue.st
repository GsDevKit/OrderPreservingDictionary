tests
testKeyAtValue
	| dictionary |

	dictionary := self emptyDictionary.
	self orderedAssociations do: [:each |
		self assert: (dictionary keyAtValue: each value) equals: ''.

		dictionary add: each.
		self assert: (dictionary keyAtValue: each value) equals: each key]