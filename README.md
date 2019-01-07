# Fineract-CN API documentation

The aim of this project is to bring together all the generated Fineract-CN API documentation.
This project contains both latest generated documentation as well as instructions how to re-generate.

NB! This is still currently work in progress 

## Browsing the docs

* [Identity](https://aasaru.github.io/fineract-cn-api-docs/src/main/resources/doc/html5/identity.html)
* [Customer](https://aasaru.github.io/fineract-cn-api-docs/src/main/resources/doc/html5/customer.html) - partly
* ... rest yet to be generated ...


## Re-generate the docs

1. Clone this project next to other fineract-cn- projects. You need to have following directory structure:

 
```
your_workspace_dir/fineract-cn-api-docs
your_workspace_dir/fineract-cn-identity
your_workspace_dir/fineract-cn-customer
...
 
```

1. You need to have Cassandra and MySQL/MariaDB running

1. You need to run the classes in this table:

https://cwiki.apache.org/confluence/display/FINERACT/Apache+Fineract+CN+API+Documentation

1. For this right click in your IDE and click RUN
  
1. Under build/doc/generated-snippets/{module name} there are folders 

1. In current project run `./gradlew asciidoctor`