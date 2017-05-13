<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'c4c');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Ee<FUrQad(S>M8PH26ws&5I_(p[L#/;a?RY!5dTKzvN|$u:Qs>Nh~EDI[ME.6az^');
define('SECURE_AUTH_KEY',  '(kYsXz}(K3_`*`CgDP214yz1IN%7 dFLC{:U1@eRRcQQ&IG*gqet3K~xJ3Dh+&H&');
define('LOGGED_IN_KEY',    'wi,zre?`yB-Vf=lM-[R^/-3+(t`Z0pb@5i-2]+%%Qm>Y5o^v&!gW-o_*6t=i;Nm>');
define('NONCE_KEY',        '1B/~tKEka&M:7xg%~5wsW6lF.!B?UDm@$Oj+3&[:*.m/-qw^?0pCQ+S>;9-=^ To');
define('AUTH_SALT',        'wVZoD=<p04ow|EN@OhzC?cEg=N.WTJ<1R1eO6-9o%|%^i+jxEhBR&qUX]NLsTF!}');
define('SECURE_AUTH_SALT', 'bbUusRsWsHKOW!C|8#8-bKP&[*2X[7^p-Zq1zlpS>#((E,g_3>aVGgl`Gh%}.?L#');
define('LOGGED_IN_SALT',   'u3.qUR$l/QF/k9p+&<[a8q^JwId=1js3IWJ(9kdYL:dTfdYe2.iDxW<E:#abVm^:');
define('NONCE_SALT',       'N6dz&2KU9BxEf%;u#~_us%ikg7X?0v:w:?|>n &G&_`_5=Ix.2zHE</Le}Y,BYQV');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
