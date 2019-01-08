# Fineract-CN API documentation

The aim of this project is to bring together all the generated Fineract-CN API documentation.
This project contains both generated documentation as well as instructions how to re-generate.


## Browsing the docs

[Start here](https://aasaru.github.io/fineract-cn-api-docs/src/main/resources/doc/html5/index.html)


## Re-generate the docs

1. Clone this project next to other fineract-cn- projects. You need to have following directory structure:

 
```
your_workspace_dir/
                   fineract-cn-api-docs
                   fineract-cn-identity
                   ineract-cn-customer
                   ineract-cn-accounting
                   ...
 
```

1. You need to have Cassandra and MySQL/MariaDB running

1. You need to run the classes in this table:

https://cwiki.apache.org/confluence/display/FINERACT/Apache+Fineract+CN+API+Documentation

1. For this right click in your IDE and click RUN (some don't work this way - need yet to solve)
  
1. Under build/doc/generated-snippets/{module name} check that there are folders generated

1. In current project run `./generate_doc.sh`