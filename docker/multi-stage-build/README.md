# Multi-stage Build Tutorial 
Multi-stage builds allow you to separate the build stages of your images into different containers.

This is beneficial for keeping your image and container sizes down, as build tools and source code can be used to compile code in temporary intermediate containers and then deleted once you no longer need them.

The final image then only needs to contain the appropriate runtime and the executable files that were compiled in the build stage.

They are most commonly used for compiled languages, such as Java.

## Project Structure
```
.
├── pom.xml
└── src
    └── main
        ├── java
        │   └── com
        │       └── example
        │           └── helloworld
        │               └── HelloWorldApplication.java
        └── resources
            └── static
                └── index.html
```       

## Commands
1) Build the image
``` 
docker build -t spring-hello-world .
```

2) Start the container
```
docker run -d -p 8080:8080 --name spring-app spring-hello-world
```

3) View the output from the webserver
```
curl localhost:8080 
```

## Output 
```
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <title>Java Spring Boot Server</title>
</head>
<body>
    Hello from Docker
</body>
</html>
```