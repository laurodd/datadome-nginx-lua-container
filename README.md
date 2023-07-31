# DataDome nginx-lua container
This repo tests the DataDome modules with a custom lua-nginx env.

The base of the container is the [nginx-lua project](https://github.com/fabiocicerchia/nginx-lua/), that does not use OpenResty.


## 1 -  Configuration
Open the simple/example file nginx.conf and set your sever-side-key


## 2 - Build the docker image
```
docker image build . -t my-nginx-lua-c
```

## 3 - Run the docker image
```
docker run -d --rm --name myNginxLuaC -p 8181:80 my-nginx-lua-c
```

## Test
```
curl -v  http://localhost:8181/
```
You should be able to see DataDome cookie

## Logs
```
docker logs -f myNginxLua
```
