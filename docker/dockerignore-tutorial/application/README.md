# Docker Ignore Tutorial
In this tutorial, we will be looking at how to utilise a .dockerignore file.

## Project Structure
```
    .
    ├── docker                              # Parent folder
        ├── dockerignore-tutorial           # Subfolder
            ├── application                 # Subfolder 
                ├── .dockerignore           # Docker ignore file
                ├── app.py                  # Python file  
                ├── my-notes.md             # Notes markdown file
                └── README.md               # Readme markdown file
```

## .dockerignore file
The contents of the .dockerignore file
```
# ignore the application folder
application

# ignore all markdown files
*.md

# in this case, we can make an exception for the README
!README.md
```

## Conclusion
The .dockerignore file has allowed us to omit files we do not need

