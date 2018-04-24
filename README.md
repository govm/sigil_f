# SigilF

Make fn/0 that returns given string

[![hex.pm version](https://img.shields.io/hexpm/v/sigil_f.svg)](https://hex.pm/packages/sigil_f)
[![hex.pm](https://img.shields.io/hexpm/l/sigil_f.svg)](https://github.com/govm/sigil_f/blob/master/LICENSE)
[![Build Status](https://travis-ci.org/govm/sigil_f.svg?branch=master)](https://travis-ci.org/govm/sigil_f)

## Usage

```ex
import SigilF

Logger.debug(~f"It will be called only when log level is debug #{heavy_func()}")

# it is same as
Logger.debug(fn -> "It will be called only when log level is debug #{heavy_func()}" end)
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `sigil_f` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:sigil_f, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/sigil_f](https://hexdocs.pm/sigil_f).

