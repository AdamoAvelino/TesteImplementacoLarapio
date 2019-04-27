<?php

$pathConfig = file_exists('config_dev.ini') ? 'config_dev.ini' : 'config.ini';

define('CONFIG_FILE',  $pathConfig);


