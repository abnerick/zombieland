# Zombieland

Coldfusion scaffolding project to allow

## Getting Started

Zombieland is mixing CFML script and tags to list data from a MySQL db
- [Lucee Documentation Project](http://docs.lucee.org/)

### Prerequisites

* You need to install the Lucee Server from https://lucee.org/
* You need to install a code editor with CFML support
* You need to create a database using the following script

```
-- zombieland.sql
create database zombieland; 
create user 'zombiedba'@'localhost' identified by 'secret';
grant select, insert, delete, update on zombieland.* to 'zombiedba'@'localhost';
use zombieland;
create table zombie (
	zombie_id int unsigned not null auto_increment, 
	name varchar(20) not null, 
	constraint pk_zombie primary key (zombie_id));
commit;
```

### Installing

Download the source code or clone this repository


## Deployment

Configure a Lucee's [Datasource](https://docs.lucee.org/guides/cookbooks/datasource-define-datasource.html#create-a-datasource-in-the-administrator) named zombieds using the [Lucee Server](http://localhost:8888/lucee/admin/server.cfm) 

Copy the zombieland directory inside the Lucee server
```
cp zombieland/ /opt/lucee/tomcat/webapps/
```

## Testing

Open a web browser, go to http://localhost:8888/zombieland/


## Built With

* [Lucee 5.2.9.31](https://lucee.org/) - The Lucee server and light-weight dynamic scripting language 
* [SublimeText 3.1.1](https://www.sublimetext.com/) - The text editor for code
* [MySQL 8.0](https://www.mysql.com/) - he world's most popular open source database

## Authors

* **Abner Díaz** - [abnerick](https://github.com/abnerick)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

The following packages were used in the development of this project:
* https://github.com/jcberquist/sublimetext-cfml
