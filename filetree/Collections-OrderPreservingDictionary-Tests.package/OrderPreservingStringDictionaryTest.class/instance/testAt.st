tests
testAt
	| dictionary |

	dictionary := self emptyDictionary.
	self orderedAssociations do: [:each |
		self assert: (dictionary at: each key) equals: ''.

		dictionary add: each.
		self assert: (dictionary at: each key) equals: each value].