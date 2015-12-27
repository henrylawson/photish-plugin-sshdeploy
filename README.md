# Photish::Plugin::Sshdeploy

This is a simple [Deployment Engine
Plugin](https://github.com/henrylawson/photish#deployment-engine-plugins) for
[Photish](https://github.com/henrylawson/photish#deploy) using SSH.

## Install

To install it, simple include the Gem in your Gemfile:

**./Gemfile**

```Gemfile
gem 'photish-plugin-sshdeploy'
```

And in your Photish config, ensure it is listed in your `plugins` Config File
Option.

**./config.yml**

```YAML
plugins: ['photish/plugin/sshdeploy']
```

Then run `bundle install`.

Now that it is installed, once you have configured it, use `photish deploy
--engine=ssh` to run it.

## Configure

This deployment engine requires certain values being present in your
`config.yml` file.

```YAML
deploy:
  host: foinq.com                                   # the host to connect and deploy too
  publish_dir: /srv/www/foinq.com/photish-montage   # the directory to copy files too
  publish_temp_dir: /tmp/photish-montage-publish    # the temporary directory to extract files too
  upload_temp_dir: /tmp/photish-montage-upload      # the temporary directory to upload files too
  www_user: www-fqc                                 # the unix user account to finally copy the files under
```

It also requires that you have configured your `~/.ssh/config` file with the
login details of the host you wish to upload too. [See here for a simple
guide](http://nerderati.com/2011/03/17/simplify-your-life-with-an-ssh-config-file/).

## Example usage

An example usage can be seen in the [Photish
Montage](https://github.com/henrylawson/photish-montage) demo.

## License

The gem is available as open source under the terms of the [MIT
License](http://opensource.org/licenses/MIT).

