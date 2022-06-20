-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: techmate_migrate
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `privatekey` text,
  `salt` blob,
  `created_at` timestamp NULL DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `account_typeId` int DEFAULT NULL,
  `account_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_account_type_fk` (`account_typeId`),
  CONSTRAINT `account_account_type_fk` FOREIGN KEY (`account_typeId`) REFERENCES `account_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin','4b423a6dab4a82696051aeac96eb8c9eb97985b3685ed6475a321e61fb1d71421a6d545c35e54cb5718c2717cd6d8699a3e443492c58c0aefafa8e44624a5df7','123456',_binary 'ÿØÿà\0JFIF\0\0H\0H\0\0ÿÛ\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(ÿÛ\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((ÿÂ\0VÚ\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0úp \0\0\0\0\0\0\0\0¦ùyóä_\r[\'ëzß:èôÇ¶ÉÙtZÙÓpâ4:ç!á¼Ch±2	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$)óÏ |ûè^ü=ØðTºâ[*ºÖSÖ­FÚ¦ó45¦rÖÛ`ôÙÇ)z}Þ0Ò}ûþyk_CäµôæGÕ÷µE¾±\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0&d~\rí§6óJ0à\0WTm\0µ,Ý\"¡÷ò­tYÌØÍ¶UszÈÛìÅz0Îa§#î|	¼ýe?³ÑX\rà\0\0\0\0\0\0\0\0\0\0\0\0%¼;Ö^®]Våuq6¥als\"l­æY T3§BY÷ÅÏ\'H«>½(e¢[©\rnÃ!½9y´óô=cÇõ3~û­óïOÕd\'³(\0\0\0\0\0\0\0\0\0Wíñ¸¶Mø5]tÀìº«7=©5¼ºÚl\0EDÈ½-4lÍ©#Hfçö²ÔfØÎ\"[TcÉ£ ó3)mÙÎèd`çwy´aèótQØÙÇÑíýÍ=·v=Bc«0\0\0\0\0\0\0\0çó´ü9WÓµð½½\"ëç¥äÓ¼YÝ¡KíªD¾E\\WÊì½QNVª«Í,;¦ð	µè(L]tì\r%9´lÒy¹ºÜëí^ì^\\Ý\"9kô-ÏÉ¢\r]>N_Eèø/eÛ \0\0\0\0áýãÛÂ{=^Q@Rçj¬W>ºJ(ö¦¦_6y¯?£¿.g£ô­Î²\rWÑI£-³v¤ËQjâJh-ÎaØ-í\'VjèñºxYÇÎÅõÎçt7·>¾÷ÜOÑÁîú\\Ð\0\0VÌò¹æää×Øw<\'´äÑéjyôR¶æ­³!ªKÇlM:¼zOPÁ8ÞåddÓqìóªôÝ.VgæÓ2¬»ÎV¤\Z¥®Æ<Ñw<Æ¾mÊ,·k,ÖqPÚ3;¶ìÚíøþCØä\0\0\07cÏæüÒsùuËìyúùvÐFW6XÞ©E\Zz8¹î;<Þ:rß3¾og>ìÜÎs\"µìÕèyuáÛÐ/\rxSÜÆ«obÓ]*4)È5!W¤Ä¹®¥jy6×:G?Eì4VùékÖðà¼%}.£êÀ{\\`\0\0õK+âç®o3£B¨²lU«Ð­DK#u:Ó9iÛ¾sæQê×sãïëKÎz7NCÄèÉ´í£|\\ý³®ëR¼£WW^{Ya³J²àY¢ÐåuuYVQµ«x,1vkë\0{< \0¤3ç·óÜ»ZG>®RìËÈÉ©[o6ÒÙ#®e´Äe5Ãq¶&tXá´¡¶ªÊ36]ªç¬YwæËLÙöç½*¶©ÒâúÑyBI+VÄÑ@ÈÃX:.Ï©íyäÆ$[ÁfËË­eÆÙLtë?NuKµErõi²ê·9ÑzÞóµµ&mDÞ&Vj«<ÚÔ´½94åÔµysïÉThë2ô%q.IJ(è£3-fX$*§$\"U%~×çðóé«.edÝ+°CI×³ì´n¼[±5Mo\rv[êÆ LÒÐ\"Ôd2Ý,¢ó	Ò¶ÚÒØÆ]+ÍmG>µUâ«.ÄéÏqÝsTMa4¥¨Ð/=×EY@>¯òøò>×¨Fn\"ðÊÍj=»x`ô½=èxu{+Lhì\ngØ¶óô3jÓ~UNÖ`Ôç{°id¨·¢ëÑ7¬­\"Bb%ÙqHrÕ4#R]¥NYyâÙXáR¶cÜ©E@Ri^bã>ßñcÎÏjU4Z!È¦ëf÷tÑ¯Gß3²cU¡¬¢ÃN}]þcªG+£Í]+-¸ÛÙíªQ&TR-I+[ªjr¿1VT¬´©È*ªb©V+V6ñeVT(¦,ubZµ.Õ¼¼kËø_¶øÜß:¶)Ý	Í´dúû¹Ú0zèI­¼üCÙ»0§ëR×?¬î*wç-¿Jô	¥õ![©[K­n¸q¹Ó²åeYÎRÃ;v¥ªÚk±EÂÖ)#¼²B¶Õ¦oÊq|Öb_ÁÝõ\'y»ifT9¹<ú.´+Ý¹}.eænfâìnj4Ë¤LèVlµbÍº®ÊÂ¥Úª¨­T]Õ4n¤C¨¨ºqX[J\"(ØÕX5²%©s>¬³å\0\0\0\0ï°a^0Û\ZâÇÖÏÚì<jëD1R·E¨µ«,¼LQ$Cw*$ALÜ-ÊRj±|ÊØ´ÒêiDÓjæSTØ&«)XS-5`IvKÊ*ë\\¨íy\0\0\0\0LÁåúß)Ç­+æWÓçåÔúyqÆÏ+èîzÍ£r\0½×`´Dk<[]\\)ÝÓ?S¯Ê¾3oõqX´ùóZôÙk^\r¨¹FÕ&´ÙX©rQ5A³k`®ßzHC©úxç\0\0\0\0\0>sÑs2®IÁ¯Ì=¯ö½±Øù¯Ó~A×~]õj½/7è/§«¯î~;\'ÖþuÓÐÓgG5ÛåßMùm/KÞã£C¥5õV°vü¯­Uå»ªö?½Ä«;þm³wgÌ£RÕgõ\\¦e]¸ùýK½À-kIiEëi]vô°=ï,\0\0\0\0\0\0Ë¯?;Y/oûDv;\'_ÈþÁÀö®èÏÍ~§ÆÍ÷þ5öN¼>kê^z×7Óðý\r¾cÓÓþIè}\'/¾|g¦ík/ç[ý¯%Æé÷:3ÅÇõÉÃUyi:_ökÍõ·µvÝÆÃ/yåÚ%¢ñéK±$²ð)\0_FÞól\0D\0\0\0G%ñä86.Hhw(:­C6º@\Zª¡UÅèTZ¡Í\0+P	¸Ô\Zl\0äoP OÿÄ\0/\0\0\0\0\0!1 04A\"3@5#P$%2ÿÚ\0\0üù&±Ã&³$¥òÈYdCU&-t$&ÿ\0Úù<×.C,Rf<ñKçÇOW]~CýF\'õÔýA_õøÏ×@Z¼Lllå×þN£9¹æl³¶(\n4\'[ØÖZ9G\"ÎB²J\"ÕfF? G]Ïbiíhy )Åÿ\0»>ok9mÛ,±º,³ÎEEoUL$È¹\'[	¦ò¸²J2Rÿ\0kP×ÅÁFEÛú§Eµok,è^ãS9r¡\\Èâ>2XBQ9âÖ\rF};Ñùåg¯,q-N¦Ye{?Wö½,½«fË&KÜE]ãèr9\nD»%©@F\\yL:ÿ\0ÔÔê#93O,}~\ZFHïl\"è³6\"ÉHö/vQ5Ô3O¨g4ºKý-^¡aå,¢Lä\'ÛÞ¶KièýqÙ!ÆÌ°¢U¸RD¤v)Î]¦Jª}9³J!3SK©L]ÿ\0¡_2MæÈºÛ±õ\'²õcÛºÖ13ùB+©ÄpîË\'¶²=S$éã¤cÈhµ?èyL¿ÛJùÑtQGuCKèÐ³ö/_Ä\"»é!£$GÓ¶&DDÕÌef,=¡NY¬Ã£+Q§Î\\JÚFOSÙFÜcOjg\Z[½¨h¡H%·\"2³4âGãÅÂ*¢%ÞdÈ|¯´ÙþEøü¦}6HäÑçñÚØj`=¤d\Z#ÐÐÙèË8Ö£ÉÉËKZTÊ?µí- ÚÐÐw`Hé.o7KÇÊÿ\0»3\"Eì¤`Ìi²,ÿ\0ý¾\\8å\rF.\'ò+U2LÉéÅVqëÑ¾·ÈcÂ^mfM1tcUôkvGw·!T×÷a%:\'¬¶]÷EãÉ	)/Ãä\'dÔÆIdÇ¨ñyqçÓ,¶üÒÚº£>U\Z½~\\æÆÏ)OqÚm^öZúz=ít7d_|¶~£q\\¦ä°J³ÔIÊÈìD+Ñåâ¯ðMÔ5YäõÕ¶`È¤Õd6P¬¡#¤_pÓaLp¥tR(¢P±Âº:ÚöD N%³#d\ZåªÉÖFìDH­tA³q_ª[>\Zl4ªxåiö+dd±ÜHæë>d|¨ù\")¢í?lT6uº±Nc#D2SK\'.ÄEësÊ?þ.e:->çù!ý±&ö²;|²Ñ=JJZ´º§7óÍ4­ç§óXõ\'Í)²d9Hìþë(¢æ{$Äþv²qq=J\"/Q(¢¶Eþ,ê\Z?!Á),´s\'EdËrÈäÔï²¥IívSdq¹=&%\'Âx¡lÑDbXý²kµ²$cFýÞËücÿ\0Óì~Ü¨ùGÉCÈs9²R±{,Ñ&~¹hOéÓ1øì¦/;Á¥Çu·Dq	ã8\nCBõgG³,JÚ(kv¶[GòyòNtr/fËÙ¶8÷GÓC­m	íLKèÉ¡ÅhcÚ¬ôÉn4QE}Ïð·GÎ²j\\G1ÉeèH£1ágÄâQBÛÌÑ$4qCHCDl¥²Ú\'íE^È¯¶IÇ|¾Y¶cÙl¶H«#ën;ÐÙCL®ä;c[JÖèc[ÑÄQ8\"¾ÚD4ðÖjçª?ÆÆ!vq8\\ãDR#V¾´-ûIÃCÙûâ?tPâz.Î×ÑíEVõôÕjzÓÏùèr³ØÕP>21¥$$DBüëdÍÆPÐîý]öwµº÷»úêµÓãÔj²j&åÔ²ÞèÊHTÙG¶Ö\"Ë,½×ÑìÖÍ»(q[ö{\Z{Xû\"=D¤)ok5z¿ÔfyQ,(²¿L:\"µÎÈn¶]ºbú^ïv=¥Óq²H«N1\"ÐË{E=-¨¢s#æ¼£Ô¿[Y{YcÍÜ$I´¢+fè¹2S¢9[päpÜÊDg!Iî¿úÉ}+Ù#§´¶è²ú)òMTå¨±»ÚúA\Z{!éR\\ìg\"â<ØÑËÒ¸4ÌJ\'É¦r!ØºÚÎEßÒöo{ýXÙi\r»ª.*ÅÒåµïGüI(ê²Ç!ID=é£ý°gñÄËý%É/.\\\ZàÎ-§4Üäb¥f!lÄ¤³Ú¾cèrMÙ#²V··DQCöÛ­{ù=2Ô`ÕCãÍ¿0gFaÂm%GÉÚÇÉñ£`ÉqJèÍ6IHy¹IãR!FÚ¢(Kð2öG²Ñ#½¥eÚBèlbÉm{y¯ò4óÆ8ÑÑèLmÁQÙßÛ!>*àÔöC.br²iÞ4È&DD~¬½ÒÚjÔzG!vcÙ²÷[û5^?sSãrc3`W8E¨ÇÅÆí¹r)ò£´K\"FL¶Ý³\'7ñP´öFdQõ÷­ØØïkcìhæ¬¢Úûl²ÆÅØº+ï«ñØsí£L,-:_(³4YòDù,ÝdnO;qÓ\nB!+Ú¿ô5³h~$Î¶{2öe¢;¯»JKSâ4ùOôÖ~élZT~ 8£¨iûøP¡Bëd/ÂÆ6Xä7{4zrÞÎCv?¯[-Õ#¯Ã«ÐÆd°Ë£âK¿øÑ]£»D·_{²Æììrc{6÷Õ\r	£8ÉwCD¶àî\"·_í-©1M²ÙÈ}H­ö[/[Gòk±Ô¶¢\Z.8Ö,¸ò5¿ñöÔWë0\\gÉO\"pkpgf«]OxgìÖ7Õ´KÙì¶¤F(¤4©?Éà×­µ¥ùucÔj²j¤¼#Îõ+×Ã©ÔçÐéa¥ÄócYÖ^þGZ´x2eÏ«Ëý\'WXá«ÒæÔâmñù°êsrx°h±Bz}+ÁÉH9¢Ë,MnØÑB]´WUùµ±¬¤^g¯!â`fÖê­­Ô,øã6£ÔÆYuÙ+Êdùuzé±gò¬ò»[ÒÊsÀÏ?Ë[à´ê\Z\\Ùðá%­Òéè|n§,õ¾SU<8ñi³jV<¹tõy/IQK,3D¯/Å<Y¢´9åË_)G*léüg¤ËóbÝD£Õg£ùUùuñ¼Hgÿ\0±ðÿ\0°f£÷èïu´ñØÖMl qÿ\0n«þC7Ëþ=?g´8×ø\\ªz//¢É«ÉªÁ-6\\ÿ\0¦ñ¾Öêc§Ôê³\ZåÉÿ\0_ WªÔ¯ü\Z/Üçÿ\0÷>KüÞ?üPñãESbÙ/¢üº¯ðóöþ½øüzõå´«\'ËW¬ý¿ÿ\0±î¼æäÃã5ïFeóã£Ô-NÌèÿ\0QO.\"óJµÞ«6µâ<gï|ÌeÏG¬,\Z.Ywã¼îu?àÑ~ë?øt¹ò_æÐ~ßÊ]xÈ·Ù#KtQ_Xÿ\0ð-µ~7§6\nÓá5þ?­áð¸¡%â0üÙ!Î8<^9hþ¦åF§ÅióKÓÅãÇ£Q£Ãþ¦0è°â2AJôxqÏ.8Êÿ\0M?é°åKV8`Ç8ZX!	U4ç5<Jf<kü-Ò(ôDöz,ì²÷¿µçqH¢(¢(¢¶¢(hhâpe	Ã©èqÎKññ±b²XZ6,Là8wñ28Æ|làÏàp3ÏÿÄ\0\"\0\0\0\0\0\0\0\0\0\0 0!1@QAÿÚ\0?í*$B!OäÀÜ!5x!þ3ã>3ãÝ\"þ<=xc»Ô ÑÞxúpÇÐ¹hi¶á\r¶©3¬WÑúß9eþãþénÂÖJ¾Ä¶Ï¡2ítö©Â<LWe<EÄ\Z%Þ[hñ<:¢f,OwMu8Ã®)J]âÄÊ]!¿JBÚÛ~Åì_Z¢|¿J)J]Î\'(Çí¥æt]¿T8¶ODÒÔ&±ê¹«é!	éL\\2ô´¿SÌò/4¥¢|T_f#ô=Qj¶dc©¶bÚsØ¶ø¤§¿ñ4X3%Y4XFxýÑ>oH_¯JßýöÿÄ\0&\0\0\0\0\0\0\0\0 !01\"2@AaÿÚ\0?ï¸ÉlSd3ÑÔGQHHÑh¿éçtYz¶[-YlæÎ£BÎÑù\'ä#òåOÚÝò_ÑZ¢·c]ÈähdýMÑ9wªôFTXöÖ¨q0çÿ\0§äd¢Ä%Ù}¶)X$EÉTaËþ?FtÓó¥«Ü0¹\\]w£È\"üêH^YoÇvI´ÎQÊªD:ÕéytCaæfOþD²ýQÐÆF|YjK±<vÄqew-QÄ4ÞµÙÒS#²µÄÁbp(ÄHäYeX´e}Ù¾ÕPåGXëK3eÞ¨g-§»ïn³±\"´ÙÈ×ÄEÄìEêËì½7Dç{c{HH¡DQÓ$5¥ëÈìâq(Ðbe2KL^¦QÄàJ(«ijË,²Ëõ%·Ù&H­Ñø\'ø,_Ðzæ9zâ(.ä$ÈoÝCà1²Ñàä1ÉI	iÿ\0FxÉ*eöÐØôõZ¯oÈ5gâÓ&..õ³¦Êkp\'Cøé}²\'öeÀ¤O86pg,j»/ÑZ©ÑÔ~ÌhðÐ¸Íb¬Í2ú>/òÔ}ìUHM5b©¡Ôbd©Býúò\'8Q|~ÎqDr*1dJÈäULÏÂ¿SW	\\ròÇòcôò\"SPòuÕÎLyÒD³§\ZeÂ½ú%¥Û!í?öÿÄ\07\0	\0\0\0\0\0\0!10@\"AQa 2Pq#3BRbrÁCs±¡ÿÚ\0\0?×$®&¯1^b¯0¤ê1êÂåâ«\nó/2æ¨\nò¯*ò¯*«U×/0ôrSvTy^eóè¨à¯Â¡Þº}7TSÎUU^WË!\nùÂÊþ*îeMÍ<UÃå¼ÑÔr¡Ûñ/Ãº®li@;kÝqz<ÏºÌ|UÐ¦ÂºrvÄ¸òEÆÚtñ×NÊ£VG`!jïåÏW4w§ÄêFë3®uë±¬Õu>nªl4äz ?¨.5j³8åäÛ©Ss2ÿ\0:ò\nnTÔ¦¬G\"C^D,¯¤_û©×2Pt^\')\rÀÔ½ÆdÔÚ&b\nÑf[ÿ\0È/ì© \\A§Ep³ SÂÞ,66´ÂÊn:7R&$§8ÍHêÙ±6âøp]¢òr¢Ö©WUrº¿£Õ8eùHWR79««áKá%|&¨®¹ªú+z©©´É{øÊáÆ¾))»Ñáìiï°¦áôùÂh=hYedßAª¦½ôs<«ågM:*ïl­°ºÎÿ\0ñév×.yYÝnAWÒ¨«õd%ÇÒ®þ¸ßW3Ì0~~_3ã®WðÛul*¨«¬ psÓì¦®¸Jã*XM_\nµU0ÓlVØëpªP¨®®®ª0¾ÎÛ#Ô#?ÕT*êø_\na4$«á¦<TØæb\nÚÂã-Ì¾Ç¡G3U(WVVðP©$T§ü#e\r6uÈfgP«á¢®6T\n~\ní8J®ÞDML7+\"­Æ§\Zú¾fP©}bbêDWÐë¹Î4&÷eÔö»ÛNnpºúèì¸H>È\0Ya¾nÃ+Ý^Ë431´¦©\nEEË9åä¯V$@TÁQøßRûX68nøA·ÍÌ¬íÏÓG1«*<Jyù@4=:Añd\ZÞ÷D1Á®êc¸Dqê³@Ã÷|5;ÙòÅê¶hü¡òûáõ¯-´Ôo¦a­$MMïÎ%eº ¬\n9ÌÓÍ¿ôî¸^X:5Uñ?rc¢<2òh_í½#ZOUõÌQ\"BwÙ¡Lâ=Ó[Ìî}ywùR®ÜÞÆf3æ0Vg%Å	HÎ³Lßq>¿ôP}°ýßå?¹ü¨ß¨MuYd2ôMìÿ\0åAo*è¤MÓ#¾.\'`æÚ&:h\0J«#å>ÈþRu\\l¾[iìç_µ5DöMOöL_¢éÞûbÿ\0ÑBÂ,þüÖbã¤OWÍFü@÷A~ÿ\0å¬,¿² Ì<És~$ØÌó³ÿ\0QËú¸¡û¬ùeÙErÄÇrÈàgÙ9òºý(ÉþÉ{&¦§{î&#à{&ÃlÈp¦×ýà¦÷9ýpçÎIÍ6\"I±mïi>sðÍ\"ÃøWg{¬¬hÊõ_oýúZlPs\";©8L\"ßHÓ]É.m`lTÚÀª¦&¸Ú\nD5Â\0Ü	moÕÑsW%uuup®®®¯ÕÕÕÕÕð¾WW_ÿÄ\0)\0\0\0\0\0\0!1AQaq 0¡±@ÁðPÑáÿÚ\0\0?!ûï%ÅÂî{ýÆV<{])¯ýTlVtßCI¿û?ø¢	ÈàÞ~6ç\n[Î<.Ê²#Ø\Z4¿°¶¿`§ñ½\\¨Á¶øQtÑä !jåyFgãñ,¿xD.tåæ âçèrÇè6Mü¸	¤F!«mláæ·²Ç±[Øö\r¯#d±:`×&}Aä@T|2¾ÈzgÌ#sM{¤ïäÏÜ_ß÷ûWòLþÚßÕ\'þR«Ò^?ÔkC¸;äüñ/\"üOfÜ\rÒq\'Ì0\rw$\"èÁ±¦X`½ÊNùß §ÿ\0µ}LC:*äný&Ó:Qê!µ¸âzÌO!YFsn\0Ê|gf\n#Ì\"{Éßñ^+ÏEü!\"V_L^p2ë\"XÙÌÞ83½#Á8hkV,T÷W¡R(ðà4xrIrJdEðñ\'_FÂ¶)&dÄ¦°RL¹2èEC¡§1ØÚ+6ØËq\"m\rÓá´3¤T­\n¿ÈV¥÷¡ÁC áh5AeIÀN\Z~`Fé¸í`34Pd!T&äigÝD4XµÐ½3SaEbôrÀT!ü×ºÐDÔ)UCÈ\'8fCliÇ\'F¹¬Þ~ýYå¼ÐØÞÁó¡´\'\\GÜh\\Spf  Zl¦Øñ`øNW;²¸øLÇÀ$¨­>4º²#»ÇîÂñévÌÉ8¦VwÃ!è\\pdI]6N\r0`PßqÀUðY.E(%¬dØ\"dB&°y)¨ó£fHÀI±`»ÁÔvt]Fí<eýÄ6âr¾úÐÅÿ\0B¼ueöÌ¯\"\nØ©((íI\"¿He×sõhq¶?a1³)4üð·hqL°ö+¡1öÖé\r	ßÌKL ã;4D6n1a§öÚÏmM\ro%ÿ\0x¼gúNBÜ8¡AO)=¯<*kô%ø/HnxEG 2`ÓÁÙ`ËCÃTT¶dòyØ§2r=¶Se· ²b\rîÜ½mÃ\'Ùx\ZÀ-#Üb©§e\rùpôAadºmÁ¥(»þAÝäÏö0ÄB\'c{±DÄËÈÓZbxÈÓÙE¯qAäµ-ûBY\rZÁuLñ!X}ÌÈ]nEðA³4)v7Ù9VÒ£UDÊ,ªßAÈJXàè!¨Z&4\'»kx%,\rI\rá!*haälÁ:fÐüÄ\\gs5ÓjøåÀT2ÚyFE5°å¡ÌÒça6\'$öc±Í b\ZTY¡u\ZéèíÚYûHñFg ÓzfLM!\rö>®ø`S¨ð*ÖÆºdcÝ¢t|M¾3	Q(!1é¯³-vÎ­Íúcð;Æ<\\cDAQLYÒa(²QCªkGY;3<£Te\n4JXØ¨ÐA60ÎÈÊú^#ÐÈÀ¹1û<k¶&Ì?¦0vÚ°k³$Gl÷	&Ê×Ü\n°RCÜ	¥Åc\"ÂFcÜtBÐöN#Ô5	£Nö)dhd5lS) tt87²\"û¾Â6Õ+Dü±ùàè¸CÜµ¥zf24¤K¤ÁÐ«ÝLÊàÙ\ZQØ$±`Jòg¬/q§JeOf¢XÈB\'Úí¼CI,0æÌ¸càÚD²±¡ÔÑJ]	V¹îÌ¾ÅC¸Bp0½ß\'%-¶ÐÈ±Fzp£ÔÃ-/#DZ4ph5|:`ocÞþ\r\"¼\nÛ/±~GðÕ`ò0l-1/±(p.À¢ÈÒÎ¸iSLÑî8ìB^Æ»\'òVè¿Y¥ÄØ·´öIsùe>ÌD¨Cìî[àóÀ±EÊ	(HÈÅô4úcBUÂñÉàÏ,db>¶TK#,ß\\Ñ1¢dXl`ÛØbËôº£zCmÑû\ZIÃQpð4Ñ$\n\Z.%¡;Ädàqc]\ns£6Ä°3X{6,Èt+XdÌhKHMôvH^y¢\n¤ÀÕúNÙº!á®uà=Ô90A5Yt/ D-®GBÈ°¸ÏÑ\\<%ºlT1SB\' ×±hÄÙÃB}Pú1øe\r%¶*È«dêëi¤2ÑWàÁC74KªD MÈ I%±£B­¬	z#Éð\'C{¹ÆK¢ÙaßSJà×¡ågCTv/Òì^ùx0Y\Zxàöäi@Â*óÂ![3YáìÆ D.SCÚL!ðb°ÇÆxyÝ»¯ÀèùVazüb(ñ%ð_YÑðvèÁ¸Z\"PYåÁyÙ¶èÓ¡ÑØ]8È#ÀÆöÙ6«ùÅ&7OFU(hî\n\"YDIìTh:òèÕ¡Û¦¨Ñ¨·äB$È¡ßgt+í3biá1Sbï#~ø¥CômËÔôT·ÆÆ\rÁ².,éÞøM¸&ì`ò(3äNÐ%N%Ä2CâÊäÓLv#¼8\"4ÁËOaÙù$â01,1äkm¨lºà\'L;7Ñèö^+FÅÑ÷IÚPdyá%=ÅÈÌÐðÖ\rgdXYIhMözXG`¨âÜÚø6\ré³­3§Ä¡WÙ^QÀZI*\ZaX½¦ÊC±wÅ4Épô!áâc-È¤ÊÊxÆ¨Ìö[ÙØg¢ôÐÃä<ò4oÀHdã\Z\\èz4eõ ë#^¯! ¤L*ê\\JöV7UXvâØ«Q¸ÏÜ%xðì4:ÎÎðS³ÓÈ¢¾OwÁÉã]²gÀ¾%\\ÄZpµ{àñ¸c±¯<z°È¦|AÙ08F,²ï\"Õoâ=Ê²7o-ì¡¯Ð«lOtBÁÈüëeäÐÎFîøhhÇ{ec\"xuÈdX=\"Ð»¡M2Wc^<F¹©\\´=HÙþQ\nðNôJø8J³iWØ:\nÔ1·¡[]e÷·z)P¢%Ù\Z¬RY\Zá\0Z4yÆÂÊC.¸ªxÐhz£O¾P×´RYáâH^CS bC/©¤ö!³Ø 7ÁdváF\\ÌVÃ£öy5)*,ìÁ¨Ã3pS:*ÏÂ7Ïc°¥v8O·&ø(¨v]Ë4èÔ~DûãÊÒ\Zýr	Lvþ ~¸â´Ê0aº!2	öÇcÕ*ÐDXNÄlsâE¸¦ôgèyÄ©;cÿ\0°Èc~ üÄ0¬b\nLÞHÙØeû\ZQ¨Ï!®W\nFíp¶áôSC®0-ÆAPÐP­«#,ôbò#¦Wzàg2kÁp=ìù}¥»EhÄy~	 6¶NbDZã¡7Æ5ÂÍ$%£.Fú©ÐM2/¡hQ½O·3³bCÜØôEìdXæO+Bµ-5_Q±öð\ZÆ§ËQ	\n¶ú\ZUðAi\"´wi,ÕTKÂÀçb±&|\rÍìÃÈüèÙ0ÌMì¦ÅL/ÏÜ¶Pî]ÃþáÄñÚ%ûM?É¿Ø(®Äú~Ìí·æddiJ/­úT:KÊgñátÅL½4°´°ðÅ»YþÆÙJá&V\nqY²¸6ÈÉ½S,«ö?A¸²Ñ´>¸³&väiy	G÷1åÛ2ãú-Âíý4Õ¥:Ï ÏhÝü£gB?´§s¢Ï¡,S%ÿ\0AË÷í3QëÇªí8¼.?yl l}rHTeçÐù2TS<Ñdy4ÊmOÐ¡\0D*»}u­:Æ	mAÙ8ÈGÍdnáö8¬ÚÓcÕÎJ^,Á¼ïÿ\0$£)`»Úp,ûhÀU÷*S±ü_è9ý88ýpÿ\0àÉò´£Þ¦H¼Ô1uCVÓIEÁ(aS_32º¥FÌk&Ehÿ\0¯ìyùÿ\0¡_gÁ~ytdì;mñajçajDÛæ8Í>\"¥-¶?Ü<øFCñ1±dt·ÊcîÎjúø_÷ÅÓ;: `ÿ\0­?Èÿ\0ãL`üG4|Õi´ÅþØî5F¼1±©Ì¯ÓÁ­¿¼1õ,9\r$#÷­.ßÑ6Mâ¦>ìûÆK¡±ècË1·ô\'íÓÈâ?0ð1#~)5à£Ëpk\\-ûÜ½¢MmhEØÐtUáSzUÉNª¦7ßýf§^ÂE\'Çh\"$úCFÃðazOc­DØô½¡ÙÓ\'­g Q:\Z:;Ô¢Ä¬jSO¡!J¶UOÀñG]¯kD}úÑó[)Mpx)HðR¥#Àô1ò7\\R2ñùqüFþGÁþJ}7òSzAï)Æ\"IÂÂÀÛÀMà_ÿ\0æô\ZÃôxæ3²=øt!Ó¦Ð|øVà¿ÿÚ\0\0\0\0\0\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0Ý7#Py/ðÓÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0íØá¨ÀHG°D~ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ùy\Z«Ãp|I³âZJÇNÿ\0ÿ\0ÿ\0ÿ\0ÿ\0çû·ôÿ\0úN¬¼³×CZP\'ÿ\0ÿ\0ÿ\0ÿ\0¥-LÌ0ÚùÉ¢H¨wÎþ×ÿ\0ÿ\0ÿ\0ú¯å\\c_OvúõªÊ²vi£8ùÿ\0ÿ\0írWîíïIdnká®IûJ_ÿ\0ý]	úÕ*ÀºÚ}ýi$+1G?çÉkÿ\0ÿ\0Úh]åÉU|B,q¹Zÿ\0\"Aoÿ\0þ6p_ì0#Ù\nç\0X?\'Âlÿ\0üÂK½Æ¯_Ã$à;®»ì+¬Ïë\0.~sP¸_.÷f{ûÐäÖÅ¬i¾=énc\0ãÇ¡ãGgX}Éðíä¯¼¯bXðU_÷äoÐñsçtÙl>Ëlµ¿ÌI5pVPJ¿¥AoQqa¢Þ?aË%?(}¶ÕíS3Íµÿ\0Áì`ÅîE_îwO\']«¨gÛa\rÏÿ\0ûÙðÉ³Ð~C=\"»`\n8|ûRöÿ\0ÿ\0ÿ\0·zTb^$e9t(ÁH×¶gVÏÿ\0ÿ\0ÿ\0ÊðàíZîÊeÓ+òvªÿ\0ÿ\0ÿ\0ÿ\0yX)Û:Fðæp²s5\'ßÃ0ýø8^wÀbØ¢yÇ p\0ÏCÿÄ\0\0\0\0\0\0\0\0\0! 1A0Qa@ÿÚ\0?óOI·¹{.Ý»víÚ±ÿ\0÷vâa±bÂE¡-ÎàÑ3ô÷\0NxË9&ÞáaùzüC\\/£zà¼iÃrÝ=Þafs¶®¶?ÁeØ2Öqe)¶~z6®^È\'i/Nr¼<Ó·umAá²3g|ÄIÔméÆ)<=¬:#2ë-¥ÓÕÓfSÂ6HY\0%²\'Û<¶½ØY!§®DÓ¸ 69ÎCIP¬8M³ÃÚ!/\ZHÏÒ	N%ßqnØÆyËí¶÷½Ù<o÷ffÃ ð¤t8mã,àÔYÜ¡áimì¶[mØÌ8öÛx[by!7»ÀÛ)BËmD;F¹&ðõ=ÙÀµ¶Ù;/ï;<È<ØXþ¹ewâÈ.£ãÀYolAà0ÖíãcÜÀÄ¥ÃÛ\'3À,½,ÈYÉwÄê1ã,	Å¹Á`à c´k~\'\\ïöâcÄdÞüc c®vßÀrß©g-f9qÄvMr~Ýoôúá ü^0ÒÌfû;òìeV.·¢íÔðeÆPdÛëFÌõ¼7ð|±XYöï©ú³ ckäÏp±²J)*w]Ä¶Úü7ØáQ{Cä9ÞÿÄ\0\0\0\0\0\0\0\0\0\0!1 AQa0@ÿÚ\0?ùÙz!÷\Zc{úßÖþô¿¬7Ýâ!=­ÊßÚhý!Ú=û½\rÙöèÜ#çú\0Ö2Õ¨ Æ!ìÄLHèß?Äû¶Î¤ÈeÙ#«aØ:IxeáÁ£©M!Äò¿n÷D²þ[3xÖÔ¤ë»á7¨Ní-ù=õ1á½·©ÁZO¢Þ^6Äbm¡<ô½¯Z¿TD7¶=HÝbvëá>Ê^øÚÒoÁamÖ?[v-¶ÂÃ«ps¶²àlý·7¿xÃ°;¶õjÆv÷8¡^tëÜÂ=`ÉoRê,ø\nöC·kKv¥v¶Þ!´ºði/Äq8q6[!l«V°Ñadp³äpk-¼Ôþ/gg¹IÖèòèÕ:Þð\ZKgx-·xÉê^7ÙÌð7¨þn{H·6L¸®$Ø{Ùu%l6#EÛ¸û6R>Hð!ùÕ³ãc6Ú6g\Z!Ïg«Ëm÷ òÉr_°dÈêTg6òñÛ¸NAjí®)2ÞHØã»»11<öáÚô-=À¬äøÛbÈ3³ø{li7w\rb:X3Ý#ØPpÆå§Ë£Bï\rÒ.Ná;»ô¾Åäì ²2NÈ÷fõgé`Ôú¢s¼mù«ffÐV°±H/«W6YØÂéjáã&RßW«	Èt³ì²ÚZ[ò÷h`YâÀå¸6Ö;¶P¶ÐVJy\r¿»¼HÌÏØWÙzã»»Mø¾¾!z%þYeÿÄ\0*\0\0\0\0\0\0!1AQaq¡0± @ÁÑPáðñÿÚ\0\0?þbp<÷,ÝQ\\¤T¤»ÎEÿ\0à#¥+³qá\0krKÑ_à/øR¿ñ4½awE(«³©Å\rAG%­=Ý9GmÅMoÊ/_D¥\rWd}ÉP7ÜÔÓæ5Ù/Èx¸îÉÅÊy·ó¥FþD\0Äñ`¯öSþ¿ð¾Ùÿ\0H°±6WÔTk^¥5¿¨èYÇ¸j`04_«`$mhÕC* ôuICã][	ît¦£ÝöJtòu1|5-Jð°¨ìóõ{®xBËÆÏÐC³ß,íWÌ®%ó*ËÊO_îeæ¡þØ»SÍ¬Ybþ`¦¨¸ÿ\0$ør®)Ü¶ôóe	P©ÊþïÜCvÌkÅÁcmK}FÛÇr÷\0)\\ªÚôà¨óÀ<:õ\0*ßxö·,Zx9~eW§ÌêX¿Ü¤ ©-=Ýû^¦M\0 \'XÔâD|J{K³D¹Æ¢| ÷l»6DYô`­{ó(À3y÷Kh¥ÄíçZB85sb )x=B\nX«SêZ-^¦t!Ü¿øé\0)uòU{äýäJÿ\0mRæ]B¾,\\<\Z38Â_©Àn]¢uÌä<k%PL^âp¡¨ý¡7^ùÍPÒÔ©v%wM6XÉÀehQønåVu®ÒQRóêêôÄ¨r	l¦,8e´F_\rFlKärTPãg¹ËEM^£ôq[¶L0¸«lKv°¼T\\Z$Pòlhw!|pÅJ .c!³,P·*½Ò¶¥Ô\rASÊ¨\nä<Àã»Ô)q¾ÿ\0ØÄ/S¢én\n\ZGÅBÊ:ùÄ§zÄÏø[©´@1ÈJÆáj1eJ7*iÙ0ÄQQ\nMµÜWP¥î&Ûfe®ìC«p¬¨P(DYýÆæð²\r7°©F!`È}¢(/¬fþ`AÔ1ªooJËuHóÎ±j._\\ÅÈ»m$\"aSE(96»+:XË·c\Z~bÖìäNyKìD4¨õ+W²Èw]Åa)a$ßQ\"ÕiITOÄRF¿Í}Ä¬D½@F*eÇUÂ	Ã.b¿Ü*ÝåøhãüÆ%üÂ²îo¯À+ \róó,Y5\"%l9²NEÞÒÉQO¹e[ùUw»Y0\rßæ^ªÈjçñ8÷dÑWê4+Ë-kªÑ¾ã!p#\ZDE\rêÊ%,!ÕsÙ\n@{DkV\0-MÃfñ	P¦q´ÅS*£ÌJOrxcs?ækvSàÉåDé| nn-pG¥~%oø½·5g¹]2è[¾æAQa¨rMx\0x#ÌÕ£írCØCÌW)e?qS\0¨(Df²yãj¼s9SL³û\"Û\\ú¤	UKõg;\0V\rEXÔTPCÅ/Ý\\8WsX¾\'Yâª\Z·Éw~aùÕ;iI  0DÚwãõd¿ÚJ¨oÀa¿b;y®\'-q¼M}lJ¬Ìdjótõ+h$OfUtK7°~¸	Lh·þ¤ì\n[EPnª6nµUÜÉtüKÊ¦Z\Z_¶\Zyº\0zD¼ÀÓZªò¿xª#±@)î:CWOP#Âq°+¨d>\nÜE¸æw-D¡6EC£{q=ÃFWÕbÊuñ\noøbpùçàU	ß×¸~©õ^=\Z§×¿QQCA´ËÈ\rÜz`<ËnoæâctÜ!UÃ5¿Ïs¨-C@ê½Áý§\0A¬cmQïM)¬)·; ­ðA±×²<ËMTùÍ,§+BÕÔø#¹bÈJâXhWi~ À®! ©]øfÿ\0Àyw&¯î%BîÈYSåüAû]¶ ®H5þ¸ìáÁlKþí(á§Wî¶¿P¸ðÁÚ*YoðO¬¡³Ü®Ú-b\"Ü½ÅGC? à®sqÊùÒäÔ4n\nâ Þ¹l-æd¬ie «ArÃÞJ0[Ì¾aSúF¸EÖ%¢6ó<aP	]Â ¦¥Í2¦;ø@ººÍÒË©Ï,@h=,[îTºW¸¤û[Kx\nj¾HYL£§;l|Ã¾°)êåpFl¤Õ¼Ê§RÚ°cR­ÔpàÀ[K#PÕ7æm ðlÈätI¤=¶ÁÔrl]½-Ð×ÀïÜxE_qMÃ£öMÖ,FQQY¡Nfkî&{M#Ä /N°UBâçæ8¦\0l2µÜeÀ9ÃB+²½¥î7ã_ðÃ#XÞä@Y)XLøóýdÃp~£	XäAdµ£ ÀZàºùEG¬ÙoÜãe|DQC}C¥J¡(®Õ9XÕÙê*Êó9êX-þâïiÅ¦î\r]±­÷2:F\n]ü12ØL!ip|Á´7	æåu,ã¿0ÎÐ}GHÇ¥j¥À]òK£xÅû§ì®_-)Ä6-]dúÑQVùÃ	ËïaA§ð\"Jk·×©Q¹ÉG¸%LL¡ç{u\'ÌÀ|Ñ9[;q8\nhøÒ@Ôi2Îs9°K *üD9Gâ)°>	Í$±²ßp¥4@Ò7¾JÝ8Üm¥T¥\\r.ã4kó·nTwÍÊ¦Ì-*«~#Ë_sZ×Ì\Z AJ4µ§BJeh¡\0a?É¥sÊRU¿qRæZ\n}Gæ­\rk6òmØ\0¼ç\"KUEÌBn¼Ê%Ëï³IÒöåð|ÊtµtÃ1,ê`Ð«à®¾ê:pÀzp÷ÁÆG-´¼H(¡û\n2(íLE×æÁ¢*+eWø!«Up7gâà¤»²êrûCkØ*ÆB­%)Ñ\0íÔ»×3:b>G(J=þ¬.³x/bÆÌV:ìøºFï È16K´SÂe;NX{°>Y9nå5´\nÄÀ5óÜîæ0T0d5ßÜÁ¸èC¼H)«_©ku~åÂpCU¥Ü½º¸Tf\nªÀÜZ1N£ò9u8>eÊE£4ª\\\Z \'F+òî5gÌ*¿Ö!ÏEºç¨)¸Íós9+Ë[E!Ú\ZeÜÛMK²¦¾:£X¶<CPZàVoâ£¶rì.ô¯5*-üDÝÌ­ó9\n:ÝñÑ|æ©ÔnòKÑPé¦peY}¶õb ÀmaSÞR»!L*iÏQ®f;å)*qyþ¸ê#1ªÎÚ©*44÷ÔbéGbòÍfµ¬Ph¥üûÅ[ÃxIo@s+LQµß©Zê²­Zuí«Ëì«Ø8©hª7U2á|B·%´oR§àq!±pùoâÚjþå¼;iÈtK3i\0.þR¶÷.Bàüÿ\0¤!§\"ÛñnÆÃznËXÁ\\TÁ·©Î6 ¯ÖL±rí°À\05!9Â5eyPÀ6ÁjTnÇÔÓÇê\ZÃ1|J¼\0å±¦(ðL­60ÂÅÞ°ÂÁÀoP=Â³=Ä!#U)-Ò+Øð	qû,ºdV ,;J(Ü³¨¯4òÉºHÊyÿ\0H\"Ýg0P(½ÀnÓâ0B¢­;ÉÀS0(¼ÃoÀJÎÌ[|2Wâ8çÿ\0M9ÁJÂÄ¸î5[\\(v#CE>%Å90AP.Q¸ÕKí7Ü8®^.2åQZlejæ\0¾8*Q\ZÖ#Üâ¢ów°-Ùg^¢ÙxT2 àOPÂZê:ò÷]²_ÏùéeÓGÍ³SM]`Ó«-Q\rìÍòlaé}B\" K[\nû¯r8\nn] \n\"ùAgm¨\nßÑ]âc2Ë!¬ÊÞ%ç9rTO#BWÌ¬ùr/~eª¥ëÄHZ¯0àbÂ¢1p÷æ¢ ä©M×èr°°ÈâË>biTE$\raÃýg+â1ÊÐý\Zy¸\"QR%j¡;æ\\¥Vè¿0R=ÜÍ%ðKbÌ8ºò1aVÔÆñ\ZÛ.øÅòC&ÊÓñ¡¸ã*ñLé*%j0G\ræX±	Dó*iÝGÉÅ®!W9y#+mðE]ýü¬KQ§Ìà§\'IDª\ZØ>¯À Ö%rÀÿ\0`ÄG§öÊóÂAÔ¶áõ\0l(Rj±Wñ\ZÀ¶=Z«ºI\0mÆá[¤P32¡Q*>}£Ç1FËk¨ùgÄ¬F7nÖjrü%y°ØTPÇeÅ²¡¶Äw¼.QÜ[=PVÚZ1F¢ìnÊWÉZfj3TÑ9ñ-ñDÐÕkZ©ä*M±v,.»OBÙ¾8\ZaËßYÈyæ?l8¨2áù¹âüÊÑ(Z±	uà;åý ¨0ùJ .ÒyÅPùYIÁ­Ä6«ìê(T\n2!¢r\0ö:[H6cdËRîû²­îdXÅ!ÎQç,yU\"ÖêB)Ùl\nâ:*Ç§?nà\0;\0bw¸f[4V]2nNá@(u*Z®_B´ºÌ¨â¢ñ67ê(ØKr»Má¡\rãUÈLz°=Ë`rèá$=ª×Ìª!âf ëÔ­ d!©¡/Õ\\ïãYB¬`\0ªJ¤äf2å<Á×t+Ì©ÆEÒ4ÄÇÜ#/	b\"iMÅ³º4Kxs\nûfuzx\"®³ó*ikÔ{Uê.%j\05¾£e)Ö\'±IVÄ±*8N HgÌUúy40´«÷8¥²0¡|E;CÀÅÅ¾	ç1ÙÄ¸ð¹T\nÔQÖ´G(1^ÞÙAj|1u\Zs£¸\\\'V¢¿©Â7Ó+\0Ifó\"ìL³â{«âYB¯,¶Ë8¥æ,½­*(4ß0\05-N×@ªáñÝæ3Nb\0|Æò¿2ÅÜ¹:Ý2â^T_Dh¤b¯Qíô2#æ)¥ñÄåTz¥»BmüÂÌetâ6½©KsnjY«â%¥Çlì1É±±0ÙdµLÊr0ÜoYË)G0h«²ó-Ê¶U¸ RBøó³Ä^{T´ÂàÑªÎãÕ!ó\Zblïq3¢D³]c´õâmFÆ¢.%£$OpB¡ñÕí&ª¥±ëÇÌ&TÜ§RØÅ³txoÔýHæQÂÌÄ®}ËÀÏ¤DXó°ZÊ+Ü¨}Ñ\0óÝÆ[	àÊX¼5Â+Ðù®S_9$e»@Ü¿;ÆÆBâÔÉ¥º\rªêqàÔ*g1ûi(-k8èÉ½Dj¾ã2¤N4/F|EÔ8GÇÝ;@÷´®±,e=C.§\nÞo;èda¡È^\\\\b\"ºHBÇ2\\È.þ\"ªÕFKåîSU÷\0TÇP\0­¨JµâiDNQ¸_rlu~¥¸xl¨Z@/êÀçiP.®¥Z\rxUT÷)K_$ ñ=A\0DS\0Î ]%ìÄ¤U:µrÊq÷¦®E@¶-GÉ06=Aì^RÂ}¥5ÁÑê^\Z(IÙ¢]u-°<F°mÂ%ÆJ®ãÙ_QÜµó\rá_P·§ÔàB´p4MÏ?Î@Ld),m4BmBwj\\el÷Î ã#\Zº\rÆåWåæ¦køKÜ¨yIqEûfúÇ?p÷Ä*Ï#9ñ±¨ÚWXu\ZµY*ÊØcÄ«F8¼NoñZ´b1Z$:¿>\"äØÅêùMÒl»:Lºe´j)àÏ0-®|Ã?0¯¥ìâæÿ\0àB­¤1XRÔv|ÀÏõ=R2ÓÞHÛÒl¦Ç}G\"ÒKÕ¨ó1ªß0ôËÙÎ\"m1:û2ZÞ W©X6ÇUKø@¯eªç¸~\"¼^zuPi½mpg³):w.6â¨Ô	ÎâËUûû#ÉßÔÓ ÚÌ+v\\tº¶¢·1ìr,J>¢5v1ìåôÂÇâ{ßà*JFTÃ¸XéÀÅÒ¢4¦ U\ZIÔGqêq¦NcÙIWK·_ çæx+N_åHÕ¹]K<iõ/yâd/ñ4·°GPÂÄël ®Á%*\'¸CÔÁÃæsKïEz:äL6«ê&¿Âp_©ðÎhÅÌfÊø\rä+4TáJs4¡\rQãî7Elz\n)4k&µqßøðWP«;/NKÿ\0+Qcî,[¤Í|ÄZÎ \0ÅæE­þáy²ÿ\01PÑF  ¸C£ÖÂ!7ó4÷¬Ø\\±em¹-VCäTT!Z©fëj*é0ªõ)üF]w²ª.mºµê8þ K±ýC|¿²ðÝ^KÛju2 PÐy`rq(zÜÉYêdKqa½Æû@~åµ#ëþÈo\0©rù=Ì§2i-øÒõ,8Ãèái1;^-Úõ\nÔ_ÇÖÛJ\ZØ,A)-!øFè}Ê¡1VX~£2å%úÛ#jTòMu¸BîîSÏñ´År¬@${©êkYW£/Â%GñUmPó!E\rî6í@£¡}Á\rÙ»ÁP/¨&bùæ\"xüÁ-Ëqxb®ãkÔV¬ÀCN­Ñ0¬ýQ¹õ\Z@(â¿Ôs´;àâl\\E§aæ^TÞ]Û±ø-Õû\nzbfËÅÁ)Ê¤¨¶ê\0ñVD#\Zx÷-kúñµZ%äÅUg«jbDræ¨ÜÄì[NJl·hf.üB¯ý2¬\0»PçqöGiðÄk,u\ZV¬OH·Õñè â³¡\rÙ¥±	ÿ\0å7^)Rg7)j DZ/dz¬àºÛáyZÚDèñ\Z¿\\Ê^¯=W¯\\»ed©DJîWîP½òôíË`2©N.r+ÜÝ|M·Û³y,ÚÈ\0µ@´\Z+æ¢»^®T ¨T¾#¯&Êªên§Â]ñM©­³,{G¨=æªkOênË¿}oíÁFó\"ÌüÔAÆ¥4ÏH(J!Ä»R;î¡Å*nô¸	C¹éþD-ÆêkÕýh4ÿ\0æÓ ;ÜAøþÜçWCú#£8:Úß#ÆàyËÿ\0ÏS© +8¤ªZ/ê,¸\ZÈVòºC÷(7ýJ7ÏN¾iWÞCl~î:Fízù#ËnÇ¡:yp¯þ(D)ñÛâ>qZÏÄGEWRÀrþ`À_Á\06ä¨ky¦\Zº²§Ñ4~kúô¹BS¶Rrê8ÞgÔ¢Øá\\DÎ§beÐÔ½½ñ7ÇêU¹GòXTÐqÝÂ¯\nÕÌ)y«Ó^*TäöFmZu-\0j¬µ4wÚN+ý0¯.þH-\nHP\Z«Ä¾©ä\"PÏCèìøy%ÜÁþÛçÆöÜp×Qò G(Rþ&\n,Öõ{Û#XÊ:Ø/ óPÐï¶3\"âæ °hû¦aÔ}PàQoí¤¯ú Wßâ5³6ü³SvüÆ*:j.,üM¥O0Ël¢«eH¼s«÷.=@	V­QâxþI*Øí?2äÞ (®å½Ø2[oC $¬@`:9Á±ù­ê;Wôê\'!Þ*£þ!%\"mù®</\\Jµ´%ÔçðäNtÇêpÉA¢\"ÝKr7?øÌÍý+þ£mbÕöË»\nPÍ1cÕDx~ú¶ÂÍ_¢.Ö|ÎÝ|Ã©M,»%Sûbà`EJ;l#³Õ+IÇ;!y¢$¯D(\r©ò¢iÈw¨m¸F¼VÀyDå`*¥HâkÄêlú²ºä÷%<Jxv®%<Jxñ\\J´®#n¶ân?¢3Ñ©·;µ¸íØF´¯¢¤	;p.5v§Ñé_qCÂxIÌBâ_ SP9ñ7üAWàT H99H û}Àn h<¥\n?¯±ö@Öe\0#øºê±ñ.<oâ,^#GüSÿ\0Nâ[¯Á9*]Á>¡qyzpWñüF[§â8âzÿÙ',NULL,NULL,1,'active'),(2,'staff','1234',NULL,NULL,NULL,NULL,2,'active'),(3,'user','1234',NULL,NULL,NULL,NULL,3,'deactive'),(5,'hoanglong','f749a07b91e43ed6926756d1e987c5e2e9fd80ffc60ce2da3dcf741e523e1bfc1c1d749282d47f584e28350ef0cdfe1771721942aab990fb49c363f616a19ab5','privatekey',_binary '¥T[(¹(¢º@',NULL,NULL,2,'active');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_type`
--

DROP TABLE IF EXISTS `account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_type` (
  `id` int NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `permissions` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_type`
--

LOCK TABLES `account_type` WRITE;
/*!40000 ALTER TABLE `account_type` DISABLE KEYS */;
INSERT INTO `account_type` VALUES (1,'admin','full control'),(2,'staff','edit'),(3,'user','view only');
/*!40000 ALTER TABLE `account_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL,
  `account_id` int DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `business_phone` int DEFAULT NULL,
  `mobile_phone` int DEFAULT NULL,
  `citizen id` int NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `image` blob,
  `address_line1` varchar(100) DEFAULT NULL,
  `address_line2` varchar(100) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state_province` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `postal_code` varchar(15) DEFAULT NULL,
  `typed_id` int NOT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `adminuser_fk_1` (`typed_id`),
  KEY `admin_account_fk` (`account_id`),
  CONSTRAINT `admin_account_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE,
  CONSTRAINT `adminuser_fk_1` FOREIGN KEY (`typed_id`) REFERENCES `admintype` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admintype`
--

DROP TABLE IF EXISTS `admintype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admintype` (
  `id` int NOT NULL,
  `admin_type` varchar(50) NOT NULL,
  `permissions` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admintype`
--

LOCK TABLES `admintype` WRITE;
/*!40000 ALTER TABLE `admintype` DISABLE KEYS */;
/*!40000 ALTER TABLE `admintype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cart_user` (`user_id`),
  CONSTRAINT `fk_cart_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_section`
--

DROP TABLE IF EXISTS `category_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_section` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_section`
--

LOCK TABLES `category_section` WRITE;
/*!40000 ALTER TABLE `category_section` DISABLE KEYS */;
INSERT INTO `category_section` VALUES (1,'Electronics'),(2,'Fashion'),(3,'Computers'),(4,'Arts & Crafts');
/*!40000 ALTER TABLE `category_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_type`
--

DROP TABLE IF EXISTS `category_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_type` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `desc` mediumtext,
  `category_section_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_section_fk_idx` (`category_section_id`),
  CONSTRAINT `category_section_fk` FOREIGN KEY (`category_section_id`) REFERENCES `category_section` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_type`
--

LOCK TABLES `category_type` WRITE;
/*!40000 ALTER TABLE `category_type` DISABLE KEYS */;
INSERT INTO `category_type` VALUES (1,'Accessories & Supplies','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(2,'Camera & Photo',NULL,1),(3,'Car & Vehicle Electronics',NULL,1),(4,'Cell Phones & Accessories',NULL,1);
/*!40000 ALTER TABLE `category_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `desc` longtext,
  `discount_percent` double DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (0,'Not Sale',NULL,0,1,NULL,NULL),(1,'Sale 10%','',0.1,1,'2022-02-09 13:46:08','2022-02-09 13:46:08'),(2,'Sale 20%',NULL,0.2,1,'2022-02-09 13:46:08','2022-02-09 13:46:08'),(3,'Sale 30%',NULL,0.3,1,'2022-02-09 13:46:08','2022-02-09 13:46:08'),(4,'Sale 40%',NULL,0.4,1,NULL,NULL),(5,'Sale 50%',NULL,0.5,1,NULL,NULL),(6,'Sale 60%',NULL,0.6,1,NULL,NULL),(7,'Sale 70%',NULL,0.7,1,NULL,NULL),(8,'Sale 80%',NULL,0.8,1,NULL,NULL),(9,'Sale 90%',NULL,0.9,1,NULL,NULL),(10,'Sale 100%',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `total` decimal(19,4) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `shipped_date` datetime DEFAULT NULL,
  `shipper_id` int DEFAULT NULL,
  `ship_name` varchar(50) DEFAULT NULL,
  `ship_address_line` varchar(100) DEFAULT NULL,
  `ship_town` varchar(50) DEFAULT NULL,
  `ship_district` varchar(50) DEFAULT NULL,
  `ship_city` varchar(50) DEFAULT NULL,
  `ship_state_province` varchar(50) DEFAULT NULL,
  `ship_country` varchar(50) DEFAULT NULL,
  `ship_postal_code` varchar(50) DEFAULT NULL,
  `shipping_fee` decimal(19,4) DEFAULT '0.0000',
  `notes` text,
  `status_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orders_user` (`user_id`),
  KEY `fk_orders_admin` (`admin_id`),
  KEY `fk_orders_shippers` (`shipper_id`),
  KEY `fk_orders_orders_status` (`status_id`),
  CONSTRAINT `fk_orders_admin` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_orders_orders_status` FOREIGN KEY (`status_id`) REFERENCES `orders_status` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_orders_shippers` FOREIGN KEY (`shipper_id`) REFERENCES `shippers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_orders_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_status`
--

DROP TABLE IF EXISTS `orders_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_status` (
  `id` int NOT NULL,
  `status_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_status`
--

LOCK TABLES `orders_status` WRITE;
/*!40000 ALTER TABLE `orders_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orders_id` int DEFAULT NULL,
  `payment_type_id` int DEFAULT NULL,
  `total_price` decimal(19,4) DEFAULT NULL,
  `note` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_payment_payment_type` (`payment_type_id`),
  KEY `fk_payment_orders_id` (`orders_id`),
  CONSTRAINT `fk_payment_orders_id` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_payment_payment_type` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_type`
--

DROP TABLE IF EXISTS `payment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_type` (
  `id` int NOT NULL,
  `payment_type_name` varchar(50) DEFAULT NULL,
  `note` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_type`
--

LOCK TABLES `payment_type` WRITE;
/*!40000 ALTER TABLE `payment_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` varchar(20) NOT NULL,
  `name` text,
  `price` double DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `sub_category_id` int DEFAULT NULL,
  `discount_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `image` text,
  `star` double DEFAULT NULL,
  `ratings` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_fk` (`discount_id`),
  KEY `sub_categoryt_fk_idx` (`sub_category_id`),
  CONSTRAINT `discount_fk` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sub_categoryt_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('111100000001','a',1,'d',1,1,1,'1',1,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `desc` mediumtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  `category_type_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_type_fk_idx` (`category_type_id`),
  CONSTRAINT `category_type_fk` FOREIGN KEY (`category_type_id`) REFERENCES `category_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'Audio & Video Accessories','','2011-11-11 04:11:11','2011-11-11 04:11:11',1),(2,'Camera & Photo Accessories','cheap dsfdsfsdf','2011-11-11 04:11:11','2011-11-11 04:11:11',1),(3,'Cell Phone Accessories','hsfhsd hhdbc hdchdc ','2011-11-11 04:11:11','2011-11-11 04:11:11',1),(4,'GPS System Accessories','ssss','2011-11-11 04:11:11','2011-11-11 04:11:11',1),(5,'Accessories',NULL,NULL,NULL,2),(6,'Bags & Cases',NULL,NULL,NULL,2),(7,'Binoculars & Scopes',NULL,NULL,NULL,2),(8,'Digital Cameras',NULL,NULL,NULL,2),(9,'Aviation Electronics',NULL,NULL,NULL,3),(10,'Car Electronics',NULL,NULL,NULL,3),(11,'Marine Electronics',NULL,NULL,NULL,3),(12,'Powersports Electronics',NULL,NULL,NULL,3),(13,'Cell Phones',NULL,NULL,NULL,4),(14,'Accessories',NULL,NULL,NULL,4),(15,'Cases, Holsters & Clips',NULL,NULL,NULL,4);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_detail`
--

DROP TABLE IF EXISTS `product_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_detail` (
  `id` int NOT NULL,
  `name` text,
  `desc` text,
  `note` text,
  `info` text,
  `temp1` text,
  `temp2` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_detail`
--

LOCK TABLES `product_detail` WRITE;
/*!40000 ALTER TABLE `product_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippers`
--

DROP TABLE IF EXISTS `shippers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizen_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `business_phone` int DEFAULT NULL,
  `mobile_phone` int DEFAULT NULL,
  `address_line` varchar(100) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state_province` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `notes` text,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippers`
--

LOCK TABLES `shippers` WRITE;
/*!40000 ALTER TABLE `shippers` DISABLE KEYS */;
INSERT INTO `shippers` VALUES (1,1234,'loye','toemw','Ffctd@gmail.com',1111,1111,'hanoi','new york','9','america','alabama','vietnam','sss','active'),(2,1234,'amy','pascal','abc@123',1111,1111,'hanoi','new york','9','america','alabama','vietnam',NULL,'deactive'),(3,111111,'Alvin','Zhou','ab123@gmail.com',222,222,'hanam','sss','4','sss','sss','sss','sss','deactive');
/*!40000 ALTER TABLE `shippers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_category`
--

DROP TABLE IF EXISTS `sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_category` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `desc` tinytext,
  `product_category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_category_fk_idx` (`product_category_id`),
  CONSTRAINT `sub_category_fk` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_category`
--

LOCK TABLES `sub_category` WRITE;
/*!40000 ALTER TABLE `sub_category` DISABLE KEYS */;
INSERT INTO `sub_category` VALUES (1,'3D Glasses',NULL,1),(2,'Antennas',NULL,1),(3,'Cables & Interconnects',NULL,1),(4,'Cleaning & Repair',NULL,1),(5,'Accessory Bundles',NULL,2),(6,'Bags & Cases',NULL,2),(7,'Batteries & Chargers',NULL,2),(8,'Binocular Accessories',NULL,2),(9,'Adhesive Card Holders',NULL,3),(10,'Automobile Accessories',NULL,3),(11,'Cables & Adapters',NULL,3),(12,'Camera Privacy Covers',NULL,3),(13,'Antennas',NULL,4),(14,'Batteries',NULL,4),(15,'Cases',NULL,4),(16,'Chargers & Cables',NULL,4);
/*!40000 ALTER TABLE `sub_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `desc` longtext,
  `email_address` varchar(50) DEFAULT NULL,
  `business_phone` int DEFAULT NULL,
  `mobile_phone` int DEFAULT NULL,
  `fax_number` varchar(25) DEFAULT NULL,
  `address_line1` varchar(100) DEFAULT NULL,
  `address_line2` varchar(100) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state_province` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `postal_code` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Keychron','keyboard company','abc123@gmail.com',2222,2222,'2222','aaaa','bbbb','eeee','dddd','fff','wwww','sss','12342'),(2,'akko','second keyboard company','abc123@gmail.com',111111,1111111,'1111111','ssss','dddd','ffff','gggg','hhhhh','jjjj','kkkk','llllll'),(3,'filco','second keyboard company','abc123@gmail.com',111111,1111111,'1111111','ssss','dddd','ffff','gggg','hhhhh','jjjj','kkkk','llllll');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `citizen_id` int NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `business_phone` int DEFAULT NULL,
  `mobile_phone` int DEFAULT NULL,
  `image` mediumblob,
  `created_at` timestamp NULL DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_account_fk` (`account_id`),
  CONSTRAINT `user_account_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'long','hoang',302000,'abc@gmail.com',1234567,3456789,NULL,'2022-02-15 04:11:11','2022-02-15 04:11:11'),(2,2,'hoa','mai',2222,'abc@gmail.com',222,222,NULL,'2022-02-15 04:11:11','2022-02-15 04:11:11');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `address_line1` varchar(100) DEFAULT NULL,
  `address_line2` varchar(100) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state_province` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `postal_code` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_address_fk_1` (`user_id`),
  CONSTRAINT `user_address_fk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-19  2:31:08
