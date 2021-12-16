<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
![GitHub last commit](https://img.shields.io/github/last-commit/ozzman84/routes-BE)
![Routes Workflow](https://github.com/ozzman84/routes-BE/actions/workflows/ci.yml/badge.svg)



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <img width="1434" alt="Screen Shot 2021-12-15 at 9 56 38 AM" src="https://user-images.githubusercontent.com/83723401/146230400-da7573f2-a213-4256-917c-28f6eb851a69.png">

  <h2 align="center">Routes Back-end</h2>

  <p align="center">
  Routes BE is a 3 week proof of concept project conceived by a 5 person team as a capstone project at Turing School of Software and Design. The application details the route status of a waste companies route status from the perspective of a driver and customer.

  The driver can view an optimized route for all the designated pickups for the day. Once a pickup is complete the driver can mark it as complete. Customers can view how many stops are left as well as an estimated time for arrival.
    <br />
    <a href="https://main.d24jazywnsbqit.amplifyapp.com/home"><strong>Visit the site »</strong></a>
    <br />
    <br />
    <a href="https://user-images.githubusercontent.com/83723401/146247429-084ba154-e0a4-402a-a4fa-21b6a0708a09.gif">View Walkthrough</a>
    ·
    <a href="https://github.com/ozzman84/README_template/issues">Report Bug</a>
    ·
    <a href="https://github.com/ozzman84/README_template/issues">Request Feature</a>
    ·
    <a href="https://github.com/reneeswick/routes">Front-end Repo</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<h2><details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#deployment">Deployment</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details><h2/>


<!-- ABOUT THE PROJECT -->
## About The Project
  <p>
    The Routes BE application is a GraphQL API built with Ruby on Rails using a relational database. Project management was completed using a Jira project board with Agile methodologies and scrum ceremonies. As for testing, GitHub Actions was used for continuous integration and continuous deployment with unit testing completed via RSpec, SimpleCov, and WebMock.  
  </p>

<p align="right">(<a href="#top">back to top</a>)</p>


### Built With
#### Framework
<p>
  <img src="https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white" />
</p>

#### Languages
<p>
  <img src="https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white" />
  <img src="https://img.shields.io/badge/-GraphQL-E10098??style=flat&logo=appveyor&logo=graphql&logoColor=white"
  <img src="https://img.shields.io/badge/ActiveRecord-CC0000.svg?&style=flaste&logo=rubyonrails&logoColor=white" />
</p>

#### Tools
<p>
  <img src="https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white" />
  <img src="https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />
  <img src="https://img.shields.io/badge/Heroku-430098.svg?&style=flaste&logo=heroku&logoColor=white" />
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1.svg?&style=flaste&logo=postgresql&logoColor=white" />

</p>

#### Gems
<p>
  <img src="https://img.shields.io/badge/rspec-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/rubocop-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/shoulda--matchers-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/geocoder-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" /> </br>
  <img src="https://img.shields.io/badge/figaro-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/launchy-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/faraday-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/webmock-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
</p>

#### Development Principles
<p>
  <img src="https://img.shields.io/badge/OOP-b81818.svg?&style=flaste&logo=OOP&logoColor=white" />
  <img src="https://img.shields.io/badge/TDD-b87818.svg?&style=flaste&logo=TDD&logoColor=white" />
  <img src="https://img.shields.io/badge/MVC-b8b018.svg?&style=flaste&logo=MVC&logoColor=white" />
  <img src="https://img.shields.io/badge/REST-33b818.svg?&style=flaste&logo=REST&logoColor=white" />
</p>


<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

### Installation

_Follow the instructions listed below to get the application up and running._

1. Get a free API Key at [MapQuest](https://developer.mapquest.com/)
2. Clone the repo
   ```sh
   git clone git@github.com:ozzman84/routes-BE.git
   ```
3. Run bundle
   ```sh
   bundle install
   ```
4. Run migrations
   ```sh
   rails db:{create,migrate,seed}
   ```
5. Add Figaro Gem
   ```sh
   gem 'figaro'
   ```
6. [Install Figaro](https://github.com/laserlemon/figaro)
   ```sh
   bundle exec figaro install
   ```
7. Configure API key
   ```sh
   # config/application.yml

   mapquest_key: <your_api_key>
   ```

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- SCHEMA -->
## Schema

![Screen Shot 2021-12-15 at 12 04 46 PM](https://user-images.githubusercontent.com/84689917/146401429-ea6c2fbe-e801-4146-8dae-534c0ae3fce7.png)


<!-- QUERY/RESPONSE -->
## Query/Response


  POST `https://peaceful-wildwood-61032.herokuapp.com/graphql`

  <p><b>QUERIES</b></p>

  - Route Request Query

    ```{r, results='hide'}
    {
      routeRequest(driver: 4,
      pickupDay: "Monday"){
        name
        streetAddress
        city
        state
        latitude
        longitude
        disposalTime
        locationId
      }
    }
    ```
  - JSON Return Payload

    ```json
    {
      "data": {
        "routeRequest": [
          {
            "name": "Sandiego Medical Waste",
            "streetAddress": "7630 Miramar Rd",
            "city": "San Diego",
            "state": "CA",
            "latitude": 32.884858,
            "longitude": -117.151322,
            "disposalTime": 0,
            "locationId": null
          },
          {
            "name": "Customer E",
            "streetAddress": "3145 Rosecrans St",
            "city": "San Diego",
            "state": "CA",
            "latitude": 32.746088,
            "longitude": -117.210673,
            "disposalTime": 10,
            "locationId": 183
          },
          {
            "name": "Customer B",
            "streetAddress": "6048 Cornerstone Ct W",
            "city": "San Diego",
            "state": "CA",
            "latitude": 32.896878,
            "longitude": -117.190343,
            "disposalTime": 10,
            "locationId": 174
          },
          {
            "name": "Sandiego Medical Waste",
            "streetAddress": "7630 Miramar Rd",
            "city": "San Diego",
            "state": "CA",
            "latitude": 32.884858,
            "longitude": -117.151322,
            "disposalTime": 0,
            "locationId": null
          }
        ]
      }
    }
    ```

<p><b>All Locations</b></p>


- All Locations Query

  ```rb
  {
    allLocations{
      id
      city
      state
    }
  }
  ```
- JSON Return Payload

  ```json
  {
    "data": {
      "allLocations": [
        {
          "id": "172",
          "city": "San Diego",
          "state": "CA"
        },
        {
          "id": "173",
          "city": "San Diego",
          "state": "CA"
        },
        {
          "id": "175",
          "city": "San Diego",
          "state": "CA"
        }
      ]
    }
  }
  ```

<p><b>All Customers</b></p>

- All Customers Query

  ```rb
  {
    allCustomers{
      id
      name
    }
  }
  ```
- JSON Return Payload

  ```json
  {
    "data": {
      "allCustomers": [
        {
          "id": "78",
          "name": "Customer A"
        },
        {
          "id": "79",
          "name": "Customer B"
        },
        {
          "id": "80",
          "name": "Customer C"
        }
      ]
    }
  }
  ```

<p><b>CREATE</b></p>

  - Create Customer Mutation

  ```rb
  mutation {
    createLocation (
          streetAddress: "160 W Liberty St",
          city: "Reno",
          state: "NV",
          buildingNumber: "N23",
          pickupDay: "Monday",
          numberOfBins: 4,
          pickedUp: false,
          customerId: 1
      ) {
          id
          streetAddress
          city
          state
          buildingNumber
          pickupDay
          numberOfBins
          pickedUp
          customerId
    }    
  }
  ```
  - JSON Return Payload

  ```json
  {
    "data": {
      "createLocation": {
        "streetAddress": "160 W Liberty St",
        "city": "Reno",
        "state": "NV",
        "buildingNumber": "N23",
        "pickupDay": "Monday",
        "numberOfBins": "4",
        "pickedUp": "false",
        "customerId": "1"
      }
    }
  }
  ```

<p><b>UPDATE</b></p>

  - Update Location Query

  ```rb
  mutation {
    updateLocation(
      id: 3,
      pickupDay: "Monday"
    ){
      id
      pickupDay
    }
  }
  ```

  - JSON Return Payload

  ```json
  {
    "data": {
      "updateLocation": {
        "id": "3",
        "pickupDay": "Monday"
      }
    }
  }
  ```

<p><b>DESTROY </b></p>

  - Destroy Location Query

  ```rb
  mutation {
    destroyLocation(id: 3){
      id
    }
  }
  ```

  - JSON Return Payload
  ```rb
  {
    "data": {
      "destroyLocation": {
        "id": "3"
      }
    }
  }
  ```

</br>


See the [open issues](https://github.com/ozzman84/routes-BE/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTACT -->
## Contact
<center>

| Back-end Team  |<img src="https://img.shields.io/badge/LinkedIn-0077B5??style=flat&logo=appveyor&logo=linkedin&logoColor=white" />|<img src="https://img.shields.io/badge/GitHub-100000??style=flat&logo=appveyor&logo=github&logoColor=white" />|
| :-------------:| :-------------------------------------------------:|:------------------------------------:|
| Kelsey Thompson| [link](https://www.linkedin.com/in/knthompson2)    |[link](https://github.com/knthompson2)|
| Ryan Teske     | [link](https://www.linkedin.com/in/ryan-teske-2021)|[link](https://github.com/Rteske)     |
| Ozzie Osmonson | [link](https://www.linkedin.com/in/ozzie-osmonson/)|[link](https://github.com/ozzman84)   |

| Front-end Team  |<img src="https://img.shields.io/badge/LinkedIn-0077B5??style=flat&logo=appveyor&logo=linkedin&logoColor=white" />|<img src="https://img.shields.io/badge/GitHub-100000??style=flat&logo=appveyor&logo=github&logoColor=white" />|
| :----------------:| :---------------------------------------------------:|:-------------------------------------:|
| Renee Swick-Ziller| [link](https://www.linkedin.com/in/reneeswickziller/)|[link](https://github.com/reneeswick2) |
| Nate Sheridan     | [link](https://www.linkedin.com/in/n8s/)             |[link](https://github.com/natesheridan)|

<center/>

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/ozzman84/routes-BE.svg??style=flat&logo=appveyor
[contributors-url]: https://github.com/ozzman84/routes-be/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/ozzman84/Best-README-Template.svg??style=flat&logo=appveyor
[forks-url]: https://github.com/ozzman84/routes-be/network/members
[stars-shield]: https://img.shields.io/github/stars/ozzman84/routes-be.svg??style=flat&logo=appveyor
[stars-url]: https://github.com/ozzman84/routes-be/stargazers
[issues-shield]: https://img.shields.io/github/issues/ozzman84/routes-be.svg??style=flat&logo=appveyor
[issues-url]: https://github.com/ozzman84/routes-be/issues
[license-shield]: https://img.shields.io/github/license/ozzman84/routes-be.svg??style=flat&logo=appveyor
[product-screenshot]: images/screenshot.png
