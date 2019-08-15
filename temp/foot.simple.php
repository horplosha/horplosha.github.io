<?php
/* ==================================================== ##
##             COPYRIGHTS © DANNEO PHP TEAM             ##
## ==================================================== ##
## PRODUCT : CMS(CONTENT MANAGEMENT SYSTEM)             ##
## LICENSE : GNU 2(General Public License v.2)          ##
## TECHNOLOGIES : PHP & MySQL                           ##
## WWW: www.danneo.com | www.danneo.ru | www.danneo.org ##
## E-MAIL : help@danneo.com                             ##
## ==================================================== */
if(!defined("DNREAD")) exit();
global $db;
$db->close();
print "</BODY>\n";
print "</HTML>";
/* ==================================================== ##
## TEMPLATE PRINT                                       ##
## ==================================================== */
if($setting['rewrite']=="yes"){
$contents = ob_get_contents();
ob_end_clean();
echo $api->seo($contents);
}
exit;
?>
