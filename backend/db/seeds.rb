# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

competitions = [
  {
    "id": 18,
    "name": "Liga A",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 6,
      "name": "Argentina",
      "code": "AR",
      "flag": "https://media.api-football.com/flags/ar.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-11-10",
        "end": "2020-04-30"
      },
      {
        "season": "2018-2019",
        "start": "2018-12-05",
        "end": "2019-05-28"
      },
      {
        "season": "2017-2018",
        "start": "2017-11-29",
        "end": "2018-06-23"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-23",
        "end": "2017-07-16"
      }
    ]
  },
  {
    "id": 22,
    "name": "Torneo Super 20",
    "type": "cup",
    "logo": nil,
    "country": {
      "id": 6,
      "name": "Argentina",
      "code": "AR",
      "flag": "https://media.api-football.com/flags/ar.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-09-26",
        "end": "2020-01-26"
      },
      {
        "season": 2018,
        "start": "2018-09-23",
        "end": "2018-12-23"
      },
      {
        "season": 2017,
        "start": "2017-09-21",
        "end": "2017-11-19"
      }
    ]
  },
  {
    "id": 6,
    "name": "ABL",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 2,
      "name": "Asia",
      "code": "AS",
      "flag": "https://media.api-football.com/flags/as.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-11-16",
        "end": "2020-03-29"
      },
      {
        "season": "2018-2019",
        "start": "2018-11-16",
        "end": "2019-05-15"
      },
      {
        "season": "2017-2018",
        "start": "2017-11-17",
        "end": "2018-05-02"
      },
      {
        "season": "2016-2017",
        "start": "2016-11-25",
        "end": "2017-04-23"
      }
    ]
  },
  {
    "id": 1,
    "name": "NBL",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 1,
      "name": "Australia",
      "code": "AU",
      "flag": "https://media.api-football.com/flags/au.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-03",
        "end": "2020-02-16"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-11",
        "end": "2019-03-17"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-05",
        "end": "2018-03-31"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-06",
        "end": "2017-03-05"
      },
      {
        "season": "2015-2016",
        "start": "2015-10-07",
        "end": "2016-03-06"
      }
    ]
  },
  {
    "id": 4,
    "name": "NBL 1",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 1,
      "name": "Australia",
      "code": "AU",
      "flag": "https://media.api-football.com/flags/au.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-03-29",
        "end": "2019-08-17"
      }
    ]
  },
  {
    "id": 5,
    "name": "NBL 1 W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 1,
      "name": "Australia",
      "code": "AU",
      "flag": "https://media.api-football.com/flags/au.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-03-29",
        "end": "2019-08-17"
      }
    ]
  },
  {
    "id": 3,
    "name": "NBL W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 1,
      "name": "Australia",
      "code": "AU",
      "flag": "https://media.api-football.com/flags/au.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-11",
        "end": "2020-03-25"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-12",
        "end": "2019-02-16"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-05",
        "end": "2018-01-21"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-07",
        "end": "2017-03-17"
      }
    ]
  },
  {
    "id": 7,
    "name": "Zweite Liga",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 3,
      "name": "Austria",
      "code": "AT",
      "flag": "https://media.api-football.com/flags/at.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-21",
        "end": "2020-02-15"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-13",
        "end": "2019-04-22"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-23",
        "end": "2018-04-29"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-08",
        "end": "2017-05-25"
      }
    ]
  },
  {
    "id": 111,
    "name": "Premier League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 51,
      "name": "Belarus",
      "code": "BY",
      "flag": "https://media.api-football.com/flags/by.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-21",
        "end": "2020-04-11"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-13",
        "end": "2019-05-19"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-13",
        "end": "2018-05-29"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-21",
        "end": "2017-05-26"
      }
    ]
  },
  {
    "id": 112,
    "name": "Premier League W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 51,
      "name": "Belarus",
      "code": "BY",
      "flag": "https://media.api-football.com/flags/by.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-29",
        "end": "2020-03-15"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-13",
        "end": "2019-04-14"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-07",
        "end": "2018-05-19"
      }
    ]
  },
  {
    "id": 23,
    "name": "Belgian Cup",
    "type": "cup",
    "logo": nil,
    "country": {
      "id": 7,
      "name": "Belgium",
      "code": "BE",
      "flag": "https://media.api-football.com/flags/be.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-10-16",
        "end": "2020-03-08"
      }
    ]
  },
  {
    "id": 24,
    "name": "EuroMillions Basketball League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 7,
      "name": "Belgium",
      "code": "BE",
      "flag": "https://media.api-football.com/flags/be.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-13",
        "end": "2020-05-08"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-29",
        "end": "2019-05-27"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-22",
        "end": "2018-06-13"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-01",
        "end": "2017-06-14"
      }
    ]
  },
  {
    "id": 25,
    "name": "Top Division Women",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 7,
      "name": "Belgium",
      "code": "BE",
      "flag": "https://media.api-football.com/flags/be.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-14",
        "end": "2020-03-08"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-13",
        "end": "2019-04-27"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-09",
        "end": "2018-04-25"
      }
    ]
  },
  {
    "id": 27,
    "name": "LBF W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 8,
      "name": "Brazil",
      "code": "BR",
      "flag": "https://media.api-football.com/flags/br.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-03-08",
        "end": "2019-08-22"
      },
      {
        "season": "2018-2019",
        "start": "2019-03-08",
        "end": "2019-06-25"
      },
      {
        "season": "2017-2018",
        "start": "2018-01-12",
        "end": "2018-06-03"
      },
      {
        "season": "2016-2017",
        "start": "2016-12-15",
        "end": "2017-05-03"
      },
      {
        "season": "2015-2016",
        "start": "2015-11-20",
        "end": "2016-04-26"
      },
      {
        "season": "2014-2015",
        "start": "2014-11-29",
        "end": "2015-04-27"
      }
    ]
  },
  {
    "id": 26,
    "name": "NBB",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 8,
      "name": "Brazil",
      "code": "BR",
      "flag": "https://media.api-football.com/flags/br.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-12",
        "end": "2020-04-04"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-13",
        "end": "2019-05-25"
      },
      {
        "season": "2017-2018",
        "start": "2017-11-04",
        "end": "2018-06-02"
      },
      {
        "season": "2016-2017",
        "start": "2016-11-05",
        "end": "2017-06-17"
      }
    ]
  },
  {
    "id": 113,
    "name": "NBL",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 52,
      "name": "Bulgaria",
      "code": "BG",
      "flag": "https://media.api-football.com/flags/bg.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-05",
        "end": "2020-02-01"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-06",
        "end": "2019-05-27"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-07",
        "end": "2018-05-29"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-14",
        "end": "2017-05-29"
      },
      {
        "season": "2015-2016",
        "start": "2015-10-10",
        "end": "2016-05-22"
      },
      {
        "season": "2014-2015",
        "start": "2014-10-11",
        "end": "2015-06-01"
      }
    ]
  },
  {
    "id": 28,
    "name": "NBL",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 9,
      "name": "Canada",
      "code": "CA",
      "flag": "https://media.api-football.com/flags/ca.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-12-26",
        "end": "2020-04-23"
      },
      {
        "season": "2018-2019",
        "start": "2018-11-15",
        "end": "2019-05-16"
      },
      {
        "season": "2017-2018",
        "start": "2017-11-18",
        "end": "2018-05-18"
      },
      {
        "season": "2016-2017",
        "start": "2016-12-26",
        "end": "2017-06-05"
      }
    ]
  },
  {
    "id": 29,
    "name": "U Sports",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 9,
      "name": "Canada",
      "code": "CA",
      "flag": "https://media.api-football.com/flags/ca.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-24",
        "end": "2020-02-23"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-21",
        "end": "2019-03-10"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-26",
        "end": "2018-03-11"
      },
      {
        "season": "2016-2017",
        "start": "2016-11-03",
        "end": "2017-03-12"
      }
    ]
  },
  {
    "id": 114,
    "name": "LNB",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 53,
      "name": "Chile",
      "code": "CL",
      "flag": "https://media.api-football.com/flags/cl.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-04",
        "end": "2020-02-09"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-06",
        "end": "2019-05-05"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-30",
        "end": "2018-04-21"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-01",
        "end": "2017-05-06"
      }
    ]
  },
  {
    "id": 31,
    "name": "CBA",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 11,
      "name": "China",
      "code": "CN",
      "flag": "https://media.api-football.com/flags/cn.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-11-01",
        "end": "2020-03-12"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-21",
        "end": "2019-05-03"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-28",
        "end": "2018-04-22"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-29",
        "end": "2017-04-07"
      }
    ]
  },
  {
    "id": 30,
    "name": "Premijer liga",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 10,
      "name": "Croatia",
      "code": "HR",
      "flag": "https://media.api-football.com/flags/hr.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-28",
        "end": "2020-03-14"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-06",
        "end": "2019-05-30"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-06",
        "end": "2018-06-03"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-05",
        "end": "2017-06-01"
      }
    ]
  },
  {
    "id": 115,
    "name": "Division A",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 54,
      "name": "Cyprus",
      "code": "CY",
      "flag": "https://media.api-football.com/flags/cy.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-12",
        "end": "2020-02-02"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-13",
        "end": "2019-05-04"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-14",
        "end": "2018-05-04"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-29",
        "end": "2017-05-05"
      }
    ]
  },
  {
    "id": 32,
    "name": "NBL",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 12,
      "name": "Czech Republic",
      "code": "CZ",
      "flag": "https://media.api-football.com/flags/cz.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-04",
        "end": "2020-04-08"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-26",
        "end": "2019-05-28"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-02",
        "end": "2018-05-24"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-24",
        "end": "2017-05-23"
      }
    ]
  },
  {
    "id": 33,
    "name": "ZBL W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 12,
      "name": "Czech Republic",
      "code": "CZ",
      "flag": "https://media.api-football.com/flags/cz.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-27",
        "end": "2020-02-22"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-30",
        "end": "2019-04-24"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-20",
        "end": "2018-05-02"
      }
    ]
  },
  {
    "id": 34,
    "name": "Basketligaen",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 13,
      "name": "Denmark",
      "code": "DK",
      "flag": "https://media.api-football.com/flags/dk.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-22",
        "end": "2020-03-23"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-25",
        "end": "2019-05-13"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-18",
        "end": "2018-05-07"
      }
    ]
  },
  {
    "id": 35,
    "name": "Dameligaen W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 13,
      "name": "Denmark",
      "code": "DK",
      "flag": "https://media.api-football.com/flags/dk.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-28",
        "end": "2020-02-26"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-10",
        "end": "2019-05-04"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-29",
        "end": "2018-04-28"
      }
    ]
  },
  {
    "id": 36,
    "name": "Korvpalli Meistriliiga",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 14,
      "name": "Estonia",
      "code": "EE",
      "flag": "https://media.api-football.com/flags/ee.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2019-04-09",
        "end": "2019-05-22"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-02",
        "end": "2017-05-22"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-05",
        "end": "2018-05-24"
      }
    ]
  },
  {
    "id": 37,
    "name": "Korisliiga",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 15,
      "name": "Finland",
      "code": "FI",
      "flag": "https://media.api-football.com/flags/fi.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-27",
        "end": "2020-04-07"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-07",
        "end": "2019-05-26"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-26",
        "end": "2018-05-18"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-05",
        "end": "2017-05-13"
      }
    ]
  },
  {
    "id": 38,
    "name": "Korisliiga W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 15,
      "name": "Finland",
      "code": "FI",
      "flag": "https://media.api-football.com/flags/fi.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-26",
        "end": "2020-03-21"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-04",
        "end": "2019-04-21"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-04",
        "end": "2019-04-21"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-28",
        "end": "2018-04-27"
      }
    ]
  },
  {
    "id": 9,
    "name": "French Cup",
    "type": "cup",
    "logo": nil,
    "country": {
      "id": 4,
      "name": "France",
      "code": "FR",
      "flag": "https://media.api-football.com/flags/fr.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-10-08",
        "end": "2020-01-29"
      }
    ]
  },
  {
    "id": 11,
    "name": "Leaders Cup",
    "type": "cup",
    "logo": nil,
    "country": {
      "id": 4,
      "name": "France",
      "code": "FR",
      "flag": "https://media.api-football.com/flags/fr.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-02-15",
        "end": "2019-02-17"
      }
    ]
  },
  {
    "id": 10,
    "name": "LFB W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 4,
      "name": "France",
      "code": "FR",
      "flag": "https://media.api-football.com/flags/fr.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-05",
        "end": "2020-04-22"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-13",
        "end": "2019-05-23"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-29",
        "end": "2018-05-26"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-01",
        "end": "2017-05-12"
      },
      {
        "season": "2015-2016",
        "start": "2015-09-26",
        "end": "2016-05-15"
      }
    ]
  },
  {
    "id": 2,
    "name": "LNB",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 4,
      "name": "France",
      "code": "FR",
      "flag": "https://media.api-football.com/flags/fr.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-20",
        "end": "2020-05-06"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-21",
        "end": "2019-05-27"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-22",
        "end": "2018-06-24"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-23",
        "end": "2017-06-23"
      },
      {
        "season": "2015-2016",
        "start": "2015-10-02",
        "end": "2016-06-14"
      }
    ]
  },
  {
    "id": 8,
    "name": "Pro B",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 4,
      "name": "France",
      "code": "FR",
      "flag": "https://media.api-football.com/flags/fr.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-11",
        "end": "2020-05-08"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-12",
        "end": "2019-05-24"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-13",
        "end": "2018-06-14"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-13",
        "end": "2017-06-18"
      }
    ]
  },
  {
    "id": 39,
    "name": "Superleague",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 16,
      "name": "Georgia",
      "code": "GE",
      "flag": "https://media.api-football.com/flags/ge.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-13",
        "end": "2020-04-12"
      },
      {
        "season": "2018-2019",
        "start": "2018-11-10",
        "end": "2019-05-27"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-15",
        "end": "2017-05-26"
      }
    ]
  },
  {
    "id": 40,
    "name": "BBL",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 17,
      "name": "Germany",
      "code": "DE",
      "flag": "https://media.api-football.com/flags/de.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-24",
        "end": "2020-05-02"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-28",
        "end": "2019-05-26"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-29",
        "end": "2018-06-16"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-23",
        "end": "2017-06-11"
      }
    ]
  },
  {
    "id": 41,
    "name": "DBBL Women",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 17,
      "name": "Germany",
      "code": "DE",
      "flag": "https://media.api-football.com/flags/de.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-21",
        "end": "2020-03-14"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-28",
        "end": "2019-05-04"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-24",
        "end": "2018-05-01"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-24",
        "end": "2017-05-03"
      }
    ]
  },
  {
    "id": 42,
    "name": "Pro A",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 17,
      "name": "Germany",
      "code": "DE",
      "flag": "https://media.api-football.com/flags/de.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-20",
        "end": "2020-04-04"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-21",
        "end": "2019-05-04"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-22",
        "end": "2018-05-06"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-22",
        "end": "2017-05-07"
      }
    ]
  },
  {
    "id": 43,
    "name": "Pro B",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 17,
      "name": "Germany",
      "code": "DE",
      "flag": "https://media.api-football.com/flags/de.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-21",
        "end": "2020-03-07"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-22",
        "end": "2019-05-03"
      }
    ]
  },
  {
    "id": 44,
    "name": "A2",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 18,
      "name": "Greece",
      "code": "GR",
      "flag": "https://media.api-football.com/flags/gr.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-05",
        "end": "2020-05-09"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-06",
        "end": "2019-05-25"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-07",
        "end": "2018-05-26"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-08",
        "end": "2017-05-24"
      }
    ]
  },
  {
    "id": 45,
    "name": "Basket League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 18,
      "name": "Greece",
      "code": "GR",
      "flag": "https://media.api-football.com/flags/gr.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-28",
        "end": "2020-04-15"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-06",
        "end": "2019-05-23"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-07",
        "end": "2018-06-17"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-08",
        "end": "2017-06-11"
      }
    ]
  },
  {
    "id": 46,
    "name": "NB I A",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 19,
      "name": "Hungary",
      "code": "HU",
      "flag": "https://media.api-football.com/flags/hu.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-27",
        "end": "2020-03-28"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-28",
        "end": "2019-05-24"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-29",
        "end": "2018-06-18"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-06",
        "end": "2017-06-18"
      }
    ]
  },
  {
    "id": 47,
    "name": "NB I A W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 19,
      "name": "Hungary",
      "code": "HU",
      "flag": "https://media.api-football.com/flags/hu.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-26",
        "end": "2020-03-14"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-28",
        "end": "2019-05-03"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-29",
        "end": "2018-05-05"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-30",
        "end": "2017-05-04"
      }
    ]
  },
  {
    "id": 48,
    "name": "Premier league",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 20,
      "name": "Iceland",
      "code": "IS",
      "flag": "https://media.api-football.com/flags/is.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-03",
        "end": "2020-03-19"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-04",
        "end": "2019-05-04"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-05",
        "end": "2018-04-28"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-06",
        "end": "2017-04-30"
      }
    ]
  },
  {
    "id": 49,
    "name": "Premier League W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 20,
      "name": "Iceland",
      "code": "IS",
      "flag": "https://media.api-football.com/flags/is.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-02",
        "end": "2020-03-28"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-03",
        "end": "2019-04-27"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-04",
        "end": "2018-04-30"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-05",
        "end": "2017-04-26"
      }
    ]
  },
  {
    "id": 50,
    "name": "Super League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 21,
      "name": "Ireland",
      "code": "IE",
      "flag": "https://media.api-football.com/flags/ie.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-21",
        "end": "2020-03-14"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-29",
        "end": "2019-03-24"
      }
    ]
  },
  {
    "id": 51,
    "name": "Super League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 22,
      "name": "Israel",
      "code": "IL",
      "flag": "https://media.api-football.com/flags/il.svg"
    },
    "seasons": [
      {
        "season": "2017-2018",
        "start": "2017-10-08",
        "end": "2018-06-14"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-08",
        "end": "2017-06-15"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-05",
        "end": "2020-03-15"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-06",
        "end": "2019-05-28"
      }
    ]
  },
  {
    "id": 54,
    "name": "A2 - West",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 23,
      "name": "Italy",
      "code": "IT",
      "flag": "https://media.api-football.com/flags/it.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-05",
        "end": "2019-04-20"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-06",
        "end": "2020-03-01"
      }
    ]
  },
  {
    "id": 55,
    "name": "A2 East",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 23,
      "name": "Italy",
      "code": "IT",
      "flag": "https://media.api-football.com/flags/it.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-07",
        "end": "2019-05-01"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-05",
        "end": "2020-03-01"
      }
    ]
  },
  {
    "id": 52,
    "name": "Lega A",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 23,
      "name": "Italy",
      "code": "IT",
      "flag": "https://media.api-football.com/flags/it.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-06",
        "end": "2019-05-24"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-30",
        "end": "2018-06-15"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-02",
        "end": "2017-06-20"
      },
      {
        "season": "2019-2020",
        "start": "2019-09-24",
        "end": "2020-04-26"
      }
    ]
  },
  {
    "id": 53,
    "name": "Serie A1 W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 23,
      "name": "Italy",
      "code": "IT",
      "flag": "https://media.api-football.com/flags/it.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-06",
        "end": "2019-05-09"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-30",
        "end": "2018-05-13"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-01",
        "end": "2017-05-07"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-05",
        "end": "2020-04-05"
      }
    ]
  },
  {
    "id": 56,
    "name": "B League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 24,
      "name": "Japan",
      "code": "JP",
      "flag": "https://media.api-football.com/flags/jp.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-04",
        "end": "2019-05-11"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-29",
        "end": "2018-05-27"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-22",
        "end": "2017-05-28"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-03",
        "end": "2020-04-19"
      }
    ]
  },
  {
    "id": 57,
    "name": "National League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 25,
      "name": "Kazakhstan",
      "code": "KZ",
      "flag": "https://media.api-football.com/flags/kz.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-09",
        "end": "2019-05-21"
      },
      {
        "season": "2017-2018",
        "start": "2017-12-12",
        "end": "2018-05-05"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-14",
        "end": "2017-04-23"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-10",
        "end": "2020-02-05"
      }
    ]
  },
  {
    "id": 58,
    "name": "Premier League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 25,
      "name": "Kazakhstan",
      "code": "KZ",
      "flag": "https://media.api-football.com/flags/kz.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-31",
        "end": "2019-04-28"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-08",
        "end": "2018-04-20"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-26",
        "end": "2017-04-16"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-13",
        "end": "2020-04-08"
      }
    ]
  },
  {
    "id": 59,
    "name": "Superliga",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 26,
      "name": "Kosovo",
      "code": "XK",
      "flag": "https://media.api-football.com/flags/xk.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-09-22",
        "end": "2019-05-10"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-04",
        "end": "2018-05-23"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-07",
        "end": "2017-05-24"
      },
      {
        "season": "2019-2020",
        "start": "2019-09-27",
        "end": "2020-05-09"
      }
    ]
  },
  {
    "id": 60,
    "name": "LKL",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 27,
      "name": "Lithuania",
      "code": "LT",
      "flag": "https://media.api-football.com/flags/lt.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-09-22",
        "end": "2019-05-24"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-19",
        "end": "2018-06-18"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-21",
        "end": "2017-06-10"
      },
      {
        "season": "2019-2020",
        "start": "2019-09-21",
        "end": "2020-05-07"
      }
    ]
  },
  {
    "id": 62,
    "name": "Moteru Lyga W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 27,
      "name": "Lithuania",
      "code": "LT",
      "flag": "https://media.api-football.com/flags/lt.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-05",
        "end": "2019-04-14"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-10",
        "end": "2018-04-22"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-04",
        "end": "2017-04-19"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-11",
        "end": "2020-04-03"
      }
    ]
  },
  {
    "id": 61,
    "name": "NKL",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 27,
      "name": "Lithuania",
      "code": "LT",
      "flag": "https://media.api-football.com/flags/lt.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-05",
        "end": "2019-04-13"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-05",
        "end": "2018-04-14"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-06",
        "end": "2017-04-22"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-03",
        "end": "2020-03-21"
      }
    ]
  },
  {
    "id": 67,
    "name": "Superleague",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 32,
      "name": "Macedonia",
      "code": "MK",
      "flag": "https://media.api-football.com/flags/mk.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-06",
        "end": "2019-05-22"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-07",
        "end": "2018-05-25"
      },
      {
        "season": "2016-2017",
        "start": "2016-11-19",
        "end": "2017-05-24"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-12",
        "end": "2020-03-14"
      }
    ]
  },
  {
    "id": 63,
    "name": "LNBP",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 28,
      "name": "Mexico",
      "code": "MX",
      "flag": "https://media.api-football.com/flags/mx.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-12",
        "end": "2019-04-14"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-20",
        "end": "2018-04-11"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-14",
        "end": "2017-04-04"
      },
      {
        "season": "2019-2020",
        "start": "2019-09-20",
        "end": "2020-02-02"
      }
    ]
  },
  {
    "id": 64,
    "name": "Prva A Liga",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 29,
      "name": "Montenegro",
      "code": "ME",
      "flag": "https://media.api-football.com/flags/me.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-27",
        "end": "2019-05-19"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-27",
        "end": "2018-05-31"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-15",
        "end": "2017-05-03"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-12",
        "end": "2020-01-27"
      }
    ]
  },
  {
    "id": 65,
    "name": "DBL",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 30,
      "name": "Netherlands",
      "code": "NL",
      "flag": "https://media.api-football.com/flags/nl.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-06",
        "end": "2019-05-28"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-07",
        "end": "2018-05-29"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-08",
        "end": "2017-05-25"
      },
      {
        "season": "2019-2020",
        "start": "2019-09-28",
        "end": "2020-05-02"
      }
    ]
  },
  {
    "id": 66,
    "name": "NBL",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 31,
      "name": "New Zealand",
      "code": "NZ",
      "flag": "https://media.api-football.com/flags/nz.svg"
    },
    "seasons": [
      {
        "season": 2018,
        "start": "2018-04-26",
        "end": "2018-08-05"
      },
      {
        "season": 2017,
        "start": "2017-03-16",
        "end": "2017-06-17"
      },
      {
        "season": 2016,
        "start": "2016-03-10",
        "end": "2016-06-04"
      },
      {
        "season": 2019,
        "start": "2019-04-11",
        "end": "2019-07-21"
      }
    ]
  },
  {
    "id": 68,
    "name": "BLNO",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 33,
      "name": "Norway",
      "code": "NO",
      "flag": "https://media.api-football.com/flags/no.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-09-22",
        "end": "2019-04-11"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-22",
        "end": "2018-04-11"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-30",
        "end": "2017-04-02"
      },
      {
        "season": "2019-2020",
        "start": "2019-09-20",
        "end": "2020-03-01"
      }
    ]
  },
  {
    "id": 69,
    "name": "Kvinneligaen W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 33,
      "name": "Norway",
      "code": "NO",
      "flag": "https://media.api-football.com/flags/no.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-09-22",
        "end": "2019-04-07"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-23",
        "end": "2018-04-08"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-30",
        "end": "2017-04-02"
      },
      {
        "season": "2019-2020",
        "start": "2019-09-26",
        "end": "2020-03-22"
      }
    ]
  },
  {
    "id": 71,
    "name": "1 Liga",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 34,
      "name": "Poland",
      "code": "PL",
      "flag": "https://media.api-football.com/flags/pl.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-09-29",
        "end": "2019-05-19"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-23",
        "end": "2018-05-19"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-23",
        "end": "2017-05-20"
      },
      {
        "season": "2019-2020",
        "start": "2019-09-27",
        "end": "2020-03-29"
      }
    ]
  },
  {
    "id": 72,
    "name": "Energa Basket Liga",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 34,
      "name": "Poland",
      "code": "PL",
      "flag": "https://media.api-football.com/flags/pl.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-02",
        "end": "2019-05-22"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-30",
        "end": "2018-06-04"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-08",
        "end": "2017-06-10"
      },
      {
        "season": "2019-2020",
        "start": "2019-09-26",
        "end": "2020-04-19"
      }
    ]
  },
  {
    "id": 73,
    "name": "Energa Basket Liga W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 34,
      "name": "Poland",
      "code": "PL",
      "flag": "https://media.api-football.com/flags/pl.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-04",
        "end": "2019-04-29"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-21",
        "end": "2018-04-30"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-01",
        "end": "2017-05-03"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-04",
        "end": "2020-03-14"
      }
    ]
  },
  {
    "id": 70,
    "name": "Polish Cup W",
    "type": "cup",
    "logo": nil,
    "country": {
      "id": 34,
      "name": "Poland",
      "code": "PL",
      "flag": "https://media.api-football.com/flags/pl.svg"
    },
    "seasons": [
      {
        "season": 2018,
        "start": "2018-01-19",
        "end": "2018-01-21"
      },
      {
        "season": 2019,
        "start": "2019-01-18",
        "end": "2019-01-20"
      },
      {
        "season": 2020,
        "start": "2020-01-17",
        "end": "2020-01-19"
      }
    ]
  },
  {
    "id": 74,
    "name": "LPB",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 35,
      "name": "Portugal",
      "code": "PT",
      "flag": "https://media.api-football.com/flags/pt.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-06",
        "end": "2019-05-31"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-07",
        "end": "2018-06-15"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-12",
        "end": "2017-06-09"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-05",
        "end": "2020-04-11"
      }
    ]
  },
  {
    "id": 75,
    "name": "Taca de Portugal",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 35,
      "name": "Portugal",
      "code": "PT",
      "flag": "https://media.api-football.com/flags/pt.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-01-16",
        "end": "2019-03-17"
      }
    ]
  },
  {
    "id": 76,
    "name": "BSN",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 36,
      "name": "Puerto Rico",
      "code": "PR",
      "flag": "https://media.api-football.com/flags/pr.svg"
    },
    "seasons": [
      {
        "season": 2018,
        "start": "2018-05-06",
        "end": "2018-09-23"
      },
      {
        "season": 2017,
        "start": "2017-04-07",
        "end": "2017-08-10"
      },
      {
        "season": 2016,
        "start": "2016-02-26",
        "end": "2016-06-15"
      },
      {
        "season": 2019,
        "start": "2019-03-02",
        "end": "2019-07-21"
      }
    ]
  },
  {
    "id": 77,
    "name": "QBL",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 37,
      "name": "Qatar",
      "code": "QA",
      "flag": "https://media.api-football.com/flags/qa.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-12-19",
        "end": "2019-03-09"
      },
      {
        "season": "2019-2020",
        "start": "2019-12-07",
        "end": "2020-02-27"
      }
    ]
  },
  {
    "id": 78,
    "name": "Divizia A",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 38,
      "name": "Romania",
      "code": "RO",
      "flag": "https://media.api-football.com/flags/ro.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-05",
        "end": "2019-05-27"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-06",
        "end": "2018-06-12"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-18",
        "end": "2017-05-26"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-11",
        "end": "2020-04-10"
      }
    ]
  },
  {
    "id": 79,
    "name": "Liga National W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 38,
      "name": "Romania",
      "code": "RO",
      "flag": "https://media.api-football.com/flags/ro.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-06",
        "end": "2019-05-21"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-02",
        "end": "2020-03-08"
      }
    ]
  },
  {
    "id": 83,
    "name": "Premier League W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 39,
      "name": "Russia",
      "code": "RU",
      "flag": "https://media.api-football.com/flags/ru.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-03",
        "end": "2019-04-30"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-29",
        "end": "2018-05-02"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-01",
        "end": "2017-05-01"
      },
      {
        "season": "2019-2020",
        "start": "2019-09-29",
        "end": "2020-02-16"
      }
    ]
  },
  {
    "id": 80,
    "name": "Russian Cup W",
    "type": "cup",
    "logo": nil,
    "country": {
      "id": 39,
      "name": "Russia",
      "code": "RU",
      "flag": "https://media.api-football.com/flags/ru.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-09-25",
        "end": "2019-12-22"
      }
    ]
  },
  {
    "id": 81,
    "name": "Super League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 39,
      "name": "Russia",
      "code": "RU",
      "flag": "https://media.api-football.com/flags/ru.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-04",
        "end": "2019-05-01"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-23",
        "end": "2018-05-16"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-05",
        "end": "2017-04-27"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-11",
        "end": "2020-04-04"
      }
    ]
  },
  {
    "id": 82,
    "name": "VTB United League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 39,
      "name": "Russia",
      "code": "RU",
      "flag": "https://media.api-football.com/flags/ru.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-05",
        "end": "2019-05-28"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-05",
        "end": "2018-06-10"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-02",
        "end": "2017-06-13"
      },
      {
        "season": "2019-2020",
        "start": "2019-09-25",
        "end": "2020-04-26"
      }
    ]
  },
  {
    "id": 84,
    "name": "Premier League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 40,
      "name": "Saudi Arabia",
      "code": "SA",
      "flag": "https://media.api-football.com/flags/sa.svg"
    },
    "seasons": [
      {
        "season": "2018-2019",
        "start": "2018-10-27",
        "end": "2019-04-16"
      },
      {
        "season": "2017-2018",
        "start": "2017-11-23",
        "end": "2018-04-25"
      },
      {
        "season": "2019-2020",
        "start": "2019-10-04",
        "end": "2020-01-31"
      },
      {
        "season": "2016-2017",
        "start": "2016-11-10",
        "end": "2017-04-17"
      }
    ]
  },
  {
    "id": 85,
    "name": "First League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 41,
      "name": "Serbia",
      "code": "RS",
      "flag": "https://media.api-football.com/flags/rs.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-05",
        "end": "2020-03-14"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-05",
        "end": "2019-03-17"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-08",
        "end": "2017-04-12"
      }
    ]
  },
  {
    "id": 86,
    "name": "Superleague",
    "type": "cup",
    "logo": nil,
    "country": {
      "id": 41,
      "name": "Serbia",
      "code": "RS",
      "flag": "https://media.api-football.com/flags/rs.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-04-25",
        "end": "2019-06-17"
      },
      {
        "season": 2018,
        "start": "2018-04-18",
        "end": "2018-06-11"
      },
      {
        "season": 2017,
        "start": "2017-04-21",
        "end": "2017-06-16"
      },
      {
        "season": 2016,
        "start": "2016-05-07",
        "end": "2016-06-12"
      }
    ]
  },
  {
    "id": 87,
    "name": "Extraliga",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 42,
      "name": "Slovakia",
      "code": "SK",
      "flag": "https://media.api-football.com/flags/sk.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-04",
        "end": "2020-03-28"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-06",
        "end": "2019-05-22"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-30",
        "end": "2018-05-13"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-08",
        "end": "2017-05-20"
      }
    ]
  },
  {
    "id": 88,
    "name": "Extraliga W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 42,
      "name": "Slovakia",
      "code": "SK",
      "flag": "https://media.api-football.com/flags/sk.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-28",
        "end": "2020-03-14"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-27",
        "end": "2019-04-20"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-30",
        "end": "2018-04-11"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-01",
        "end": "2017-04-26"
      }
    ]
  },
  {
    "id": 90,
    "name": "1 SKL W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 43,
      "name": "Slovenia",
      "code": "SI",
      "flag": "https://media.api-football.com/flags/si.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-28",
        "end": "2020-03-25"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-26",
        "end": "2019-04-23"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-13",
        "end": "2018-05-18"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-01",
        "end": "2017-04-26"
      }
    ]
  },
  {
    "id": 89,
    "name": "Liga Nova KBM",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 43,
      "name": "Slovenia",
      "code": "SI",
      "flag": "https://media.api-football.com/flags/si.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-02",
        "end": "2020-02-08"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-11",
        "end": "2019-05-24"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-13",
        "end": "2018-05-29"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-03",
        "end": "2017-05-24"
      }
    ]
  },
  {
    "id": 91,
    "name": "KBL",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 44,
      "name": "South Korea",
      "code": "KR",
      "flag": "https://media.api-football.com/flags/kr.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-05",
        "end": "2020-03-31"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-13",
        "end": "2019-04-21"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-14",
        "end": "2018-04-18"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-22",
        "end": "2017-05-02"
      }
    ]
  },
  {
    "id": 92,
    "name": "WKBL W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 44,
      "name": "South Korea",
      "code": "KR",
      "flag": "https://media.api-football.com/flags/kr.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-19",
        "end": "2020-03-19"
      },
      {
        "season": "2018-2019",
        "start": "2018-11-03",
        "end": "2019-03-25"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-28",
        "end": "2018-03-21"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-29",
        "end": "2017-03-20"
      }
    ]
  },
  {
    "id": 95,
    "name": "LEB - Oro",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 45,
      "name": "Spain",
      "code": "ES",
      "flag": "https://media.api-football.com/flags/es.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-25",
        "end": "2020-05-08"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-05",
        "end": "2019-05-22"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-29",
        "end": "2018-06-12"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-30",
        "end": "2017-06-09"
      }
    ]
  },
  {
    "id": 96,
    "name": "LEB - Plata",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 45,
      "name": "Spain",
      "code": "ES",
      "flag": "https://media.api-football.com/flags/es.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-21",
        "end": "2020-02-15"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-05",
        "end": "2019-05-25"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-29",
        "end": "2018-06-05"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-30",
        "end": "2017-06-04"
      }
    ]
  },
  {
    "id": 94,
    "name": "Liga Femenina W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 45,
      "name": "Spain",
      "code": "ES",
      "flag": "https://media.api-football.com/flags/es.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-28",
        "end": "2020-04-04"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-13",
        "end": "2019-05-05"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-30",
        "end": "2018-04-29"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-28",
        "end": "2017-05-02"
      }
    ]
  },
  {
    "id": 98,
    "name": "Basketettan W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 46,
      "name": "Sweden",
      "code": "SE",
      "flag": "https://media.api-football.com/flags/se.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-28",
        "end": "2020-03-15"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-22",
        "end": "2019-03-31"
      }
    ]
  },
  {
    "id": 93,
    "name": "Basketligan",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 46,
      "name": "Sweden",
      "code": "SE",
      "flag": "https://media.api-football.com/flags/se.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-25",
        "end": "2020-03-20"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-21",
        "end": "2019-05-12"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-06",
        "end": "2018-05-18"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-06",
        "end": "2017-05-10"
      }
    ]
  },
  {
    "id": 97,
    "name": "Basketligan W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 46,
      "name": "Sweden",
      "code": "SE",
      "flag": "https://media.api-football.com/flags/se.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-25",
        "end": "2020-03-18"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-29",
        "end": "2019-05-01"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-23",
        "end": "2018-04-25"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-24",
        "end": "2017-04-26"
      }
    ]
  },
  {
    "id": 99,
    "name": "Superettan",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 46,
      "name": "Sweden",
      "code": "SE",
      "flag": "https://media.api-football.com/flags/se.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-28",
        "end": "2020-03-29"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-21",
        "end": "2019-03-31"
      }
    ]
  },
  {
    "id": 100,
    "name": "SB League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 47,
      "name": "Switzerland",
      "code": "CH",
      "flag": "https://media.api-football.com/flags/ch.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-28",
        "end": "2020-03-15"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-29",
        "end": "2019-05-25"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-30",
        "end": "2018-06-09"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-15",
        "end": "2017-06-13"
      }
    ]
  },
  {
    "id": 101,
    "name": "SB League W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 47,
      "name": "Switzerland",
      "code": "CH",
      "flag": "https://media.api-football.com/flags/ch.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-05",
        "end": "2020-02-16"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-29",
        "end": "2019-05-12"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-30",
        "end": "2018-05-20"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-24",
        "end": "2017-05-13"
      }
    ]
  },
  {
    "id": 105,
    "name": "KBSL W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 48,
      "name": "Turkey",
      "code": "TR",
      "flag": "https://media.api-football.com/flags/tr.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-12",
        "end": "2020-04-12"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-13",
        "end": "2019-05-15"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-07",
        "end": "2018-05-21"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-22",
        "end": "2017-05-17"
      }
    ]
  },
  {
    "id": 104,
    "name": "Super Ligi",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 48,
      "name": "Turkey",
      "code": "TR",
      "flag": "https://media.api-football.com/flags/tr.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-28",
        "end": "2020-05-03"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-05",
        "end": "2019-05-26"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-07",
        "end": "2018-06-13"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-08",
        "end": "2017-06-16"
      }
    ]
  },
  {
    "id": 103,
    "name": "TB2L",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 48,
      "name": "Turkey",
      "code": "TR",
      "flag": "https://media.api-football.com/flags/tr.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-11",
        "end": "2020-05-03"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-26",
        "end": "2019-05-13"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-21",
        "end": "2017-05-28"
      }
    ]
  },
  {
    "id": 102,
    "name": "TBL",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 48,
      "name": "Turkey",
      "code": "TR",
      "flag": "https://media.api-football.com/flags/tr.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-11",
        "end": "2020-04-25"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-12",
        "end": "2019-05-26"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-30",
        "end": "2017-06-04"
      }
    ]
  },
  {
    "id": 106,
    "name": "FBU Superleague",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 49,
      "name": "Ukraine",
      "code": "UA",
      "flag": "https://media.api-football.com/flags/ua.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-27",
        "end": "2020-04-17"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-05",
        "end": "2019-04-30"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-29",
        "end": "2018-05-01"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-30",
        "end": "2017-05-08"
      }
    ]
  },
  {
    "id": 107,
    "name": "Superleague W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 49,
      "name": "Ukraine",
      "code": "UA",
      "flag": "https://media.api-football.com/flags/ua.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-09-20",
        "end": "2020-04-01"
      },
      {
        "season": "2018-2019",
        "start": "2018-10-05",
        "end": "2019-05-06"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-26",
        "end": "2018-04-17"
      }
    ]
  },
  {
    "id": 108,
    "name": "BBL",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 50,
      "name": "United Kingdom",
      "code": "GB",
      "flag": "https://media.api-football.com/flags/gb.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-12-06",
        "end": "2020-04-19"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-21",
        "end": "2019-05-19"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-29",
        "end": "2018-05-20"
      },
      {
        "season": "2016-2017",
        "start": "2016-09-23",
        "end": "2017-05-14"
      }
    ]
  },
  {
    "id": 109,
    "name": "WBBL W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 50,
      "name": "United Kingdom",
      "code": "GB",
      "flag": "https://media.api-football.com/flags/gb.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-12",
        "end": "2020-04-19"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-29",
        "end": "2019-05-19"
      },
      {
        "season": "2017-2018",
        "start": "2017-09-30",
        "end": "2018-05-20"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-08",
        "end": "2017-05-14"
      }
    ]
  },
  {
    "id": 110,
    "name": "Liga Uruguaya",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 51,
      "name": "Uruguay",
      "code": "UY",
      "flag": "https://media.api-football.com/flags/uy.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-05-09",
        "end": "2019-07-06"
      },
      {
        "season": 2018,
        "start": "2018-05-11",
        "end": "2018-08-11"
      },
      {
        "season": 2017,
        "start": "2017-02-24",
        "end": "2017-07-05"
      }
    ]
  },
  {
    "id": 15,
    "name": "CBI",
    "type": "cup",
    "logo": nil,
    "country": {
      "id": 5,
      "name": "USA",
      "code": "US",
      "flag": "https://media.api-football.com/flags/us.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-03-20",
        "end": "2019-04-05"
      },
      {
        "season": 2018,
        "start": "2018-03-14",
        "end": "2018-03-30"
      },
      {
        "season": 2017,
        "start": "2017-03-15",
        "end": "2017-03-31"
      }
    ]
  },
  {
    "id": 16,
    "name": "CIT",
    "type": "cup",
    "logo": nil,
    "country": {
      "id": 5,
      "name": "USA",
      "code": "US",
      "flag": "https://media.api-football.com/flags/us.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-03-18",
        "end": "2019-04-04"
      }
    ]
  },
  {
    "id": 12,
    "name": "NBA",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 5,
      "name": "USA",
      "code": "US",
      "flag": "https://media.api-football.com/flags/us.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-10-04",
        "end": "2020-04-16"
      },
      {
        "season": "2018-2019",
        "start": "2018-09-28",
        "end": "2019-05-24"
      },
      {
        "season": "2017-2018",
        "start": "2017-10-01",
        "end": "2018-06-09"
      },
      {
        "season": "2016-2017",
        "start": "2016-10-01",
        "end": "2017-06-13"
      },
      {
        "season": "2015-2016",
        "start": "2015-10-03",
        "end": "2016-06-20"
      }
    ]
  },
  {
    "id": 20,
    "name": "NBA - G League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 0,
      "name": "USA",
      "code": "US",
      "flag": "https://media.api-football.com/flags/us.svg"
    },
    "seasons": [
      {
        "season": "2019-2020",
        "start": "2019-11-09",
        "end": "2020-03-29"
      },
      {
        "season": "2018-2019",
        "start": "2018-11-02",
        "end": "2019-04-13"
      },
      {
        "season": "2017-2018",
        "start": "2017-11-03",
        "end": "2018-04-11"
      },
      {
        "season": "2016-2017",
        "start": "2016-11-12",
        "end": "2017-04-27"
      }
    ]
  },
  {
    "id": 17,
    "name": "NBA - Las Vegas Summer League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 5,
      "name": "USA",
      "code": "US",
      "flag": "https://media.api-football.com/flags/us.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-07-05",
        "end": "2019-07-16"
      },
      {
        "season": 2018,
        "start": "2018-07-06",
        "end": "2018-07-18"
      },
      {
        "season": 2017,
        "start": "2017-07-07",
        "end": "2017-07-18"
      },
      {
        "season": 2016,
        "start": "2016-07-08",
        "end": "2016-07-19"
      }
    ]
  },
  {
    "id": 21,
    "name": "NBA - Sacramento Summer League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 5,
      "name": "USA",
      "code": "US",
      "flag": "https://media.api-football.com/flags/us.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-07-02",
        "end": "2019-07-03"
      },
      {
        "season": 2018,
        "start": "2018-07-03",
        "end": "2018-07-05"
      }
    ]
  },
  {
    "id": 19,
    "name": "NBA - Utah Summer League",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 5,
      "name": "USA",
      "code": "US",
      "flag": "https://media.api-football.com/flags/us.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-07-01",
        "end": "2019-07-04"
      },
      {
        "season": 2018,
        "start": "2018-07-02",
        "end": "2018-07-06"
      },
      {
        "season": 2017,
        "start": "2017-07-03",
        "end": "2017-07-07"
      },
      {
        "season": 2016,
        "start": "2016-07-04",
        "end": "2016-07-08"
      },
      {
        "season": 2015,
        "start": "2015-07-06",
        "end": "2015-07-10"
      }
    ]
  },
  {
    "id": 13,
    "name": "NBA W",
    "type": "League",
    "logo": nil,
    "country": {
      "id": 5,
      "name": "USA",
      "code": "US",
      "flag": "https://media.api-football.com/flags/us.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-05-10",
        "end": "2020-09-20"
      },
      {
        "season": 2018,
        "start": "2018-05-06",
        "end": "2018-09-13"
      },
      {
        "season": 2017,
        "start": "2017-04-29",
        "end": "2017-10-05"
      },
      {
        "season": 2016,
        "start": "2016-05-14",
        "end": "2016-10-21"
      }
    ]
  },
  {
    "id": 14,
    "name": "NIT",
    "type": "cup",
    "logo": nil,
    "country": {
      "id": 5,
      "name": "USA",
      "code": "US",
      "flag": "https://media.api-football.com/flags/us.svg"
    },
    "seasons": [
      {
        "season": 2019,
        "start": "2019-03-19",
        "end": "2019-04-04"
      }
    ]
  }
]

competitions.each do |comp|
    Competition.create({
        comp_id: comp[:id],
        name: comp[:name],
        comp_type: comp[:type],
        country: comp[:country][:name],
        season: comp[:seasons][0][:season]
    })
end

countries = [
  {
    "id": 1,
    "name": "Australia",
    "code": "AU",
    "flag": "https://media.api-football.com/flags/au.svg"
  },
  {
    "id": 2,
    "name": "Asia",
    "code": "AS",
    "flag": "https://media.api-football.com/flags/as.svg"
  },
  {
    "id": 3,
    "name": "Austria",
    "code": "AT",
    "flag": "https://media.api-football.com/flags/at.svg"
  },
  {
    "id": 4,
    "name": "France",
    "code": "FR",
    "flag": "https://media.api-football.com/flags/fr.svg"
  },
  {
    "id": 5,
    "name": "USA",
    "code": "US",
    "flag": "https://media.api-football.com/flags/us.svg"
  },
  {
    "id": 6,
    "name": "Argentina",
    "code": "AR",
    "flag": "https://media.api-football.com/flags/ar.svg"
  },
  {
    "id": 7,
    "name": "Belgium",
    "code": "BE",
    "flag": "https://media.api-football.com/flags/be.svg"
  },
  {
    "id": 8,
    "name": "Brazil",
    "code": "BR",
    "flag": "https://media.api-football.com/flags/br.svg"
  },
  {
    "id": 9,
    "name": "Canada",
    "code": "CA",
    "flag": "https://media.api-football.com/flags/ca.svg"
  },
  {
    "id": 10,
    "name": "Croatia",
    "code": "HR",
    "flag": "https://media.api-football.com/flags/hr.svg"
  },
  {
    "id": 12,
    "name": "Czech Republic",
    "code": "CZ",
    "flag": "https://media.api-football.com/flags/cz.svg"
  },
  {
    "id": 13,
    "name": "Denmark",
    "code": "DK",
    "flag": "https://media.api-football.com/flags/dk.svg"
  },
  {
    "id": 14,
    "name": "Estonia",
    "code": "EE",
    "flag": "https://media.api-football.com/flags/ee.svg"
  },
  {
    "id": 15,
    "name": "Finland",
    "code": "FI",
    "flag": "https://media.api-football.com/flags/fi.svg"
  },
  {
    "id": 16,
    "name": "Georgia",
    "code": "GE",
    "flag": "https://media.api-football.com/flags/ge.svg"
  },
  {
    "id": 17,
    "name": "Germany",
    "code": "DE",
    "flag": "https://media.api-football.com/flags/de.svg"
  },
  {
    "id": 18,
    "name": "Greece",
    "code": "GR",
    "flag": "https://media.api-football.com/flags/gr.svg"
  },
  {
    "id": 19,
    "name": "Hungary",
    "code": "HU",
    "flag": "https://media.api-football.com/flags/hu.svg"
  },
  {
    "id": 20,
    "name": "Iceland",
    "code": "IS",
    "flag": "https://media.api-football.com/flags/is.svg"
  },
  {
    "id": 21,
    "name": "Ireland",
    "code": "IE",
    "flag": "https://media.api-football.com/flags/ie.svg"
  },
  {
    "id": 22,
    "name": "Israel",
    "code": "IL",
    "flag": "https://media.api-football.com/flags/il.svg"
  },
  {
    "id": 23,
    "name": "Italy",
    "code": "IT",
    "flag": "https://media.api-football.com/flags/it.svg"
  },
  {
    "id": 24,
    "name": "Japan",
    "code": "JP",
    "flag": "https://media.api-football.com/flags/jp.svg"
  },
  {
    "id": 25,
    "name": "Kazakhstan",
    "code": "KZ",
    "flag": "https://media.api-football.com/flags/kz.svg"
  },
  {
    "id": 27,
    "name": "Lithuania",
    "code": "LT",
    "flag": "https://media.api-football.com/flags/lt.svg"
  },
  {
    "id": 28,
    "name": "Mexico",
    "code": "MX",
    "flag": "https://media.api-football.com/flags/mx.svg"
  },
  {
    "id": 29,
    "name": "Montenegro",
    "code": "ME",
    "flag": "https://media.api-football.com/flags/me.svg"
  },
  {
    "id": 30,
    "name": "Netherlands",
    "code": "NL",
    "flag": "https://media.api-football.com/flags/nl.svg"
  },
  {
    "id": 31,
    "name": "New Zealand",
    "code": "NZ",
    "flag": "https://media.api-football.com/flags/nz.svg"
  },
  {
    "id": 32,
    "name": "Macedonia",
    "code": "MK",
    "flag": "https://media.api-football.com/flags/mk.svg"
  },
  {
    "id": 33,
    "name": "Norway",
    "code": "NO",
    "flag": "https://media.api-football.com/flags/no.svg"
  },
  {
    "id": 34,
    "name": "Poland",
    "code": "PL",
    "flag": "https://media.api-football.com/flags/pl.svg"
  },
  {
    "id": 35,
    "name": "Portugal",
    "code": "PT",
    "flag": "https://media.api-football.com/flags/pt.svg"
  },
  {
    "id": 36,
    "name": "Puerto Rico",
    "code": "PR",
    "flag": "https://media.api-football.com/flags/pr.svg"
  },
  {
    "id": 37,
    "name": "Qatar",
    "code": "QA",
    "flag": "https://media.api-football.com/flags/qa.svg"
  },
  {
    "id": 38,
    "name": "Romania",
    "code": "RO",
    "flag": "https://media.api-football.com/flags/ro.svg"
  },
  {
    "id": 39,
    "name": "Russia",
    "code": "RU",
    "flag": "https://media.api-football.com/flags/ru.svg"
  },
  {
    "id": 40,
    "name": "Saudi Arabia",
    "code": "SA",
    "flag": "https://media.api-football.com/flags/sa.svg"
  },
  {
    "id": 41,
    "name": "Serbia",
    "code": "RS",
    "flag": "https://media.api-football.com/flags/rs.svg"
  },
  {
    "id": 42,
    "name": "Slovakia",
    "code": "SK",
    "flag": "https://media.api-football.com/flags/sk.svg"
  },
  {
    "id": 43,
    "name": "Slovenia",
    "code": "SI",
    "flag": "https://media.api-football.com/flags/si.svg"
  },
  {
    "id": 44,
    "name": "South Korea",
    "code": "KR",
    "flag": "https://media.api-football.com/flags/kr.svg"
  },
  {
    "id": 45,
    "name": "Spain",
    "code": "ES",
    "flag": "https://media.api-football.com/flags/es.svg"
  },
  {
    "id": 46,
    "name": "Sweden",
    "code": "SE",
    "flag": "https://media.api-football.com/flags/se.svg"
  },
  {
    "id": 47,
    "name": "Switzerland",
    "code": "CH",
    "flag": "https://media.api-football.com/flags/ch.svg"
  },
  {
    "id": 48,
    "name": "Turkey",
    "code": "TR",
    "flag": "https://media.api-football.com/flags/tr.svg"
  },
  {
    "id": 49,
    "name": "Ukraine",
    "code": "UA",
    "flag": "https://media.api-football.com/flags/ua.svg"
  },
  {
    "id": 50,
    "name": "United Kingdom",
    "code": "GB",
    "flag": "https://media.api-football.com/flags/gb.svg"
  },
  {
    "id": 51,
    "name": "Belarus",
    "code": "BY",
    "flag": "https://media.api-football.com/flags/by.svg"
  },
  {
    "id": 52,
    "name": "Bulgaria",
    "code": "BG",
    "flag": "https://media.api-football.com/flags/bg.svg"
  },
  {
    "id": 53,
    "name": "Chile",
    "code": "CL",
    "flag": "https://media.api-football.com/flags/cl.svg"
  },
  {
    "id": 54,
    "name": "Cyprus",
    "code": "CY",
    "flag": "https://media.api-football.com/flags/cy.svg"
  },
  {
    "id": 11,
    "name": "China",
    "code": "CN",
    "flag": "https://media.api-football.com/flags/cn.svg"
  }
]

countries.each do |country|
  Country.create({
      country_id: country[:id],
      name: country[:name],
      code: country[:code],
      flag_image: country[:flag]
  })
end

# logos = [
#   {
#     team: 'Atlanta Hawks',
#     image: 
#   },
#   {
#     team: 'Houston Rockets',
#     image: 'https://content.sportslogos.net/logos/6/230/full/etpzlhc48xgh58agjuln2khsl.png'
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   },
#   {
#     team: ,
#     image: 
#   }
# ]