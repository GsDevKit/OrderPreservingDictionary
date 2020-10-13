outdated - versions
version124: spec
	<version: '1.2.4' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #release.
		spec 
			package: 'Collections-OrderPreservingDictionary' with: 'Collections-OrderPreservingDictionary-monty.15';
			package: 'Collections-Tests-OrderPreservingDictionary' with: 'Collections-Tests-OrderPreservingDictionary-monty.10'. ].
