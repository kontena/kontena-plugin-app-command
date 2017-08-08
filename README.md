# Kontena API subcommand plugin

This plugin adds "api" subcommand to kontena-cli. It can be used to send raw http requests to the current master API without having to concern yourself with the authentication.

## Installation

`kontena plugin install api_command`

## Usage

### Basic example

```
$ kontena api get /v1/grids
{"grids":[{"id":"test","name":"test","token":"XsIJDo6jVRh4OlmkW8//AJtA3ecptjzPxdvvMEvvgsYT23ido+BuNX6OXiAAOcJo3G+SFqxOGYzsVXEdlVpxvA==","initial_size":1,"stats":{"statsd":null},"default_affinity":[],"trusted_subnets":[],"node_count":0,"service_count":0,"container_count":0,"user_count":2}]}
```

### Inspect headers

```
$ kontena api get -H /v1/grids
Request headers:
 * Accept: application/json
 * User-Agent: kontena-cli/1.1.2
 * Authorization: Bearer e3a3b7133f94017a0de4913a30c679d6afe21f5f632c19efaa1706fadfc9bc05

Response headers:
 * Status: 200
 * Content-Type: application/json
 * X-Kontena-Version: 1.1.2.rc1
 * Content-Length: 290

{"grids":[{"id":"test","name":"test","token":"XsIJDo6jVRh4OlmkW8//AJtA3ecptjzPxdvvMEvvgsYT23ido+BuNX6OXiAAOcJo3G+SFqxOGYzsVXEdlVpxvA==","initial_size":1,"stats":{"statsd":null},"default_affinity":[],"trusted_subnets":[],"node_count":0,"service_count":0,"container_count":0,"user_count":2}]}
```

### Sending data

```
$ echo '{"name":"foofoo"}' | kontena api post /v1/grids
{"id":"foofoo","name":"foofoo","token":"Aez/8GV3wmIMlDByJlKtC9rjCrnTxAXCqMfO9MABK1+PLTtwiOOq1hJW4UiMCrpOkhfO0SSuwmN6M7MgHQ8OIQ==","initial_size":1,"stats":{"statsd":null},"default_affinity":[],"trusted_subnets":[],"node_count":0,"service_count":0,"container_count":0,"user_count":1}
```

or using redirection:

```
$ kontena api post /v1/grids < foofoo.json
```

## Contributing

1. Fork it ( https://github.com/kontena/kontena-plugin-api_command )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

Kontena is licensed under the Apache License, Version 2.0. See [LICENSE](LICENSE.txt) for full license text.
