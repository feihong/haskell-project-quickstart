# Feihong's Haskell Project Quickstart

## Create project

First, [install Stack](https://github.com/feihong/haskell-quickstart#installation)

```
stack new quickstart
stack setup
stack build
stack exec quickstart-exe
```

## Compile and run a script

`stack runghc scripts/json_quickstart.hs`

## Run repl without package hiding

`stack ghci --no-package-hiding`

## Sources

- [What I Wish I Knew When Learning Haskell](http://dev.stephendiehl.com/hask/)
- [Stack documentation](https://docs.haskellstack.org/en/stable/README/)
