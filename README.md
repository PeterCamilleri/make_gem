# MakeGem

Rails is opinionated. Bundler, it seems, is opinionated too. News flash! So am
I. I finally got tired of spending an hour whipping gem scaffolding into shape
and decided to create my own hack to the bundle gem command.

Here it is!

## Installation

Just install it yourself as:

    $ gem install make_gem

## Usage

make_gem <gem_name> {-d}

Where
* <gem_name> is the name of the gem to be created.
* -d is an optional debug option that makes the program rather more verbose.

The command to be executed in the parent of the folder you want the gem to be
created in.

For safety, you will be shown the key parameters of the gem creation and given
a go/no go (y/n) choice.

## Contributing
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

OR...

* Make a suggestion by raising an
 [issue](https://github.com/PeterCamilleri/make_gem/issues)
. All ideas and comments are welcome.

## License

The gem is available as open source under the terms of the
[MIT License](./LICENSE.txt).

## Code of Conduct

Everyone interacting in the mini_erb project’s codebases, issue trackers,
chat rooms and mailing lists is expected to follow the
[code of conduct](./CODE_OF_CONDUCT.md).
