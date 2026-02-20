# mojo-syntax

This repository contains a TextMate grammar for the Mojo 🔥 programming
language.

## Testing

Grammar tests use [vscode-tmgrammar-test](https://github.com/PanAeon/vscode-tmgrammar-test).
Test files live in `tests/` and use inline scope assertions.

```bash
npm install
npm test
```

To run a single test file:

```bash
npx vscode-tmgrammar-test -g syntaxes/mojo.syntax.json 'tests/baseline.mojo'
```

## Contributing

The Mojo syntax has been converted from [VS Code's Python syntax][1], which
itself was converted from [MagicPython.tmLanguage][2]. Many fixes or
improvements to Mojo's syntax also apply to these two projects, so in many
cases, creating a pull request against one of these two repositories is the way
to go. Once accepted there, we can pull down the changes into this project.

For Mojo-specific updates, we'd be happy to review pull requests sent here.
Please include a description of the problem that the change addresses.

Reports of general issues with Mojo or how its syntax is highlighted on GitHub,
or requests to update this grammar based on changes to the VS Code or
MagicPython syntax files, can be sent as issues on the main Mojo repository
[here][3].

[1]: https://github.com/microsoft/vscode/blob/c4cfd83472c59f183d79cb9526c42105880bf8ab/extensions/python/syntaxes/MagicPython.tmLanguage.json
[2]: https://github.com/MagicStack/MagicPython/blob/7d0f2b22a5ad8fccbd7341bc7b7a715169283044/grammars/MagicPython.tmLanguage
[3]: https://github.com/modularml/mojo
