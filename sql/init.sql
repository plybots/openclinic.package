GRANT ALL PRIVILEGES ON *.* TO 'openclinic'@'%' WITH GRANT OPTION;
CREATE DATABASE `ikirezi` /*!40100 DEFAULT CHARACTER SET latin1 */;
CREATE DATABASE `ocstats_dbo` /*!40100 DEFAULT CHARACTER SET latin1 */;
CREATE DATABASE `ocadmin_dbo` /*!40100 DEFAULT CHARACTER SET latin1 */;
CREATE DATABASE `openclinic_dbo` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ikirezi`;
SOURCE /opt/sql/dump-ikirezi-202208111058.sql;

USE `ocstats_dbo`;
SOURCE /opt/sql/dump-ocstats_dbo-202208111058.sql;

USE `ocadmin_dbo`;
SOURCE /opt/sql/dump-ocadmin_dbo-202208111058.sql;

USE `openclinic_dbo`;
SOURCE /opt/sql/dump-openclinic_dbo-202208111058.sql;

USE `ocstats_dbo`;
SOURCE /opt/sql/dump-ocstats_dbo-202208111058.sql;

USE `ocadmin_dbo`;
SOURCE /opt/sql/dump-ocadmin_dbo-202208111058.sql;

USE `openclinic_dbo`;
SOURCE /opt/sql/dump-openclinic_dbo-202208111058.sql;
