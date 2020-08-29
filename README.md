# SilverStripe elemental bootstrap gallery section

[![Build Status](https://travis-ci.com/syntro-opensource/silverstripe-elemental-bootstrap-gallerysection.svg?branch=master)](https://travis-ci.com/syntro-opensource/silverstripe-elemental-bootstrap-gallerysection)
[![phpstan](https://img.shields.io/badge/PHPStan-enabled-success)](https://github.com/phpstan/phpstan)
[![codecov](https://codecov.io/gh/syntro-opensource/silverstripe-elemental-bootstrap-gallerysection/branch/master/graph/badge.svg)](https://codecov.io/gh/syntro-opensource/silverstripe-elemental-bootstrap-gallerysection)
[![composer](https://img.shields.io/packagist/dt/syntro/silverstripe-elemental-bootstrap-gallerysection?color=success&logo=composer)](https://packagist.org/packages/syntro/silverstripe-elemental-bootstrap-gallerysection)


This module is part of a larger collection. See
[`syntro/silverstripe-elemental-bootstrap-collection`](https://github.com/syntro-opensource/silverstripe-elemental-bootstrap-collection)
for details.

Provides a simple section displaying Images.

## Requirements

* SilverStripe ^4.0
* Silverstripe elemental ^4
* [Bootstrap](https://getbootstrap.com) on the Frontend

## Installation

```
composer require syntro/silverstripe-elemental-bootstrap-gallerysection
```


## License
See [License](license.md)

## Documentation

This Section only provides a base skeleton and without customization only renders
thumbnail images in a masonry style layout using [`card-columns`](https://getbootstrap.com/docs/4.5/components/card/#card-columns).
If you want to have a masonry layout, a lightbox, or a gallery,
you will have to implement these by yourself and include necessary scripts and
styles in your frontend theme.

All configuration options follow [the base items config](https://github.com/syntro-opensource/silverstripe-elemental-bootstrap-baseitems#documentation).

<!-- ## Example configuration (optional)
If your module makes use of the config API in SilverStripe it's a good idea to provide an example config
 here that will get the module working out of the box and expose the user to the possible configuration options.

Provide a yaml code example where possible.

```yaml

Page:
  config_option: true
  another_config:
    - item1
    - item2

``` -->

## Maintainers
 * Matthias Leutenegger <hello@syntro.ch>

## Bugtracker
Bugs are tracked in the issues section of this repository. Before submitting an issue please read over
existing issues to ensure yours is unique.

If the issue does look like a new bug:

 - Create a new issue
 - Describe the steps required to reproduce your issue, and the expected outcome. Unit tests, screenshots
 and screencasts can help here.
 - Describe your environment as detailed as possible: SilverStripe version, Browser, PHP version,
 Operating System, any installed SilverStripe modules.

Please report security issues to the module maintainers directly. Please don't file security issues in the bugtracker.

## Development and contribution
If you would like to make contributions to the module please ensure you raise a pull request and discuss with the module maintainers.
