outdated - versions
version126: spec 
        <version: '1.2.6' imports: #('1.0-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'Collections-OrderPreservingDictionary' with: 'Collections-OrderPreservingDictionary-monty.17'.
			spec package: 'Collections-Tests-OrderPreservingDictionary' with: 'Collections-Tests-OrderPreservingDictionary-monty.12'.
                ].