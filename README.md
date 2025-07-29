<h1 text-align:center>Welcome to simplyresearch 👋</h1>
<p>
  <a href="#" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
</p>

> SimplyResearch is a Ruby on Rails web application where users can upload PDF files of research papers and generate custom slides in seconds

## Install

```sh
bundle install
```

## Key Configuration

```sh
EDITOR="nano" bin/rails credentials:edit
```

Run this command to access your credentials.yml.enc file, which is what rails uses
to store and encrypt your secrets. Add the following to enable google sign in/sign out
(Make sure to fill it in with your google client id and secret)

```sh
google:
  client_id: 'your_google_client_id'
  client_secret: 'your_google_client_secret'
```

## Run tests

```sh
rails test
```

## Author

👤 **Ranveer Singh & James Griffin**

- Github: [@rsingh135](https://github.com/rsingh135) [@jrgriffiniii](https://github.com/jrgriffiniii)

## Show your support

Give a ⭐️ if this project helped you
