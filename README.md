




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
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/mikeg1440/Moniez">
    <img src="https://github.com/mikeg1440/Moniez-Frontend/blob/master/src/images/moniez-green-logo.png" alt="Moniez Logo" width="80" height="80">
  </a>

  <h3 align="center">Moniez</h3>

  <p align="center">
    A personal budgeting application with a Ruby on Rails API back end and a React.js front end
    <br />
    <a href="https://github.com/mikeg1440/Moniez">View Demo</a>
    ·
    <a href="https://github.com/mikeg1440/Moniez/issues">Report a Bug</a>
    ·
    <a href="https://github.com/mikeg1440/Moniez/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

[![Moniez Dashboard Screen Shot][product-screenshot]](https://github.com/mikeg1440/Moniez-Frontend/blob/master/src/images/dashboard-screenshot.png)


### Built With

* [React.js](https://reactjs.org/)
  * [Recharts](http://recharts.org/en-US/)
  * [react-router-dom](https://www.npmjs.com/package/react-router-dom)
* [Ruby on Rails](https://rubyonrails.org/)
  * [Simple Token Authentication](https://github.com/gonzalo-bulnes/simple_token_authentication)
  * [Active Model Serializers](https://github.com/rails-api/active_model_serializers)


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.
* npm
```sh
npm install npm@latest -g
```
* [Ruby on Rails installed](https://www.tutorialspoint.com/ruby-on-rails/rails-installation.htm)


### Installation

### Backend API
1. Clone the https://github.com/mikeg1440/Moniez
```sh
git clone https://github.com/mikeg1440/Moniez.git
```
2. Change to the `Moniez-Backend` folder
3. Run `bundle install` to install gems
4. Run `rails db:setup` to create database and run migrations
5. Finally to run the API server run `rails s`

### Frontend Interface
1. Change the `Moniez-Frontend` folder
2. Install NPM packages `npm install`
3. ##### `yarn start`
  Runs the app in the development mode.<br />
  Open [http://localhost:3000](http://localhost:3000) to view it in the browser.
4. ##### `yarn build` to build the application (not needed for development)
  Builds the app for production to the `build` folder.<br />
  It correctly bundles React in production mode and optimizes the build for the best performance.


<!-- USAGE EXAMPLES -->
## Usage

This can be useful for people looking to get an idea of where their money is going and how to best cut expenses so you can save as much as possible.  Users have the option of putting entering lists of Earnings, Expenses, and Bills that will then be calculated to show either how much money your left with to save or how much you r over spending by.  Each budget when selected is also rendered as a circle pie chart with each category displayed to get a better idea of how even or uneven your budget categories look.



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/mikeg1440/Moniez/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Michael Gaudreau - [@MyLogicBytes1](https://twitter.com/MyLogicBytes1) - cyberct@kbox.li

Project Link: [https://github.com/mikeg1440/Moniez](https://github.com/mikeg1440/Moniez)



<!-- ACKNOWLEDGEMENTS -->
<!-- ## Acknowledgements

* []()
* []()
* []() -->





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=flat-square
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=flat-square
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=flat-square
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=flat-square
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=flat-square
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: https://github.com/mikeg1440/Moniez-Frontend/blob/master/src/images/dashboard-screenshot.png
