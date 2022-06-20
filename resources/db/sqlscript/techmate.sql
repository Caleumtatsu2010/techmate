-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: techmate
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
INSERT INTO `account` VALUES (1,'admin','4b423a6dab4a82696051aeac96eb8c9eb97985b3685ed6475a321e61fb1d71421a6d545c35e54cb5718c2717cd6d8699a3e443492c58c0aefafa8e44624a5df7','123456',_binary 'ÿ\Øÿ\à\0JFIF\0\0H\0H\0\0ÿ\Û\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(ÿ\Û\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((ÿ\Â\0V\Ú\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0úp \0\0\0\0\0\0\0\0¦ù˜yó\ä_\r[\'\ëz\ß:\èôÇ¶Œ\É\ÙtZ…ÙÓ„p\â4:\ç!\á¼Ch±2	€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$)óÏ |ûš\è^ü=\ØğTº\â[*º‰\ÖS‚Ö­FÚ¦ó45¦rÖ–\Û`‘ô\Ù\Ç)z}\Ş0\Ò}ûşyk_CŸ\äµôƒ\æGÕŸ÷µŸE¾±\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0&d~\r\í§6óJ0\à\0W•Tmˆ\0µ,İ”\"‹¡œ÷ò­tY\Ì\ØÍ¶Usz\È\Û\ìÅ‰z0\Îa§#\î|	¼ıe?³Ñ—X\r\à\0\0\0\0\0\0\0\0\0\0\0\0“%¼;\Ö^®]V›\åuq6¥als\"l­\æY Tš3§BY÷\Å\Ï\'H«—>½(e¢[©”\rn\Ã!½™9y´óô=c\Çõ3~û­ó\ïOÕd\'³(\0\0\0\0\0\0\0\0\0˜W‡\íñ¸¶›Mø5]ˆtÀìº«7=©5•¼º\ÚlŠ\0EDÈ½-4lÍ©—#Hf\çö²\ÔfØ\Î\"[TcÉ£ ó3)m\Ù\Î\èd`\çwy´a\èótQ\Ø\Ù\ÇÑ\íı\Í=·v=Bc«0\0\0\0\0\0\0\0\çó´ü9WÓµğ½•½\"\ë\ç¥\äÓ…¼YİŸ¡K\íªD¾Œ–E€\\W\Ê\ì½Q—NVª«\Í,;¦ğ	µ’\è(L]t\ì\r%9´l\Òy¹º\Ü\ë—\í^\ì^\\İ\"9k”ô-\ÏÉ¢\r]>Nˆ_E\èø/eÛ ˜€\0\0\0\0˜‰\áı‡š\ã\Û\Â{=^QŸ@R›\çj¬šW>ºJ(ö¦¦_6y¯?£¿.g£ô­Î²\rW\ÑI£-³v¤\ËQj€\â•Jh-Î–a\Ø-\í\'Vj\èñºxY\Ç\Î\ÅõÎ—\çt7·>œ¾÷\ÜOÑ™Á\îú\\\Ğˆ\0\0V\Ìò¹\æ\ä\ä\×\Øw<\'´\ä\Ñ\éjyôR¶æ­³!ªK\ÇlšM:¼zOPÁ8\Ş\ådd\Óq\ìóªô\İ.Vˆ‹g\æ\Ó2¬»–\ÎV¤•\Z¥®ÆŸ<\Ñw<Æ¾m\Ê,·k,ÖqP\Ú3;¶Œ\ì•\Ú\íøşC\Ø\ä\0\0\07c\Ï\æü\Òsùu\Ë\ìyúùvĞ…FW6XŞ©E\Zz8¹\î;<\Ş:rß™3¾og>\ì\Ü\Îs\"µ\ì\Õ\èyu\á\Û\Ğ/\rxS\ÜÆ«ob\Ó]*4)Èš5!ŸW¤Ä•¹®¥jy6\×:G?E\ì“4Vù\ék\Öğ\à¼%}.£\êÀ{\\`\0\0˜õK+\â\ç®o3£B¨²ŸlU«ĞŠ­ŒDK#u:\Ó9iÛ¾s\æQ\ê\×s\ã\ï\ëK\Îz7NC\Ä\èÉ––´•\í£|\\ıŒ³®\ëR¼£WWš‹^{Ya³J²\àY¢\Ğ\åuuYVQŒµ«x,”1vk\ë\0{< \0¤3\ç·óÜ»Z”G>®R\ì\Ë\ÈÉ©[o6™\Ò\Ù#®™e´\Äe5Ãœq¶&tXá´¡–¶ª\Ê36]ª\ç¬Yw\æ\ËL\Ùö\ç½*¶©\Ò\â’ú\ÑyB†I+V\ÄÑ™—‘@\È\ÃX„:.Ï©\íy\ä\Æ$[Áf\ËË­e\ÆÙLtë†‹?NuKµErõi²\ê·9\Ñz\Şó˜µµ˜‹&mD\Ş&•ˆVj«<ÚœÔ´½94\åÔµys\ï\ÉT‰h\ë2ô%•q.IJ(\è£3-fX$*§$\"ŸU%~×Ÿ—\çğó\é«.ed\İ+°CIš×³\ì´n¼[±5Mo\rvˆ[„\ê•Æ‘ L\Ò\Ğ\"ÔŸd2†\İ,¢ó‚“	Ò¶Œ\Ú\Ò\ØÆ‘]+ŠÍ›mG‡>µU\â«.\Ä\é\Ïq\İsTMa4¥¨\Ğ‰„/=\×EY@>¯òøò>\×¨Fn\"ğ\Ê\Íj=»xš`ô½Ÿ=\èxu{+Lhœ\ì\ngØ¶óô3j\Ó~UN\Ö`\Ô\ç{°i“d¨·¢\ë\Ñ7¬­\"Bb%\ÙqHr›\Õ4#R]¥NYy\â\ÙX\áR¶cÜ©EŠ@Ri^b\ã>\ßñc\Î\ÏjU4Z!È¦ˆ\ëf÷tÑ¯‹G\ß3²cU–¡¬¢\ÃN}]şcª‡G+£\Í]+-ˆ¸\ÛÙ•\íªQ”&TR-I+[ªjr¿1VT¬´©\È*ªb©V+V6ñeVT(¦,šubZµ.ŸÕ¼¼k\Ëø_¶ø\Üß‚:¶)\İ	†Í˜´dúû¹\Ú0z\è…I­¼üCÙš‹»0§Š\ëR\×?¬\î*w\ç-¿Jô	–¥õ![”©[K­n¸q¹Ó²\åeY\ÎR\Ã;v¥ªÚ›k±EÂ“\Ö)#¼²B¶Õ¦oÊ˜q|\Öb_Á\İõ\'y»ifT‡9¹<ú.´+‹İ‚¹}.‹e\æn›f\â\ìnj4Ë¤‹L\è‹Vlµb\Íº®ÊŠ•Â¥Ú‹ª¨­T]\Õ4n¤C¨¨ºqX[JŒ\"(\Ø\ÕX5²%©s>¬³\å\0\0\0\0\ï°a^0\Û\Z\â\Ç\Ö\Ï†\Ú\ì<›j\ëD1R·E¨µ«,¼LQ$Cw*$AL\Ü-ŠÊ’–Rj±|\ÊØ´\Ò\êiD\Ój\æ•ST\Ø&Œ«)XS-5`IvK\Ê*\ë\\Ÿ¨\íy€\0\0\0\0LÁ\åú\ß)Ç­+—\æ™W\Ó\ç\å\Ôúœyqƒ\Æ\Ï+\è\îz–Í£r\0½\×`´Dk<[]\\)\İ\Ó?S¯Ê¾ƒ…3o‡õqX´ùóZô\Ùk^\r¨¹F–\Õ&´\ÙX–©rQ5œA³k`®„’\ßzHC©úx\ç˜\0\0\0\0\0>s\Ñs2®IÁ¯\Ì=¯Œö½±\Øù¯\Ó~A\×~]õ‘j½/7\è/§«¯\î~;\'\Öşu\ÓĞ\ÓgG5\Û\å\ßMùm/K\Ş\ã£C¥5õV°vü¯­U\å»ªö?½ÄŠ«;şm³wgÌ£R\Õgõ\\¦e]¸›ùıK½À-kIiE\ëi]v•ô°=\ï,\0\0\0\0\0\0Ë¯?;Y/o™ûDv;\'_\ÈşÁÀ“ƒö®\è\Ï\Í~§\Æ\Í÷ş5öN¼>k\ê^z\×7\Óğı\r¾c\ÓÓ–şI\è}\'/¾|g¦\ík/\ç[ı™¯%\Æ\é÷:3\Å\Çõ\É\ÃUyŸi›:_•ö‰k\Íõ·µv\İ\Æ\Ã/y\å\Ú%¢ñ’\éK±$²ğ)\0_F\Şól\0D€\0\0\0G%ñ\ä86.™H€hw(:­C6…„º@\Zª¡U\Å\è‡TZ¡…\Í\0+P	¸\Ô\Zl\0\äoP Oÿ\Ä\0/\0\0\0\0\0!1 04A\"3@5#P$%2ÿ\Ú\0\0üù&±\Ã&³$¥ò\ÈYdCU’&-t$&šÿ\0\Úù<\×.C,Rf‡<ñK\ç\ÇOW…]„~CıF\'õŸ\ÔıA_õø\Ï\×@Z¼Lll\å\×şšN£9¹\æl³¶(\n4\'[Ø\ÖZ9G\"\ÎB˜²J\"\ÕfF? G]‰Ïbi\íhy )\Åÿ\0»š–>…ok9m\Û,±º,³•\ÎE–EœšoU–L’$È¹\'‡[Ÿ	¦ò¸²J2Rÿ\0kP\×\ÅÁFE\Ûú§E—µˆok,”\è–^\ãS9r¡\\\È\â>2X‰BQ9\â\Ö\rF};\Ñù\å„g¯›,q-N¦Ye{?Wö½“,½«f\Ë&K\ÜE]ã‘\èr9\nD»%©@F\\yL:ÿ\0\Ô\Ô\ê#†93O,Š}~\ZFH\ïl‘\"è³‘Š6\"\ÉHö/vQ5Ô‰3O—¨g4ºKı-^¡a„\å,’¢†L\ä\'\ÛŞ¶Ki\èıq\Ù!\ÆÌ°¢U¸RD¤v)œ\Î]¦Jª}9³J!3SK©L]ÿ\0¡–_2M\æÈºÛ±“õ\'²õcÛº–\Ö13ùB+©\Äp\îˆŠ\Ë\'‘¶²=™S$„\éã¤c\Èhµ?\èyL¿\ÛJù—\ÑtQGuCK\èĞ‡³ö/_Ä“\"»Š\é!£$GÓ¶&DDÕ“ˆ\Ìe‘f,=¡N“Y¬Ã£†+ƒQ§\Î\\J\ÚFOS\ÙF\ÜcOj“g\Z[½¨h¡H‹%·\"2³4\âG\ã\Å\Â*¢%\ŞdŒ„„Èš|¯´\ÙşEøü¦Ÿ}6H\ä\Ñ\çñ\Ú\Øj`=¤d\Z#\ĞĞ‘\Ù\èËš8Ö£\É\É\ËKšZŒT\Ê?…µ\í- \Ú\ĞĞ‰w`H\é.Ÿo7KÇŠ\Êÿ\0»3\"Eì˜¤`\Ìi²,˜ÿ\0—ı¾\\8\å\rFŸ.\'ò+U2L\É\éÅ‘Vq\ë\Ñ¾·\Èc\Â^mfM†1tcUôkvGw·!T\×÷a%:\'—¬Œš¶]÷EŸ\ã\É	)/\Ã\ä\'d\ÔÆŒIdÇ¨ñyq\ç\Ó,‹¶‘ü\ÒÚº£>UŠ\Z½~\\\æ“\Æ\Ï)ƒOq”\Úm^öZúz=\ít7d_|¶~£q\\¦\ä°J³\ÔI\Ê\È\ì„D‰…+\Ñ\å\â¯ğM\Ô5Y\äõÕ¶`È¤\Õd6P¬¡#¤_p\ÓaLp¥tR(¢P±Â‡º:\ÚöD N%‰³“#d\Z\åª\É\ÖF\ìDH­‘tA˜³q_ªƒ[>\Zl”4ªx\åiŒö+d†d±\ÜH\æ\ëš>d|¨ù\")¢\í?lT6uº±“Nc‹#D2SK\'.\ÄE\ësƒ\Ê?ş.e:->™\çƒù!ı±&ö²;|„²\Ñ=JJZ´Œº§7ó\Í4­\ç§óXõ\'\Í)²d9H\ìş\ë(¢\æ„{$‰\Äşv’²qq=œJ\"/Q(¢¶Eş,\ê\ZŒ?!Á)‹,´s\'•Ed\Ër\È\äÔœ\ï²¥–I\ívSdq¹=&€†’%Š\'Â‡ˆxŠ¡l\ÑDbXı²kµ²$‰cFˆı\Ş\Ëücÿ\0\Ó\ì~Ü¨ùG\ÉC\Ès9²R±{Œ,‘\Ñ&~‡¹hO\é\Ó1ø\ì¦/;Á¥Çu·Dq	\ã8œ\nCBõgG³,J\Ú(kv„¶[GòyŸòNtr/f\ËÙ•¶8÷G\ÓC­m	\íLK\èÉ¡\ÅhcÚ¬ô\Én†4QE}\Ïğ·G•Î²j\\G1É‹e\èH£1ˆ\ág\Ä\âQBÛˆ–Ì\Ñ$4qCHCDŠl¥²Ú\'\íE^È¯¶I\Ç|†¾Y¶c\Ùl¶H«#\ën;Ğ—Ù’C‰L®\ä;c[J…\Ö\èc[\Ñ\ÄQ8\"¾ÚD4ğ\Öj\çª?†\Æ\Æ!vq8‘\\\ãDR#V¾´-’ûIŸ\ÃC\Ùû\â?tP\âz.\Î\×\Ñ\íEVõô\ÕjzŒ\ÓÏ—ùœ\èr³–\ØÕœP>21¥$$DBü\ëd–Í\ÆP\Ğ\îı’]öwµº÷»ú\êµ\Ó\ã\Ôj²j&\åÔ²\Ş\èÊˆHT\ÙG¶\Ö\"\Ë,½\×\Ñ\ì\Ö\Í»‹(q[ö{\Z{Xû\"Š=D¤)o’k5z¿\ÔfyQ,…œ”(²¿ŠL:\"…µ–\Î\Èn¶]ºbú^\ïv=¥\Óq²H«N1\"\Ğ\Ë{E=™-¨¢sŒ#æ¼£Ô¿[Y{Y”c\Í\Ü$ŒI´¢+f\è¹2S¢9[p\äpÜ‘\ÊDg!I‰\î¿úÉ“}+Ù#§´¶Š\è²ú)òMTå¨±»ÚŠúA\Z{!\éR\\\ìœg\"\â<\Ø\Ñ\ËÒ¸4ÌŒJ”\'É¦r!Øº\Ú\ÎE\ß\Òöo{ıX\Ùi\r»ª.‹*\Å\Òåµ\ïGüI(êŸ²\Ç!I‰ŒD=\é£ı°gñ\Ä\Ëı„%\É/Š.\\\Z\à\Î-§4\Ü\äb¥f!l‡Ä¤…³Ú¾•c\èrM\Ù#²V‹··DQCöÛ­—{ù=2\Ô`\ÕC\ãÍ¿0gFaÂŒm%G\É\Ú\Ç\Éñ£š`\ÉqJ\è\Í6–IHyˆ¹I\ãR!FÚ‡¢(Kğ2öœG²\Ñ#½¥e\ÚB\èlb\Ém{y¯ò4ó\Æ8\Ñ\Ñ\èL„mÁQÙˆ\ß\Û!>*\à\Ôö–C.br²Œi\Ş4\È&DD~¬½ŸÒ’\Új\ÔzG!œvcÙ²÷[û5^?sS\ãrc3`W8E¨ÇÅ’\Æ\í¹r‰)ò£´K\"FL¶İ³\'7ñP´öF’dQõ÷­\Ø\Ø\ïkc\ì“hæ†¬¢Š\Úûl²\Æ\ÅØº+\ï«ñ\Øsš\í£L,‚’-…:_(³Ÿ4YòDù,\İdnO;qÓ‹\nB!+Ú¿ô5³h~“$Î¶{2öeŒ¢;¯»JKS\â4ùO‡ô\Ö~’ˆ\élZT~ 8£…¨iûøP¡B\ëd…/\Â\Æ6X\ä7{4zr\Ş\ÎCv?¯[-\Õ#¯Ã«\Ğ\Æd°\Ë£ˆ\âK¿ˆø\Ñ]£»D·_…Œ{²\Æ\ì\ìrc{6÷—\Õ\r	£8\ÉwCD¶\à\îŠ\"„·_\í-Ÿ©1–M²\Ù\È}ŒH­˜ö[/[Gòk±Ô¶—¢Š\Z.8\Ö,¸ò5¿ñö”\ÔW\ë0\\g\ÉO\"Œpkpg›f«]‡O“xg‹\ì–\Ö7Õ—´K\Ùì¶¤F(¤4©?É–\à\×­µ¥ùuc\Ôj²j¤¼#\Îõ+×”Ã©\Ô\ç\Ğ\éa¥\ÄócY\Ö^şGZ´x2eÏ«\Ëı\'WX\á«\Ò\æ\Ô\âmñù°\êsrx°h±Bz}+Á›\ÉH“9¢\Ë,Mn\Ø\ÑB]´WUùµ±¬¤—^g¯!\â`f\Ö\ê­­\Ô,ø\ã›6£–\Ô\ÆYušÙ+\Êdùuz˜\é±gòš¬ò†»[„\Ò\ÊsÀ\Ï?‘\Ë[\à´\ê\Z\\\Ùğ\á%­ÒšŒ\é\è|n§,õ¾SU<8ñi³jV<¹t™õy/IQ•K,3D¯/\Å<Y¢´9\å\Ë_)G*–l\éü˜g¤\Ëób\İD£\Õg£ùUùuñ¼Hg›ÿ\0±ğÿ\0°f£÷\è‡\ïuŸ´ñ\Ø\ÖMl œqÿ\0n«şC7\Ëş=†?„g´8š\×ø\\ªz//¢É«ÉªÁ-6\\ÿ\0¦ñ¾\Ö\êc§Š\Ô\ê³\Z—‘\å\Éÿ\0_ WªÔ¯ü\Z/\Ü\çÿ\0÷>Kü\Ş?üPñŸ\ãESb\Ù/¢üº¯ğóöş½šøüzõå´«\'\ËW¬ı¿‰ÿ\0±\î¼\æ™\ä\Ã\ã5\ïFeó‘\ã£\Ô-N\Ì\èÿ\0Q‹OŸ.“\"óJµ™Ş«6µ\â<g\ï|\Ìe\ÏG¬†,\ZœŸ.Yw\ã¼\îu?\à\Ñ~\ë?øt¹ò_\æ\Ğ~\ß\Ê]xÈ·Š\Ù#‰KtQ_“Xÿ\0ğ-µ~7§6\n\Ó\á5ş?­\áğ¸¡%\â0ü\Ù!\Î8<^9hş“¦\åF§\ÅióK†\Ó\Å\ã‚\Ç£Q£Ãœş“¦0\è°\â2AJôxq\Ï.8\Êÿ\0M?\é°\åKV8`\Ç8ZX!	UŸ4\ç†5<Jf<kü-\Ò(ôDöz,\ì²÷¿µš\çqH¢„Š(¢Š(¢¶¢Š(hh\âpe	Ã©\èq\ÎKññ±b²XZ6,L\à8wñ28\Æ|l\àÏŒ\àp3…\Ïÿ\Ä\0\"\0\0\0\0\0\0\0\0\0\0 0!1@QAÿ\Ú\0?\í*$B„!O\äÀ„\Ü!5x!ş3\ã>3\ãİ†\"ş<=xc»\Ô \Ñ\Şxúp\ÇĞ¹hŒ—i¶á—\r¶©–3¬W\Ñú\ß9eş\ãş\én‰\Â\ÖJ˜¾Ä‰¶Ï¡2‰\ítö‰©\Â<LWe<˜›™E\Ä\Z%\Ş[hñ<:¢f,OwMu8\Ã®)J]\â\Ä\Ê]!¿JB\Ú\Û~”\Å\ì_Z¢|¿J)J]\Î\'(Ç—\í¥\ætŠ]¿T8›¶OD\Ò\Ô&±ê—¹«\é„!	\éL\\2ô´„¿ƒS\Ìò/4¥¢|T_f#ô=Qj¶dšc©•¶b\ÚsØ¶ø‚¤§ˆ¿ñ4X3%Y–4XFxı\Ñ>oH_¯J\ßıöÿ\Ä\0&\0\0\0\0\0\0\0\0 !01\"2@Aaÿ\Ú\0?ïœ¸’\ÉlSd3\Ñ\ÔGQHHœ\Ñh¿\é\çtYz¶[-–Yl\æÎ£B\Î\Ñù\'\ä#ò\åO\Ú\İò_\ÑZ¢·c‰]–\È\äh†dıMÑ—9wªôFTXöÖ¨’q0\çÿ\0§\äd¢\Ä%\Ù}¶)XŠ$E\ÉTa\Ëş?Ft\Óó¥«\Ü0¹’\\]w£‘È“\"ü\êH^Yo\ÇvI´\ÎQÊªD•:\Õ\éytCa\æfO“şD²ıQ\Ğ\ÆF|YjK±’…™<vÄ›”‡qew-QÄŒ4Ş™µÙ‘\ÒS#²µÄŒÁbp‰(Ä›H\äYe–X´™eŒ}Ù¾Š\ÕP\åGXëŸK3eŞ¨g-§»\ïnŒ³±\"´\ÙÈ“\×‰ÄŒEÄš\ìE\ê\Ë\ì½7D\ç{c‘{HH¡DQ\Ó$5¥\ë\È\ì\âq(Ğ™be–2KL^¦Q\Ä\àJ(«ij\Ë,²\Ëõ%·\Ù&H­\Ñø\'ø,_\Ğz\æ9z\â(‘Š.‰\ä$È‹o\İCˆ\à1²\Ñ\à\ä‡1ÉI	iÿ\0Fx\É*eöĞ–\ØôõZ¯oÈ5g\â\Ó&..‡‡õ³¦\Êkp\'Cø\é}²\'öeÀ“¤O86pg,j»/Ñ•Z©Ñ‘\Ô~\ÌhğĞ¸\Í„b¬Í’2ú>/ò™Ô‡‰}“\ìU‘ŠHM5b©¡\Ôbd©Bı“úò\'‘8Q‚|~\ÎqDr*1dJ\È\äUL\ÏÂ¿SW	\\rò\Çòcô‡ò\"SPòu\ÕÎ”Ly\ÒD³§\ZeÂ½’ú%¥\Û!\í?Šöÿ\Ä\07\0	\0\0\0\0\0\0!10@\"AQa 2Pq#3BRbr‚ÁCs‘’±¡ÿ\Ú\0\0?\×$®&¯1^b¯0¤\ê1\ê\Â\åâ‘«\nó/2\æ¨\nò¯*ò¯*«U••×˜/0ôrSœv—Ty^eó\è¨à¯Â¡Şº}7TS\ÎUU^WË†!\nù\Â\Êş*\îeM\Í<U\Ãå¼‘\Ñ\Ôr¡\Ûñ/Ãº®li@;k\İqz<Ïº\Ì|UĞ¦ÂºrvÄ¸òE\Æ\Útñ\×NÊ£VG`!j\ï\å\ÏW4w†§Ä‚\êF\ë3®uë±–¬\Õu>‘nªl4\äz ?¨.5j³8\å\äÛ©Ss2ÿ\0:ò\nnTÔ¦¬–G„\"C^D,¯¤_û©–\×2Pt^\')\rœÀÔ½Æd\Ô\Ú&‹b\n\Ñf[ÿ\0\È/ì© \\A§E”p³ S‹\ÂŞ‹,6€6´\Â\Ên:7R&š$§8š\ÍH\ê\Ù±ƒ6\âøp•]¢ò‰r¢Ö©WUrº¿£‘\Õ8eù™–HWR79««\áK\á%|&¨®¹ªú+z©©´\É{ø\Ê\áÆ¾))»\Ñ\á\ìi‡ï°¦áš–ôù•\Âh=h—Ye„d\ßAª¦½ôs<«\ågM:*\ïl­°™º\Îÿ\0ñ\év\×.yY\İnAWÒ¨«…õœd%Ç‡Ò®şŠ¸\ßW3Ì‚0~~_3\ã®Wğ\Ûul*¨«¬ ps\Óì¦®¸J\ã*XM_\nµU0–\ÓlV\Ø\ëpª…P¨®®®ª0¾\Î\Û#\Ô#?\ÕT‚š”•*\êŠø_\na4$«á¦…<T\Ø\æb‘\n\ÚÂ‹\ã-ÌŠ¾Ç¡Gƒ3U(WVVğP©$T§…ü#e\r6uÈ™fgP«á¢®6T\n~\n\í8J®\ŞDML7+‘\"­Æ§\Zú¾fP©}bb\êDW\Ğ\ë¹\Î4&÷eÔ˜ö»\ÛNnpºú\è\ì¸H>È—\0Ya¾n\Ã+\İ^\Ë431´¦©\nEE\Ë9\å\ä¯V$@TÁŠQø\ßRûX68nøA·\ÍÌ¬…\í\Ï\ÓG1«”*—<Jyù@4=…:Añd\Z\Ş÷D1Á®\êc¸Dq\ê³@\Ã÷|5;\Ùò\Å\ê¶hŠü¡ò”û\áõ¯-´\Ôo¦–˜a­$MM\ï\Î%eœº ¬›\n9\Ì\Ó\Í¿ô\î¸^X:5Uñ?rc¢‰<ŠŒ2òh_\í½#ZOUõ\ÌQ\"BwÙ¡Lˆ\â=\Ó[\Ì\î}ywùR®\ÜŞ‹…\Æf‹3\æ„0Vg%‘\Å	HÎŠ³L\ßq>˜¿ôP}°‰ı\ß\å?¹ü¨ß¨Mu‰Yd2ôM\ìÿ\0\åAo*”\è¤MÓ’“€#¾.\'š`\æ\Ú&:h\0J«#\å>\ÈşR˜u\\l¾[iì‰\ç_µ5DöMOöL_¢\é‰\Şû‡bÿ\0\ÑB\Â,şü\Öbã›¤“OW\ÍFü…@÷A~ÿ\0\å¬,¿² Œ\Ì<—É†s~$Øƒ\Ìó³ÿ\0Q\Ëú‚¸¡û¬ùe\ÙEr”\Ä\Çr’\È\àg\Ù9òºıˆ(É‰şÉˆ{&¦§{\î&#\à{&\Ãl\Èp›¦\×ı\à¦÷9ı–p\çŠ\ÎI\Í6\"I±m\ï†i>sğ\Í\"\ÃøWg{¬¬h˜\Êõ_oı—ú”ZlPs\";©8L\"ß„H\Ó]“’\É.Šm`lT\ÚÀª¦&¸\Ú\n“D‚›5\Â\0\Ü	mo…\Õ\Ñs…W%uuup®®®¯\Õ\Õ\Õ\Õ\Õğ¾WW_ÿ\Ä\0)\0\0\0\0\0\0!1AQaq 0‘¡±@ÁğP\Ñ\áÿ\Ú\0\0?!û\ï%\Å\Â\î‚{ı\ÆV<{])¯ıTlVt\ßC‘I¿û?ø¢	\È\àŞ„~6\ç\n[‹\Î<.Ê²#\Ø\Z4¿°¶¿`™§ñ½\\¨Á¶øQt\Ñ\ä !ˆj\å›yFg\ã„ñ,¿xD.‡t\å\æ \â\ç\èr\Ç\è6Mü¸	¤F!«ml˜\áæ·²šÇ±[Øƒö\r¯#d±:`Š†×’&}A\ä@T|2›¾\ÈzgÌŸ#sM{¤\ï\ä\Ï\Ü_\ß÷ûWòLşÚ‰ß–\Õ\'•şR«\Ò^œ?\ÔkC¸;\äüñ/\"ü™—ƒOf\Ü\rÒq\'\Ì0\rw$\"Œ\èÁ±¦ŒX`½\ÊNùß”• §ÿ\0µ‡}L”C:*\änı&\Ó:Qê!µ˜¸\âz\ÌO!YFsn\0\Ê|Œgf\n#\Ì\"{\É\ßñ^+\ÏEü!\"‹V_†L^p2\ë\"XÙ”\Ì\Ş83½#Á8hkV,T÷W¡ŠR(ğ\à4xrIrJdEğñ\'_FÂ¶)&dÄ¦°RL¹2\èEC¡§1\Ø\Ú+…6\Ø\Ëq\"m\r\Ó\á´3¤T­\n¿\ÈV¥÷¡ÁC \áh5Ae‡I‡ÀN˜ƒ\Z~`F\é¸\í`34Pd…‚!T&\äig„\İD4XµĞ½3SaEbôrÀT!ü\×º\ĞD\Ô)UC\È\'8fCli–\Ç\'F¹¬\Ş~ıYå¼‡\Ğ\ØŞƒšÁ–ó¡´\'\\G‰\Üh\\Spf  •Zl¦\Øñ‡`øNW‰;²¸øL\ÇÀƒ$¨­>‡4ƒº²#»\Ç\î\Âñ\évÌ”\É8Ÿ‚¦Vw\Ã!\è\\˜ŒpdI]6N\r0`P\ßqÀU•ğY.E(%¬dØƒ†\"dB&†°y)¨ó£fHŠÀI±`»Á\Ôvšt]F\í<eı\Ä6”\âr¾ú\ĞÅ•ÿ\0B¼ueöÌ¯\"\n€Ø©((\í‰I\"¿He\×sõhq¶?a1³)4üğ·hqL°ö+¡š1öÖ‰\é\r‘	ß\ÌKLƒ \ã;†4D6n1a§•‡ö\Ú\Ïm™™M\ro%ÿ\0x¼gúNB\Ü8¡‘†‰AO)=¯„<*kô%ø/HnxE†G 2`œ\ÓÁ“ÙŠ`\ËC\ÃTT¶dòyšØ§2r=¶Se· ²bœ\r\îÜ½m\Ã\'\Ùx“\ZÀ-#Ü™bƒ©§Ÿ˜ƒe‰\rùpôAadºmÁ¥(»şA“\İ\ä\Ïö0\ÄB\'c{±D\Ä\Ë\È\ÓZbx\È\Ó\ÙE‘¯qAäµ‘-†™ûBY\rZÁuLñ!X}˜Ì‡€\È]nEğA³4)v7\Ù9VÒ£UD\Ê,ª\ßA\ÈJX\à\è!¨Z&4€\'‘»kx•%,\rI\r\á!*ha\älÁœ:f\Ğü\Ä\\gs‘5Óƒ˜jø\åÀ”T2\ÚyFE5Ÿ°\å¡ÌŠ\Ò\ça6\'$„öc±\Í ‡b\ZTY¡u\Zé„\è\í\ÚYûHñFg \ÓzfLM!\rö>®ø`S¨ğ*™\ÖÆºdcİ¢t|M¾3	Q(!1é¯³-v„Î­Íˆ›’úcğ;Š\Æ<\\cDA‹QœLYÒƒa(²Q“C™†ªkGY‡;3<£Te\n”4JXØ¨\ĞA60„Î’\ÈÊŠúš^…ƒ#\Ğ\ÈÀ¹1û<k¶‹›&Ÿ‚\Ì?¦0vÚ˜°k³$Gl÷	&\Ê\×\Ü\n‘°R›C\Ü	¥•‘\Åc\"\ÂFc\ÜtB\ĞöN#\Ô5	‚£Nö)dhd5Œ€lS)“ ‰tt‹œ87²\"Šû¾‘\Â6\Õ+D’ü±ù‡\à\è¸C…Ü…µ¥zŒf24¤K¤ÁĞ«…\İL\Ê\à\Ù\ZQØ›$±›`Jòg¬/q§JeOfˆ¢XÈ‘‹B\'\Ú\í¼CI,0\æÌ¸c\àÚD²±¡\Ô\ÑJ]	V¹\îÌ¾\ÅC¸Bp0½•\ß\'“%‘-¶ĞÈ—±Fzp£\ÔÃ„-/#DZ‘4ph5|:`oc\Şş\r\"¼\n\Û/±~GğÕš‰`ò0ˆl-1/±(p.À¢“\È\Ò\Î¸iSLÑ•\î8\ìB^„Æ»\'òV†\è¿Y¥\ÄØ·´öIsùe>\ÌD¨™C\ì•\î[\àóÀ“±E\Ê	(“H‚\È\Åô4úcBU\Âñ\É\à\Ï,ˆ™d›b>¶TK#,\ß\\‹\Ñ1¢dXl`Û“\Øb\Ëôº£zCm\Ñû\ZI\ÃQp…ğ4\ÑŒ$\n\Z.%¡;\Äd\àqc]\ns£6Ä°3X{6,\Èt+Xd\ÌhKHMôvH^y¢\n„¤À\ÕúNÙº!\á®u\à=˜\Ô90A5“Yt/ ‘‹D-ˆ®GBÈ°¸™\Ï\Ñ\\<%º‡„ŒlT1SB\' ×Š±h\ÄÙ‹\ÃB}Pú1øe‘\r%¶*È„«d‹\ê\ëi¤2\ÑW\àÁšC74K“ªD MÈ I%±£B­˜¬	z#\Éğ\'C{¹ƒ\ÆK¢\Ùa’\ß„SŒJ\à×¡\ågCTšv/\Ò\ì^ùx‹0Y\Zx\àö•\äi@Â›*ó\Â![3šƒY\á™\ì\Æ D.SCÚL!ğb°\Ç\Æxy‰İ‘»¯À\èùVazŠüb(ñ%ğ_ˆY\Ñğv„\èÁ¸Z\"PY\åÁyÙ¶\èÓ¡Ñ‘\Ø]šŒ8Èš#ÀÆŠö\Ù6«ù\Å&7OFU(™h\î\n\"YDI\ìTh:ò\èÕ¡\Û¦¨Ñ¨·\äB$È¡\ßgt+\í3ŠŸbi\á1Sb\ï#~ø¥Côm\Ë\ÔôT™·\Æ\Æ\rÁ²”.,\é\ŞøM¸&\ì`ò(3\äN–\Ğ%N%ƒ\Ä2C\âÊ˜\ä\ÓLv—#¼8\"4Á\ËOa\Ùù$\â0ˆ1,1„\äkm¨lº\à\'L;7\Ñ\è…ö^+F\ÅÑ™÷I†\ÚPdy\á%=‰\Å\È\Ì\Ğğ\Ö\rgdXYI—hMözXG`¨\âÜŠ\Úø6\ré³­–3§Ä¡W\Ù^QŸÀZI*\ZaX½…¦\ÊC±™w\Å4\Épô!\á†™\âc-È¤\Ê\Êxš\Æ¨\Ìö[\Ù\Øg¢ôĞ“\Ã\ä<ò4ƒoÀšHd›\ã\Z\\\èz4“eõ \ë#^‰¯!˜ ¤’L*\ê‘\\Jö„VŠ7UXv„€\âØŠ«Q¸\Ï\Ü%xğì•4:\ÎÎ†ğS³\ÓÈ¢¾OwƒÁÉ\ã]²gÀ¾%‘\\\ÄZpµ{\àñ¸c±¯<z°È¦|‡AÙˆ08F,²\ï\"Õ„o\â=Ê²7oƒ-ì›¡¯Ğ«lOtBŠÁ\ÈüŒ‚\ëŠe\ä\Ğ\ÎF\îøhh\Ç{ec\"xuˆ\ÈdŸX=\"›Ğ»¡M2Wc^<F¹©\\´’=šH\ÙşQ\nğNôJø8J³iW\Ø:\n\Ô1·¡[]e÷·z)P¢%\Ù\Z¬RY\Z\á\0œZ4y\Æ\Â\ÊC.¸ªx\Ğhz£O¾P×´RY\á„˜\âH^CS bC/©¤ö!³Ø‹ †7Ádv\áF\\\ÌVÃ£öy5)*,\ìÁ¨\Ã3pS:*\Ï\Â7\Ïc°¥„v8ŒO·&ø(¨v]\Ë4\è\Ô~ˆDû\ã\Ê\Ò\Zır	Lvş ~¸\â´\Ê0aº!2	ö\Çc\Õ*™\ĞD›X–N\Äls\âE„¸¦ôg\èyˆÄ©‹;cÿ\0°È“c~ ü\Ä0¬b\n‡L‚\ŞHš\Ù\Øeû\ZQ¨\Ï!®W\n™F‰€\íp¶\áô’ŒSC®0-–Æ„APĞ”‚P­«#,ôbò#¦Wz\àg†2ƒkÁp=\ìù}¥»Eh‘Œ\Äy~	“ 6¶NbDZã¡™7\Æ5\ÂÍ‹$%£.Fú‚©\ĞM‚Š2/’¡‚hQ½O·3³bC\ÜØôE\ìdX\æO+Bµ-5_Q±öğš\Z\Æ†§\ËQ	\n¶ú\ZUğAi\"´wi,Õ†T…K\ÂÀ\çb±&|\r\Í\ì\Ã\Èü\è\Ù0\ÌMì¦™\ÅLŠ‚/\ÏÜ¶P\î]Ãœş\á\Äñ\Ú%ûMˆ?É¿Ø•(®\Äú~\Ì\í·\æddiJ/­úT:K\Êgñ\át„\ÅL½4°´°ğÅ»Yş\Æ\ÙJ\á&V\nqY²¸6\ÈÉ½S,«ö?”A¸²\Ñ´>¸ƒ³&vŒ\äiy	„G÷1\å\Û2‹\ãú-\Â\íı‰4Õ¥:Ï \Ïh\İü£gB?´§s¢Ï¡•,S%ÿ\0‹A\Ë÷\í3Q\ëÇª\í8¼.?‘yl l}rHTe‘\ç\Ğù2T‹S<\Ñdy4\ÊmOĞ¡\0D*»}Œu­:\Æ	mA\Ù8ˆÈ›G\Ídn\áö8¬\Ú\Óc\Õ\ÎJ^Š™,Á¼\ïÿ\0$£)–`»ÚŠp,ûhÀU÷*S±ü_\è9ıŸ88ıpÿ\0‹\à\Éò´£Ş¦‚H¼\Ô1uCV“\ÓIEÁ(aS_32º¥F\Ìk&Ehÿ\0¯\ìyùÿ\0¡_gÁ~ytd\ì;mñaj\çajD\Û\æ8\Í>\"¥-¶?\Ü<øFCñ1€±dtˆ·\Êc\î\Îˆjúø_÷\Å\Ó;: `ÿ\0˜‘­?\Èÿ\0›\ãL`üG„4|\Õi´\Åş\Ø\î5F¼1±©Ì¯\ÓÁ­¿¼1šõ,9\r$“#÷­.\ß\Ñ6M\â¦>\ìû\ÆK¡±\èc\Ë1·Ÿô\'\í˜\ÓÈ“\â‰?0‰ğ1#~)5\à£\Ëpk\\-ûÜ½¢Mmh’ˆ†EØ‡’\ĞtU\á…SzU”Œ\ÉNª”‹¦7\ßı‚f§^ÂE\'\Çh\"$úCFÃ›ğaz”Oc­D\Øô½¡\Ù\Ó\'­g Q:\Z:;\Ô¢„Ä¬j‘SO¡!J†‰¶UOÀ„ñG“]¯k†D}ú\Ñó[)ƒMpx)HğR”¥#Àô1ò7•\\R2ñùq‘üFşGÁşJ}7òSzA\ï)š\Æ\"I\Â\ÂÀ\ÛÀM\à_ÿ\0\æô\Zƒ\Ãôxƒ\æ3²=øt!Ó‰¦Ğœ|øV˜\à¿ÿ\Ú\0\0\0\0\0\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0\İ7#Py/ğ\Óÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0\íØ\á¨À˜HG°D~ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ÿ\0ùy\Z«\Ãp|I³\âZJ\ÇNÿ\0ÿ\0ÿ\0ÿ\0ÿ\0\çû·‹ôÿ\0úN¬¼³\×C”ZP\'ÿ\0ÿ\0ÿ\0ÿ\0¥-LÌŸ0\ÚùÉ¢“H¨w\Îş\×ÿ\0ÿ\0ÿ\0ú¯\å\\c_OvúõªÊ²vi£8ùÿ\0ÿ\0\írW€\î\í‰\ïIdn”k\á®IûJ_ÿ\0ı]	ú\Õ*Àº\Ú}ıi$+1G?ƒ\ç\Ékÿ\0ÿ\0Ú•h]\å\ÉU|B€Š,q¹Z‚ÿ\0\"Aoÿ\0ş6p_‰\ì0’#\Ù\n\ç\0X?\'\Âlÿ\0ü\ÂK½\Æ¯†_\Ã$\à;®»\ì+¬‹\Ï\ë\0.€~sP¸_.÷•f{û\Ğ\ä\ÖÅ¬i¾=\énc\0\ãÇ¡\ãGgX}É†ğ\íä¯¼¯bXğU_÷\äo„\Ğñs\çt\Ùl>\Ëlµ¿\ÌI5pVPJ¿¥AoQqa¢\Ş?aœ\Ë%?(€}¶ƒ\Õ\íS3Íµÿ\0Á\ì`\Å\îE_\îw‰O\']«¨‘g\Ûa\r\Ïÿ\0û\ÙğÉ³\Ğ~C”=\"»`\n8|ûRöÿ\0ÿ\0ÿ\0·zTb^$e9t(ÁH×¶gV\Ïÿ\0ÿ\0ÿ\0\Êğ\à\íZ—\î“\Êe\Ó+ò…vªÿ\0ÿ\0ÿ\0ÿ\0yšX)\Û:•Fğ\æ‹p²s5\'\ß\Ã0ıø8^wÀbØ¢y\Ç p\0\ÏCÿ\Ä\0\0\0\0\0\0\0\0\0! 1A0Qa@ÿ\Ú\0?óOI·¹{.İ»v\íÚ±ÿ\0Œ÷v\âa±b\ÂE¡-\Î\à\Ñ3ô˜÷\0’Nx\Ë9&\Ş\á“a‹ùzüC\\/£z„à¼i\Ãr\İ=Şœafs¶®Ÿ¶?‡Áe\Ø2\Öqe)¶~z6®^\È\'i/Nr¼<Ó·um–A’\á²3g|ˆÄ’I\Ôm\é\Æ)<=¬:#2\ë-¥\Ó\Õ\ÓfS\Â6HY\0%²\'\Û<¶½\ØY!§„®DÓ¸ 69\ÎCIP¬8M³\Ã\Ú!‘/\ZH’\Ï\Ò	N%\ßqn\Ø\Æy\Ë\í¶÷½\Ù<o÷ff\Ã ğ¤›t8m\ã,\à\ÔYÜ¡\á›im\ì¶[m–\ØÌŒ8ö\Ûx[by!7•»À\Û)B\Ëm–D;F¹&ğõ=\ÙÀµ¶\Ù;/\ï;<‚\È<\ØXˆş¹ew\â\È.–£\ã—ÀYoˆlA\à0\Ö\í\ãc\ÜÀ\Ä¥†\Ã\Û\'3À,½,\ÈYÉ™w\Ä\ê1\ã,‚	Å¹Á`\à‚ ƒc´k‡~\'\\\ïö\âc\Äd\Şücƒ c®v\ßÀrß©g-f9q\ÄvM—rŒ~\İoô€ú\á ü^0\Ò\Ìfû;ò\ìeV.·¢\í\Ôğe\ÆPd\Û\ëF\Ìõ¼7ğ|±XYöï©”ú‡³ ck\ä\Ïp±„²J)*šw]Ä¶\Úü7\Ø\áQ{C\ä9\Şÿ\Ä\0\0\0\0\0\0\0\0\0\0!1 AQa0@ÿ\Ú\0?ùˆ\Ùz!÷\Zc{ú\ß\Öş—ô¿¬7İ‹\â!=­\Ê\ß\Úhı!Ú€=û½\r\Ùö\è“\Ü#\çú\0\Ö2Õ¨€ \Æ!\ì\ÄLHˆ„\è\ß?\Äû¶\Î¤\Èe\Ù#«a\Ø:Ixe—\áÁ£©M!\Äò¿n÷D²ş[3x\ÖÔ¤\ë»\á‚7¨N\í-ˆù=õ1á½·©‹ÁZO¢\Ş^6\Äbm”¡<–ô½¯—Z¿T‰D7œ¶=H\İbv\ë\á>\Ê^ø\Ú\ÒoÁam\Ö?[v-¶‰‹\ÂÃ«ps¶²\à›lı·7¿x‡Ã°;¶õj\Æv÷8¡^t\ë\Ü\Â=„ƒ`\ÉoR\ê,ø\nö‚C·kK‡v¥„v¶\Ş!´ºği/\Äqœ8q6‹[!l«V°\Ñadp³‚\äpk-¼ƒ\Ôş/gg–¹I\Ö\èò\èˆÕ„:‹\Şğ\ZKƒgx-·x\É\ê^„7\Ù\Ìğ7¨ş„n{H·6L„¸—®$\Ø{†\Ùu%l6#EÛ¸û6R>Hğ!ùšÕ³’\ãc6\Ú6g\Zˆ—!\Ïg«\Ëm÷ ò‡\Ér_—°d\È\êTg6òñÛ¸NAj\í®)2–\ŞH\Ø\ã»»11<ö\á\Úôœ-=À¬‡\äø\Ûb\È3€³œø{li7w\r–b:X3\İ#\ØPp\Æ†\å§Ë£B\ï\r\Ò.N\á;»ô¾Å‹\ä‰\ì™ ²€2N\È÷fõg\é`Ô†ú—¢s¼mù«ffĞV°±H/«W6…Y\Ø\Â\éj\á\ã&Rß‹W«	\Èt³\ì²\ÚZ[ò÷h‡`Y\âÀ\å¸6—\Ö;¶P¶\ĞVJy\r¿»¼H—š\Ì\Ï\ØW\Ùzã»»œMø¾¾!z%şYe—ÿ\Ä\0*\0\0\0\0\0\0!1AQaq‘¡0± @Á\ÑP\áğñÿ\Ú\0\0?şbp<÷,\İQ\\¤T¤»\ÎEÿ\0\à#¥+³q\á\0krK\Ñ‰_\à/øR¿ñ4½aw€E(«³©\Å\rA‹G%­=\İ9‹•Gm\ÅMo\Ê/‹_D¥\rWd}\ÉP7\Ü\Ô\Ó\æ5\Ù/\Èx¸\î\É\Å\Êy˜·ó¥FşD\0\Äñ`€¯öSş¿ğ¾\Ùÿ\0H°›±‚6W\ÔTk^¥5¿¨\èY‚ƒÇ¸j`04_«–`$mh\ÕC* ôˆuIC‚\ã]ƒ[˜	\ît¦£\İöJtòu1˜|5-Jğ°¨\ìóõ{®xB\Ë\Æ\Ï\ĞC³‹\ß,\íWÌ®%ó*\ËÊ‰O_\îe\æ¡şˆØ»SˆÍ¬Ybş`¦¨¸ÿ\0$ø‡r®)Ü¶ô€óe	P©\Êş\ï\ÜCv‡\ÌkÅ‚ÁcmK}F\Û\Çr÷\0)\\ª\ÚôŠ\à¨ó…À<:™ƒõ\0*ßœxö·,Zx9~e‰W§\Ì\êX—¿Ü¤ ©-=\İûŠ^¦M—\0 \'X\Ô\âD|J{K…³D¹Æ¢| ÷l»6DYô`­‘‰{ó(ÀŠ3yˆ÷Kh¥\Ä\í\çZB85sb )x‚=B\nX«S\êZ-^¦t!Ü¿ø\é\0)uòU{\äı\äJÿ\0mR\æ]B¾,œ\\<\Z38Ÿ‰\Â_©Àn]‘—¢u\Ì\ä<k%PL€^\âp¡¨ı¡7^ù‰\ÍP\ÒÔ©v%wM6X\ÉÀ˜œƒšehQø‡n†\åVu‚®ÒŸQRó\ê€\êô\Ä¨r	œl¦,8ƒeœ´F_\rFlK\äŠrTP\ãg¹\ËEM„^£ôƒq[„¶†L‹0¸«lKv°‚˜¼T\\Z$Pòˆ›l…hw!|ˆ‹p\ÅJ ….“c!³,P·*€½\Ò¶¥\Ô\rASÊš¨•\n\ä<†À\ã»\Ô)q¾ÿ\0Øœ\Ä/S—¢\én\n\ZG\ÅBÊ“:ŠùÄ§z\ÄÏ†„øŒ[©´@1\ÈJ\Æ\áj1eJ7*i\Ù0\ÄQQ\nMµ\ÜWP¥›\î&Ûƒfe®\ì€C«‡p¬¨P(DŒYı\Æ\æğ²\r7°©F!`œ‰\È}¢(/¬fş`A\Ô1€ªo™ŒoJ\ËuHóŸÎ±j._\\\ÅÈ»ƒm“$\"aSE€(9…6»+:XË·c\Z~b\Ö\ì›\äNˆyKš\ìD4¨õ+W²\Èw]\Åa‹)Ša$\ßQ\"Õ‰iIŠTO\ÄRˆFƒ¿Í‚}Ä¬D½@•F*e\ÇU\Â	\Ã.b¿˜\Ü*\İ\åœø˜h\ãü\Æ%üÂ²\îo¯À+ \róó,Y5\"%l9²NE\Ş\Ò\ÉQOƒ¹e[ù–Uw€»ŒY0\r\ß\æ^ª\Èj\ç‹ñ€8÷d\ÑW\ê4+“\Ë-kªšÑ¾\ã!p€#\ZDE\r\ê…\Ê%,!\Õs\Ù\n@{DkV\0•-M\Ãfñ	P¦q´\ÅS*£\ÌJ•Or…xcs?\ækvS\à‹\É\åD\é| nn-pG¥~%oø½·˜5g‘¹]2\è[¾\æAQœa¨rMx…\0xˆ#\Ì\Õ£\íŒrC\ØC\ÌW)e?qS\0‰¨š(Df²y\ãj¼s9SL³û\"\Û\\ú™¤	UKõ›g;\0V\rEX\ÔTPC\Å/\İ\\8WsX¾\'Y\â’ª\Z·\Éw~aùÕ‘;iI  0D\Úw\ãõd¿\ÚJ¨oÀa’¿ŸŸb;y•®\'-q¼M€—‡}lJ¬\Ìdj“˜ótõ+h$OfUtK7°•~ƒ¸	Lh·ş¤\ì\n’[EP’nª6nµU\Ü\ÉtüKÊ¦Z\Z_¶\Zyºˆ\0ˆzD¼ÀÓZªò€¿xª#±@)\î:CWOP#\Âq°+¨d>\nˆ•\ÜE–¸\æw-D¡6˜EC£{q=\ÃFWœ†\Õb\Êu€ñ\noøbpù\ç\àU	\ß×¸Š~©õ^=\Z§×¿QƒQC˜A´š”\Ë\È\r‘\Üzƒ`<\Ëno\æ\âct\Ü!U\Ã5¿\Ïs¨-C@\ê½Áı§\0A¬cmQ\ïM”)¬)·;…” ­ğA…±‹×²<\ËMTùÍ“‘,§+B\Õ\Ôø#¹b\ÈJ\âXhWi~ À®! ˆ©]øfÿ\0Ày–w&¯\î%œB\î\ÈˆYS\åüAû]¶ ®H5ş¸\ì\áÁlKş\í(\á§W\î¶¿P”¸ğÁ\Ú*Yoğ–O„¬¡³Ü®\Ú-b\"…Ü½\ÅGC? \à®sq\Êùˆ\Ò\ä\Ô4n\n‚\â Ş¹€l-\æ–d¬ie «Ar\ÃŞJ0[Ì¾aSúF¸E\Ö%¢6ó<aP	]Â ¦¥\Í2¦;ø”@ºº\Í\ÒË©\Ï,@h=,—[\îTºW¸¤û‰[Kx\n‰j¾œHYL£§;l|Ã¾°)\ê\åpFl¤Õ¼Ê§™RÚ°‰cR‚­\Ôp\àÀ[K#”›P\Õ7\æm ğl\È\ätI¤=¶‡Á\Ôrl]½‰-\Ğ\×À\ï\ÜxE_qM€\Ã£öM\Ö,F™QQY¡Nfk\î&{M•#Ä /ˆN•°UB\â…\ç\æ8¦\0l2µ\ÜeÀ9•\ÃB+„²½¥\î7\ã_ğ\Ã#X\Ş\ä@Y)XLøóıd\Ãp~£	X\äAdµ£ ÀZàºˆùEG¬\Ùo\Ü\ãe|DQC}C¥J¡(®\Õ9X\Õ\Ù\ê*Œ\Êó9\êX-ş\â\ïiÅ‘¦\î\rœ]±­÷2:F\n]ü12†\ØL„!ip|Á´7	\æ\åu,\ã¿0\Î\Ğ}GH˜\Ç¥j¥À˜]òK£‰x\Åûˆ§ì€®_†-)\Ä6•-]dú\ÑQVù•\Ã	\Ë\ïaA§ğ\"›Jk·\×©Q€¹\ÉG¸%LL¡\ç{u\'\ÌÀ|Ñ9[;‡q8\n…•h€øˆ\Ò@\ÔiŸ2–\Îs9°K *üD9G\â)°>	\Í$±²\ßp¥4•@\Ò7¾Jİ›8\Üm¥T¥\\r›.\ã4kó·nTw\ÍÊ¦\Ì€-*«~#\Ë_sZ\×\Ì\Z AJ4µ§BJŠe„h¡\0‡a“?€É¥s\ÊRU¿qR\æZ\n}G\æ­\rk6œò•m\Ø\0¼\ç\"ˆKUE\ÌBn¼Ê‚%\Ëï³˜I\Òö\åğ|\Êtµt\Ã1,\ê`Ğ«\à€®¾\ê:pÀz…p÷Á\ÆG-´¼H(¡ûŠ\n2(\íLE˜\×\æÁ¢*+eWø!«U‡p7g\âà¤»²\êrûCk\Ø*\ÆB­%)\Ñ\0\íÔ»\×3:b>G(J…=ş€¬.Œ³x/b\ÆÌ”€V:\ìøƒºŒFïˆ \È16K´‹S\Âe;NX„ƒ{°>Y‚9n\å5´Š\n‡\ÄÀ5ó\Ü\î\æ0T0‘d5\ß\ÜÁš¸\èCˆ¼H)«_©ku~\å\ÂpCU¥Ü½º¸Tf\nª‰À\ÜZ1N£ò9”u8–>eÊE“£4ª\\\Z \'‘F+ò–\î5g\Ì*¿ƒ\Ö!Ï”Eº\ç¨)¸\Íós9+\Ë[—E!\Ú\Ze\Ü\ÛMK²¦¾:£X¶š<CPZ\àVo\â£ˆ¶r‘\ì.ô¯5*-üD\İÌ­ó9\n:ƒ\İñ\Ñ|\æ©\ÔnòK\ÑP\é¦p‰eY}¶õb ÀmaS\ŞR»’!L*i\ÏQ®f;\å)*qyş¸‡•\ê#1ª\ÎÚ©*44÷\Ôb‹\éG‰bòÍfµ¬Ph¥üû\Å[\Ãšx—ŠIo@s+LQµß©Z‚ê²­Zu•ší€«\Ëì‘«‚\Ø8©hª€7‰œU2\á|B·•%´oR§\àšq!±pùo\âÚ‚jş\å¼;i“ÈtK‘3i\0.şR¶Š‘÷.B\àüÿ\0¤!§\"\Ûñn\Æ\Ãz•n\ËXÁ\\TÁ·©\Î6 ¯ˆ\ÖL±r\í°À\05!9\Â5eyPÀ6ÁjTn\Ç\Ô\Ó\Ç\ê\Z\Ã1|J¼•\0\å±¦’(ğL­60Âˆ\ÅŞ°\ÂÁœÀoP=\Â³=\Ä!Š#U†)-\Ò+Ø”ğ	qû„€,ºdV ,;J(\Ü³¨¯4ò˜ŠÉ•ºH\Êyÿ\0H\"\İg0P(‚½Àn\Ó\â0B¢­;\ÉÀ€S0(¼\ÃoÀJ\Î\Ì[|2W\â8çˆ…ÿ\0‚Mƒ9’ÁJ\Â\Ä¸\î5[Š\\(v#CE>%\ÅŠ9Œ0AP.Q¸–\ÕK\í7\Ü8ˆœ®^.2\åQZlej\æ\0¾˜—8*Q\Z\Ö#\Ü\â¢ów°-\Ùg^¢†\ÙxT2 \àOP\ÂZ\ê:ò÷]²_\Ïù\ée\ÓGÍ³SM]`‹€\Ó«-Q\r\ì\Íò”la\é}B\" K[\nû¯rŒ8‡\nn]˜ \n˜\"ùAg˜m¨\nß˜\ÑŠˆ]\âc2Ëœ!¬\Ê\Ş%\ç9rTO#BWÌ¬ù„r„/~eª¥\ë\ÄHZ¯0\àbÂ¢Ÿ1p÷\æ¢ \ä©M\×\èŠ‘—r°°—\È\â\Ë>biTE$\ra\Ãıg‡+\â1\Ê\Ğı\Zˆy‚¸\"Q˜R%j¡;\æ\\¥V•\è¿0R=\ÜÍ%ğK—b\Ì8º—ò1a€V\Ô\Æñ\Z\Û.ø–\Åò‚C&\Ê\Óñ¡¸\ã*ˆñL\é*%j0G\r\æX±	Dó*i\İG\É\Å®!W9y#+mğE]ıü¬KQ§\Ì\àŠ‹§\'IDª\ZØ’>—¯ˆÀ† ÖŠ%rÀÿ\0Œ`‘\ÄG§ö\Êó\ÂAÔ¶\áõ\0•l(Rj±ˆW•ñ\Z—À‹¶=Z«˜ºI\0m\Æ\á[¤P32¡Q*>}£\Ç1F\Ëk¨ùg\Ä¬˜F’7n\Öjr–ü%y°\ØTP\Çe˜Å²¡¶\Äw¼.ŠŠQ\Ü[=PV\ÚZ1”F¢…\ìnÊ–‹W\ÉZfj3T\Ñ9šñ-ñD\Ğ\ÕkZ©\ä*M±v,.»…OBÙ¾‘8\Za\Ë\ßY\Èy\æ?lŠ8¨2›\áù¹š\âü\Ê\Ñ(„Z±‰›	u\à”;\åı ¨0ùJ .”\Òy\ÅPùYIÁ­\Ä6«‚\ì\ê(T\n2!¢rŒ\0öš:[H6cd\ËR‹\îûˆ²­\îdXÅ!\ÎQ\ç,yUŒ\"\Ö\êB—)\Ùl\n\â:‰•*\Ç§?n\à\0;\0bw¸f[4V]2nN\á@(u*Z®_‰B˜´º†Ì¨\â¢ñ67\ê(ØKr†»–M\á¡\r\ãU\ÈLz°=\Ë`r\è\áš$=ª×ˆ\ÌŠ”ª!\âf ‚\ëÔ­ d!©¡/\Õ\\\ï\ãYB¬`\0ªJ˜¤\äŠf2\å<Á\×t”+Ì©\ÆE\Ò4\Ä\Ç\Ü#/	b\"iM\Å³º˜4KxŒs\nûf…uz‰x\"®³ó*ik\Ô{Uœ\ê.%j\05¾£e)\Ö\'±•IV‹\Ä±*8N Hg\ÌUúy˜†40´«÷8¥²0¡|E;CÀ\ÅÅ¾	\ç1\ÙÄ¸ƒğ¹T\n˜\ÔQ\Ö†´G(1^\Ş\ÙAj|1šu\Zs£¸˜\\\'V¢¿™©\Â7\Ó+\0Ifó\"ƒ\ìLˆ³\â{ƒ«\âYB“¯,¶\Ë8¥\æ,½‰­ˆ*(4\ß0\05-N\×’@ª\áñ\İ\æ3Nb\0|\Æò¿2\ÅÜ¹:\İ2\â^T_Dh¤b¯Q\íô2#\æ)¥ñ\Ä\åTzœ¥»BmüÂš\Ìet\â6½©KsnjY›«\â%¥\Çl\ì1É±±›0\ÙdµL\Êr0\Üo‰Y\Ë)G0h«š”²‚ó-Ê¶U¸ RBøó³\Ä^Œ{T´\Â\àƒÑª\Î\ã\Õ!ó\Zœbl\ïq3¢D³]”c´õ\âmFÆ¢.%”£$OpB¡ñÕ\í&˜ª¥Š™±\ë\Ç\Ì&TÜ§†RØ”Å³tx‹o\ÔıH\æQ‰\Â\ÌÄ®}\ËÀ\Ï¤DXó°ZÊ+Ü¨}\Ñ\0ó\İ\Æ[	\à\ÊX¼š5\Â+‹\Ğù‹®S›•–_9’$e»@Ü¿;\Æ\ÆB\â\ÔÉ¥ˆº\rª\êq\à\Ô*g1ûi(-k8ƒ\èÉ½Djœ¾\ã2¤N4„/•F|E\Ô8’G\Ç\İ;@÷´®±—,e=C.˜§\nŞ™o;\èda¡È€^\\\\b\"ºHBÇ”2\\\È.ş\"ª\ÕFK\å\îSU÷\0T\ÇP\0­¨Jµ\âiDNQ¸_r–™lu~¥¸xl¨ZŠ@/\êÀ\çiP.®¥Z\rx‹UT÷)K_$ ñ=A\0DS\0Î ]%\ìÄ¤U:µr\Êq÷¦®E@¶-GÉŸ06=A\ì^R”\Â}¥5‡˜Á\Ñ\ê^\Z(I\Ù¢]u-°<F°Œm\Â%\ÆJ®\ã\Ù_QÜµó\r\á_Pœ·§\Ô\àB´p4M\Ï?\Î@•LdŸ)™,Œm4BmBwj\\el÷Î \ã#\Zº\r\Æ\åW\å\æ¦køK\Ü¨yIqEûfú€\Ç?p…÷\Ä*Ïƒ#9ñ±¨Ú•W“Xu\ZµY*\Ê\ØcÄ«F8¼NoñZ´Œb1Z$:¿>\"\ä\Ø\Å\êùM‹\Òl»:L–ºe´j)\à\Ï0-®|\Ã?0¯¥\ìˆ\â\æÿ\0\àB­¤1X†R\Ôv|À\Ïõ=R2\Ó\ŞH\Û\Òl¦\Ç}G\"\ÒKŠ‘Õ—¨Ÿó1ª\ß0ôËœ\Ù\Î\"m1:û2Z\Ş šW©X6\ÇUKø@¯ˆeª\ç¸~\"¼^zŸ…uPi½‰m‰pg³›—•)•:–€w.6\â¨\Ô	\Î\â\ËUû€û#\Éßˆ\Ô\Ó \ÚÌ+v\\t—º¶¢·1\ìr,J>¢5v1\ì\åôŒ…\Â\Ç\â{\ß\à*JFTÃ‘¸X\éÀ\ÅÒ¢4¦ U\ZI\ÔGœŠq\êq¦NŠ‰c’\ÙIWK·™”_ •\ç\æx+‰N_\åHÕ¹—]K<‘iõ/y—‘\âd/ñ4·°GP\ÂÄ…\ël ®Á%*\'¸C—\ÔÁ\Ã\æsK\ï‰Ez:š\äƒL6«š\ê&›¿\Âp_©šğ\Îh\Å\Ìf\Êø\r\ä+4T\á…Js4¡\rQ\ã\î7Elz\n‚)4œk&µq\ßø„ğWP«;“/ˆNKÿ\0+Qc\î,[¤\Í|\ÄZÎ …™\0€œ\Å\æE­ş\á‹y²ÿ\01„P\ÑF  ¸C£\Ö\Â!7ó4‡÷¬\Ø\\±em¹-ƒVC\äTT!Z©f\ëj*\é0ªõ)üF]w²ª„.mº›”µ\ê8”ş K±ıC|¿²ğ\İ^K\Ûju”2 P\Ğy`rq(z\Ü\ÉY„\êdKqa½Æ‚û@~\åµ#\ëşÈ™o\0©rù=Ì§2i-ø—\Òõ,8\Ã\è‹\á†i1;^-ˆÚõ\n\Ô_\Ç\Ö\ÛJ\Z\Ø,Aƒ)-!øF…\è}Ê¡1VX~£Œ2\å%ú„\Û#jTòMu¸B\î\îS\ÏñŠ˜´ÅŠr¬„@${©\êkYW£•„/\Â%GñUmPó!E\r\î6„\í@£–¡}‡Á\r\Ù„»ÁP/¨‰&b†ù\æ\"xüÁ…-\Ëqxb®\ã›k—\ÔV¬ÀCN­\Ñ0¬ıQ¹õ‰\Z@(\â¿\Ôs´;‹\à\âl\\E§a\æ^ˆ‹T\Ş]Û‚±„ø-\Õû\nzbf\Ë\ÅÁ)Ê¤¨¶\ê\0ñVD#\Zx÷-kú—ñ€µZ%\äŠ\ÅUg«jbDr‹\æ¨Ü\Ä\ì[N•Jl·h‹f“.üB¯ı2¬\0»P\çqöGiğ\Äk,u\ZV¬OH‹‘·\Õñè˜ \â³¡‚\rÙ¥±	ÿ\0\å7^)Rg7)j DŒZ/d‘z¬\àº\Û\áyZ\ÚD\èñ\Z¿\\\Ê^¯=W¯\\»ed©DJ\îW\îP½ò€ô\í\Ë`2©N.r+\Ü\İ|M·”Û³y•,\ÚÈ–€\0µ@´\Z+\æ‚¢»^®T ¨T¾#¯&Êª\ên§\Â]ñ™M©­³,{G¨=æªkOŠ\ênË¿}o\í•ÁF‚ó\"\Ìü\ÔAÆ¥4\ÏH(J!Ä†»˜R;\î¡\Å*nô¸	C¹\éşD-‰\Æƒ\êk\Õıh4ÿ\0\æÓ ;\ÜAøş\Ü\çWCú#£8:\Ú\ß#\Æ\à€y\Ëÿ\0ˆ™\Ï•S© +8¤ªZ/–\ê,¸\Z‹\ÈVòºC÷(7ıJ7\ÏN¾iW‘\ŞCl~\î:F\ízù”#ËŠnÇ¡:yp¯ş(D)ñ\Û\â>œqZÏ™\ÄGEWRÀrş`À_Á\06\ä¨ky¦\Zº²§\Ñ4~kúô¹BS¶Rr\ê8\ŞgÔ¢ØŠ–—\á\\D‚Î§be\ĞÔ½½ñ7\Ç\êU¹GòXT\Ğq\İÂ¯\nœ\Õ\Ì)y«Ó“^„‹*T\äöFmZu-\0j¬µ4w\ÚN+ı0¯.şH-\nHP\Z«Ä¾©\ä\"PÏ„Cè˜–\ìøy%\ÜÁş\Û\ç\Æö\Üp\×Qò G(Rş&…\n,\Öõ{Š’\Û#X\Ê:\Ø/ óP™ŠŠ\Ğ\ï¶3\"\âæ °hû…¦a\Ô}P\àQo\í¤¯ú WŠ\ß\â5³6ü³Svü\Æ*:j.,üM¥O0\Ël‹¢«ˆeH¼s«÷.=@	V­Q„\âxşI*˜Ø”\í?2\ä\Ş (®\å½\Ø2[oC $¬@`:9Á±ù­‚„\ê;Wô\ê\'!\Ş*£›ş!%\"mùˆ®</\\Jµ´%\Ô\çğ\äNt\Ç\êp\ÉA¢\"\İK‚r7?øÌœÍ‹ı+ş£mb\ÕöË‹»\nP\Í1c\ÕDx™~ú‚¶\Â\Í_¢.\Ö|\Î\İ|Ã©M,»%Sûb\à`EJ;l#³\Õ+I\Ç;!y¢$¯D(\r©ò„¢‡i\Èw¨m¸F¼VÀyD\å`*¥H\âk\Ä\êlúŠ™²º•\ä÷%<Jx‚v€®%<Jx”ñ\\J´®#n¶\ân?‰¢3Ñ©·;µ¸\í\ØF´¯ˆ¢¤	‡;p.5v§\Ñ\é_qCŸ\ÂxI\ÌB\â_ ŸSP9ñ7”üAW\àT H99H û}Àn h<¥\n?¯±ö@\ÖeŠ\0#ø‹º\êŠ±ñ.<o\â,^#GüSÿ\0N\â[¯Á9‹*]Á>¡qyz–pWŠ—ñüF[§\â8‡\âzŸ‰ÿ\Ù',NULL,NULL,1,'active'),(2,'staff','1234',NULL,NULL,NULL,NULL,2,'active'),(3,'user','1234',NULL,NULL,NULL,NULL,3,'deactive'),(5,'hoanglong','f749a07b91e43ed6926756d1e987c5e2e9fd80ffc60ce2da3dcf741e523e1bfc1c1d749282d47f584e28350ef0cdfe1771721942aab990fb49c363f616a19ab5','privatekey',_binary '¥T[‰(¹(¢ºŸ@…',NULL,NULL,2,'active');
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
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `cart_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cart_item_product` (`product_id`),
  KEY `fk_cart_item_cart` (`cart_id`),
  CONSTRAINT `fk_cart_item_cart` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_cart_item_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
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
INSERT INTO `category_section` VALUES (1,'Electronics'),(2,'Fashion'),(3,'Computers'),(4,'222');
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
  `name` varchar(50) NOT NULL,
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
INSERT INTO `category_type` VALUES (1,'Accessories & Supplies','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(2,'Men\'s Fashion',NULL,2),(3,'Computer Accessories & Peripherals',NULL,3),(4,'aaaaa',NULL,4);
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
  `name` varchar(100) NOT NULL,
  `desc` longtext,
  `discount_percent` decimal(4,2) DEFAULT NULL,
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
INSERT INTO `discount` VALUES (1,'Sale 50%','',0.50,1,'2022-02-09 13:46:08','2022-02-09 13:46:08'),(2,'Sale 20%',NULL,0.20,1,'2022-02-09 13:46:08','2022-02-09 13:46:08'),(3,'Sale 10%',NULL,0.10,1,'2022-02-09 13:46:08','2022-02-09 13:46:08');
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
-- Table structure for table `orders_items`
--

DROP TABLE IF EXISTS `orders_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orders_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orders_items_orders_id` (`orders_id`),
  KEY `fk_orders_items_product` (`product_id`),
  CONSTRAINT `fk_orders_items_orders_id` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_orders_items_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_items`
--

LOCK TABLES `orders_items` WRITE;
/*!40000 ALTER TABLE `orders_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_items` ENABLE KEYS */;
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
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `desc` longtext,
  `SKU` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  `unit_price` varchar(50) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `category_id` int NOT NULL,
  `discount_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `supplier_id` int NOT NULL,
  `product_short_desc` longtext,
  `detail` longtext,
  `image` text,
  PRIMARY KEY (`id`),
  KEY `product_fk_1` (`category_id`),
  KEY `product_fk_3` (`supplier_id`),
  KEY `product_fk_2` (`discount_id`),
  CONSTRAINT `product_fk_1` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_fk_2` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_fk_3` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Keychron','Apple Lightning to 3.5 mm Headphone Jack Adapter','SKU1234',250000,'VND','black',1,1,6,1,'short product description','product detail',NULL),(2,'Akko','this is description','SKU1234',250000,'EUR','blue',2,2,10,2,'short product description','product detail',NULL),(3,'filco','this is description','filco1234',100000,'JPY','pink',3,3,22,3,'short product description','product detail',NULL);
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
  `name` varchar(50) NOT NULL,
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
INSERT INTO `product_category` VALUES (1,'Audio & Video Accessories','best mechanical keyboard','2011-11-11 04:11:11','2011-11-11 04:11:11',1),(2,'Camera & Photo Accessories','cheap dsfdsfsdf','2011-11-11 04:11:11','2011-11-11 04:11:11',1),(3,'Cell Phone Accessories','hsfhsd hhdbc hdchdc ','2011-11-11 04:11:11','2011-11-11 04:11:11',1),(4,'GPS System Accessories','ssss','2011-11-11 04:11:11','2011-11-11 04:11:11',1),(5,'Clothing','desc','2011-11-11 04:11:11','2011-11-11 04:11:11',2),(6,'Shoes','desc','2011-11-11 04:11:11','2011-11-11 04:11:11',2),(7,'Audio & Video Accessories',NULL,'2011-11-11 04:11:11','2011-11-11 04:11:11',3);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `image` mediumblob,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_image_fk` (`product_id`),
  CONSTRAINT `product_image_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `star` varchar(10) DEFAULT NULL,
  `content` text,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_reviews_fk` (`product_id`),
  CONSTRAINT `product_reviews_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_reviews_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reviews`
--

LOCK TABLES `product_reviews` WRITE;
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;
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

--
-- Dumping events for database 'techmate'
--

--
-- Dumping routines for database 'techmate'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-21 11:38:54
