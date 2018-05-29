# Customized Alpine
Based on ([Official Alpine:3.4](https://hub.docker.com/_/alpine/))

## Dockerfile links
* [latest](https://gitlab.com/cloim/docker-alpine)

# Added Features
* TimeZone(TZ) Environment Variable (Default : Asia/Seoul)
* Bash Shell with Prompt (\u@\w/ $ )
* Nano Editor
* OpenSSL

# Examples
## Simple way
```
docker run -d -t \
           --name alpine \
           cloim/alpine \
           bash
```

## Set TimeZone
```
docker run -d -t \
           --name alpine \
           -e 'TZ=TIMEZONE'
           cloim/alpine \
           bash
```

