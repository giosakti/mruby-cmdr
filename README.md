# mruby cmdr

Microframework for structuring CLI apps. Inspired by [spf13/cobra](https://github.com/spf13/cobra).

## Getting started

Install these dependencies:

- `build-essential`
- `bison`
- `ruby`

Add this line on mruby `build_config.rb` before compilation.

```
...
conf.gem github: 'giosakti/mruby-cmdr'
...
```

Then you can utilize `Cmdr::Command` class to create a new CLI app.

## Development Setup

Follow getting started guide.

### Running tests

Compile mruby with these 2 gems enabled.

``` 
...
conf.gem github: 'iij/mruby-print'
conf.gem github: 'iij/mruby-mtest'
...
```

Run `mruby test/**`

## Getting Help

If you have any questions or feedback regarding mruby-cmdr:

- [File an issue](https://github.com/giosakti/mruby-cmdr/issues/new) for bugs, issues and feature suggestions.

Your feedback is always welcome.

## Further Reading

- [mruby documentation][mruby-doc]
- [Guide to compile mruby][mruby-compile-guide]
- [mrbgems documentation][mrbgems-doc]

[mruby-doc]: https://github.com/mruby/mruby/tree/master/doc
[mruby-compile-guide]: https://github.com/mruby/mruby/blob/master/doc/guides/compile.md
[mrbgems-doc]: https://github.com/mruby/mruby/blob/master/doc/guides/mrbgems.md

## License

MIT License, see [LICENSE](LICENSE).
