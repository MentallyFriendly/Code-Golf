# Flatten

Flatten a nested array into a single level array using Elixir.

`lib/flatten.ex` is the unminified, readable version.

`lib/Flatten_short.ex` is the minified version, clocking in at 127 characters.

## Usage

Open the Elixir REPL
`iex -S mix`

```
iex> Flatten.list [1, [2, [3, [4]]]]
[1, 2, 3, 4]
```

Shorthand version:
```
iex> F.l [1, [2, [3, [4]]]]
[1, 2, 3, 4]
```
