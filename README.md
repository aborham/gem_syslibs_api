# gem_syslibs_api


[![Code Climate](https://codeclimate.com/github/saladin2002eg/gem_syslibs_api/badges/gpa.svg)](https://codeclimate.com/github/saladin2002eg/gem_syslibs_api)

This source code containg a webservice helps ruby developer to find if there Operating systemsneed extra libraries for there gems to work

## Usage

we have 2 endpoints

this for testing the api

    /packages [GET]

the main endpoint for retrieving the packages info if there


    /search [POST]

params [json object]

    {
        "packages" : ["nokogiri","rmagic"],
        "os":"Linux"
    }

response will be like this

    [
      {
        "number": "1.6.0",
        "os": "Linux",
        "libs": [
          "ruby-dev",
          "zlib1g-dev",
          "liblzma-dev"
        ],
        "package": {
          "id": 1,
          "name": "nokogiri"
        }
      },
      {
        "number": "1.6.0",
        "os": "Linux",
        "libs": [
          "imagemagick",
          "libmagickwand-dev"
        ],
        "package": {
          "id": 3,
          "name": "rmagick"
        }
      }
    ]

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/saladin2002eg/gem_syslibs_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).