<?php

$db_type="mysql"; //Type of db: "mysql", "sqlite" or "postgresql"
$stats_password="PASSWORD"; //password to login to stats.php. Change this!!!
$enable_id_obfuscation=false; //if set to true, test IDs will be obfuscated to prevent users from guessing URLs of other tests
$redact_ip_addresses=false; //if set to true, IP addresses will be redacted from IP and ISP info fields, as well as the log

// Sqlite3 settings
$Sqlite_db_file = "../../speedtest_telemetry.sql";

// Mysql settings
$MySql_username="USERNAME";
$MySql_password="PASSWORD";
$MySql_hostname="DB_HOSTNAME";
$MySql_databasename="DB_NAME";

// Postgresql settings
$PostgreSql_username="user";
$PostgreSql_password="password1";
$PostgreSql_hostname="localhost";
$PostgreSql_databasename="mydb";


//IMPORTANT: DO NOT ADD ANYTHING BELOW THIS PHP CLOSING TAG, NOT EVEN EMPTY LINES!
?>

