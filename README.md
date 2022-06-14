# omdb-postgres Container

This is a simple Docker file that puts [credativ/omdb-postgresql][gh] into a container. The end result is a quick way to have a full featured Postgres database with a lot of data seeded to do projects with.

To run, have Docker setup and run `docker run -e POSTGRES_PASSWORD=<your password here> btholt/omdb-postgres`.

[gh]: https://github.com/credativ/omdb-postgresql