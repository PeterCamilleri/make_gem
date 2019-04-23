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

For safety, the program will not proceed if the target folder exists. This
prevents accidental "clobbering" an existing gem. Furthermore you will be shown
the key parameters of the gem creation and given a go/no go (y/n) choice.

### Changes from Bundler convention:

The make_gem starts out with the standard gem skeleton created by bundler and
makes the following changes:

1. Removes .travis.yml, bin/console, and bin/setup. I don't/cannot use these.
2. Renames the rakefile from Rakefile to rakefile.rb. I prefer Ruby code to have
a dot rb file suffix whenever possible.
3. Replace the gem's main file. I prefer the use of require_relative for files
inside of the gem.
4. Replace the gem's version file. The new version creates frozen strings and
add the DESCRIPTION constant.
5. Update test files to remove the test helper, use require_relative and add
my own test embellishment minitest_visible.
6. Update the readme to avoid super long lines, and put in sensible
Contributing License and Code of Conduct sections. A link to the github issues
page is provided to make it easier to access.
7. Update the gemspec to use the description field of the version file, add
a reference to additional development gems, and remove extraneous code.
8. Update the rake file adding the vers task.
9. Display command lines needed to connect to the gem's github repository.

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
