# Docker4Phoenix
![Docker](https://raw.githubusercontent.com/zvonimirr/docker4phoenix/master/priv/static/images/phoenix.png)

Docker4Phoenix is a Docker stack that deploys Phoenix Framework with PostgreSQL as a database (other options coming soon).

To run the stack make sure you first build the Elixir image:
```bash
docker-compose build
```
And then you can run the application with:
```bash
docker-compose up -D
```
Go to [http://localhost:4000](http://localhost:4000) to verify everything is working properly.

#### Found an error?
Please submit an issue.
