tests
testIdentityIndexOfKeyIfAbsent
	| dictionary |

	dictionary := self emptyDictionary.
	self orderedAssociations withIndexDo: [:each :i |
		self assert:
			(dictionary
				identityIndexOfKey: each key
				ifAbsent: [self absentValue]) equals: self absentValue.

		dictionary add: each.
		self assert:
			(dictionary
				identityIndexOfKey: each key
				ifAbsent: [self fail]) equals: i.
		self assert:
			(dictionary
				identityIndexOfKey: each key copy
				ifAbsent: [self absentValue]) equals: self absentValue].