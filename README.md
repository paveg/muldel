# Multi Delivery Aggregation

[![CircleCI](https://circleci.com/gh/paveg/muldel.svg?style=svg&circle-token=0de695223ee3b9187c0967ca582faa77ad25d785)][circleci]
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)][license]
[![Codecov](https://codecov.io/gh/paveg/muldel/branch/master/graph/badge.svg)][codecov]
![rails](https://img.shields.io/badge/Rails-v5.2.3-red.svg)
![ruby](https://img.shields.io/badge/Ruby-2.6.3-brightgreen.svg)

[circleci]: (https://circleci.com/gh/paveg/muldel)
[codecov]: https://codecov.io/gh/paveg/muldel
[license]: https://github.com/paveg/muldel/blob/master/LICENSE

This application is delivery service for more convenience.

## Introduction 

* Ruby version: 2.6.3

* Technical Structure

    * Rails: 5.2.3
    * Ruby: 2.6.3
    * React.js
    * TypeScript

* Configuration

* Database creation

 ```bash
$ bundle exec rake db:create
```

or 

```bash
$ docker-compose up
```

* Database initialization

```bash
$ bundle exec rake db:migrate
```

* How to run the test suite

```bash
$ bin/rspec spec
```
