# Production Docker image

This project is not production ready, but we'll still run it.

Scripts in this directory should be run from the project root directory, i.e. the parent of this one. 


# Building

```shell script
./prod/build.sh
```

The `build.sh` produces an image tagged as `asherda/lightwalletd:latest`.


# Running

## Configuration 

All configs are moved to environment variables:

- `RPC_HOST` - the host of the `zcashd`-compatible daemon
- `RPC_PORT` - the port
- `RPC_USER` - the user
- `RPC_PASSWORD` - the password
- `LOG_LEVEL` - the log level (`logrus` 0-6, default 2)


## Ports

The container exposes gRPC at port `9067`.


## Mounts

If you wish to preserve the cached blocks, mount a volume to `/var/lib/lightwalletd/db`. 
