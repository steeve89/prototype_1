<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */
//  Internationalisation
define('WPLANG', 'fr_FR');
// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'wordpress');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', '');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'E1:,!-ep+Lxeg+Eo}~t4aK1eYBnqmvC0Ppe1#H#]#P8}WVp+h.wnk[om:6:kci.q');
define('SECURE_AUTH_KEY',  ')&`:HBA0QObLkvD$Z;ww}qUiIwi+}l]Joj9Du@G1Vt=[IqC{~AzD1M(z0/8:+V)?');
define('LOGGED_IN_KEY',    '}G}KH*wl^$^TzdY?]W,MsEGWnr-Dz9{{ELW>*9qA@=Ggd?P-0h0g$D{bN6Nn(XL)');
define('NONCE_KEY',        'U.]-(AJ4=@7E[tV&)lt;/&3R2_[3F-SiC;ov_-`Yg8xr~<r-GSZ UBfA5IpPnS{R');
define('AUTH_SALT',        'D4RNmm?jI_Ht<zZT>-:xynw4|852*6*YomF$X)9R:^d`v&l5O0}]y&m!i!tXd7^$');
define('SECURE_AUTH_SALT', '<E&vAi$H}+$@oS9Y3}(beFCC=T$~E70=)0`oaG*/jRfcx63C?bKnC5%$J0{f|EyT');
define('LOGGED_IN_SALT',   'k;)dK*^!y9)-FM&b)K$M*UibW*N{KGY`!<_i`2R%iA!a!V)~s9vo Lt+JfiHV^/$');
define('NONCE_SALT',       'ZzaT8b__*%~N2BBtAh~sYa=2z4qQtV~9!U:}|<kso<DLK2_Tb#cvg [=[w4YpPd/');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');