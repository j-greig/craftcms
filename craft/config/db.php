<?php

/**
 * Database Configuration
 *
 * All of your system's database configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/db.php
 */

 return array(
    '*' => array(
        'omitScriptNameInUrls' => true,
    ),

    'craftcms' => array(
			// The database server name or IP address. Usually this is 'localhost' or '127.0.0.1'.
			'server' => 'localhost',

			// The name of the database to select.
			'database' => 'craftcms',

			// The database username to connect with.
			'user' => 'root',

			// The database password to connect with.
			'password' => 'mysql',

			// The prefix to use when naming tables. This can be no more than 5 characters.
			'tablePrefix' => 'craft',
    ),

    '178.62.81.48' => array(
			// The database server name or IP address. Usually this is 'localhost' or '127.0.0.1'.
			'server' => 'localhost',

			// The name of the database to select.
			'database' => 'craftcms',

			// The database username to connect with.
			'user' => 'root',

			// The database password to connect with.
			'password' => '26f48e5851f9b6180fa2998a7592e4ad58335192607a08ca',

			// The prefix to use when naming tables. This can be no more than 5 characters.
			'tablePrefix' => 'craft',
    )
);
