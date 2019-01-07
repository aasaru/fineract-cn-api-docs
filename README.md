# Fineract-CN API documentation

The aim of this project is to bring together all the generated Fineract-CN API documentation.
This project contains both latest generated documentation as well as instructions how to re-generate.

NB! This is still currently work in progress 

## IF YOU WANT TO BROWSE THE DOCS

Look at [here](src/main/resources/doc/html5)


## IF YOU WANT TO RE-GENERATE

1. Check out this project next to other folders. You need to have following directory structure

your_workspace_dir/fineract-cn-api-docs
your_workspace_dir/fineract-cn-identity
your_workspace_dir/fineract-cn-customer
...

1. You need to have Cassandra and MySQL/MariaDB running

1. You need to run the classes in this table:

https://cwiki.apache.org/confluence/display/FINERACT/Apache+Fineract+CN+API+Documentation

  * For this right click in your IDE and click RUN
  
1. Under build/doc/generated-snippets/{module name} there are folders 

1. In current project run `./gradlew asciidoctor`