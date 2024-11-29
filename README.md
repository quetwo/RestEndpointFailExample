This project is to be used to show an example of the REST endpoints not being created correctly
in the Lucee CFML engine in the 6.x release train.

### Stable Build
This code works with Lucee 5.4.6.9 and 5.4.6.9-light. It also works with previous versions as well.

### How to build
Clone this repository, and run with `docker compose build`, then `docker compose up`.

When the container is up, go to `http://localhost:8888/healthcheck.cfm`.  You should see a message
in the logs that the REST endpoint was initialized.  You can then use POSTMAN to go to
`http://localhost:8888/rest/testrest/test` with either method `GET` or `POST`.  A successful test will
return a JSON object with a few properties.

### Changing Lucee Engine Versions

- Edit the `frontend/Dockerfile` and change the `FROM lucee/lucee:5.4-light` to the version you wish to
test. This has been known to fail with `lucee/lucee:6.1-light` and `lucee/lucee:6.2-light`.
- Clean up any previous containers by issuing the command `docker compose down`
- Rebuild the container by issuing the command `docker compose build`.
- Run the new version by issuing the command `docker compose up`.
- Warm up the engine by going to `http://localhost:8888/healthcheck.cfm` and then using POSTMAN to connect
to the endpoints.

### Debugging Output

View `http://localhost:8888/index.cfm` to see if the REST endpoints were created or not, according to the
lucee runtime.