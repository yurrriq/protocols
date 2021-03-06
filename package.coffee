fs   = require 'fs'
find = require 'find'
find.file /^[^.].*\.agda$/, '.', (files) ->
  fs.writeFile 'package.json', JSON.stringify
    name: "agda-protocols"
    version: "0.0.3"
    description: "Shallow embedding of Protocols using Agda dependent types"
    main: "protocols.agda"
    scripts:
      test: "echo \"Error: no test specified\" && exit 1"
    files: [ "README.md" ].concat(files)
    repository:
      type: "git"
      url: "https://github.com/crypto-agda/protocols"
    keywords: [
      "agda"
      "library"
    ]
    author: "Nicolas Pouillard"
    license: "BSD3"
    bugs:
      url: "https://github.com/crypto-agda/protocols/issues"
    homepage: "https://github.com/crypto-agda/protocols"
    dependencies:
      "agda-nplib": ">= 0.0.1"
    agda:
      include: [
        "."
      ]
