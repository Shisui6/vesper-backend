<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

<details>
  <summary>📗 Table of Contents</summary>
  <ul>
    <li><a href="#-car-rental-back-end-">📖 Vesper-backend</a></li>
    <li><a href="#-built-with-">🛠 Built With</a></li>
    <li><a href="#-getting-started-">💻 Getting Started</a></li>
    <li><a href="#-authors-">👥 Authors </a></li>
    <li><a href="#-future-features-">🔭 Future Features</a></li>
    <li><a href="#-contributing-">🤝 Contributing</a></li>
    <li><a href="#️-show-your-support-">⭐️ Show your support </a></li>
    <li><a href="#-acknowledgments-">🙏 Acknowledgments </a></li>
    <li><a href="#-license-">📝 License</a></li>
  </ul>
</details>

<br>

<!-- PROJECT DESCRIPTION -->

# 📖 Vesper-backend <a name="about-project"></a>

**Vesper-backend** is the rails backend API application for the full stack vesper app. It provides all the endpoints for the frontend to consume. Here the logic for the app is implemented.
![image](https://user-images.githubusercontent.com/37116322/231762677-66940711-0d7f-4e0f-980a-18e0b8e59c8e.png)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
  </ul>
</details>

<details>
  <summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- Handles logic for storing and retrieving data from the database
- Handle logic for authentication and authorization
- Handles logic for returning data to the frontend

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🩺 Documentation <a name="key-features"></a>

- [Api docs](https://vesper-backend.onrender.com/api-docs/index.html)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🎨 Link to Frontend <a name="key-features"></a>

- [Frontend](https://github.com/Shisui6/car-rental-front-end)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```sh
 git
 bundle
 Your favorite text editor
```

### Setup

Clone this repository to your desired folder:

```sh
  git clone https://github.com/Shisui6/car-rental-back-end.git
```

### Database setup

Connect to your local postgres database:

```sh
  add a .env file to the root directory
  inside the .env file, set the following environment variables:

  POSTGRES_USER=<username>
  POSTGRES_PASSWORD=<password>
  POSTGRES_HOST=<host>
  POSTGRES_PORT=<port>

  Make sure to replace the default text after the '=' sign with values for your local environment
```

### Install

Install this project with:

```sh
  cd car-rental-back-end
  bundle install
  rails: db:create - create the database
  rails: db:migrate - run pending migrations for the current environment.
```

### Usage

To run the project, execute the following command:

```sh
  rails server - Starts the development server
  rails console - Starts the interactive command line
```

### Run tests

To run tests, run the following command:

```sh
  rspec - Runs the test suite
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Shisui**

- GitHub: [@Shisui6](https://github.com/Shisui6)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/okemdi-udeh)

👤 **Sonick**

- GitHub: [@Sonickmumba](https://github.com/Sonickmumba)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/sonick-m-301557a2/)

👤 **Usirusen**

- GitHub: [@UsirusenIkon](https://github.com/UsirusenIkon)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/usirusen-ikon-775855174/)

👤 **Yousufi**

- GitHub: [@zakiyousufi](https://github.com/zakiyousufi)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/ahmadzaki-yousufi-055214217/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] Add more endpoints

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project please leave a star🤩

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- [Microverse](https://www.microverse.org/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
