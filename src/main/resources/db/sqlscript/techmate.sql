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
INSERT INTO `account` VALUES (1,'admin','4b423a6dab4a82696051aeac96eb8c9eb97985b3685ed6475a321e61fb1d71421a6d545c35e54cb5718c2717cd6d8699a3e443492c58c0aefafa8e44624a5df7','123456',_binary '�\��\�\0JFIF\0\0H\0H\0\0�\�\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(�\�\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((�\�\0V\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0�p \0\0\0\0\0\0\0\0���y�\�_�\r[\'\�z\�:\��Ƕ�\�\�tZ�َӄp\�4:\�!\�Ch�2	�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$)�Ϡ|��\�^�=\��T�\�[*��\�S�֭Fڦ�45�r֖\�`��\�\�)z}\�0\�}��yk_C��\��\�GՏ����E��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0&d~\r\��6�J0\�\0W�Tm�\0�,ݔ\"�����tY\�\�ͶUsz\�\�\�ŉz0\�a�#\�|	��e�?�їX\r\�\0\0\0\0\0\0\0\0\0\0\0\0��%��;\�^�]V�\�uq6�als\"l�\�Y T�3�BY�\�\�\'H��>�(e�[��\rn\�!��9y���=c\��3~���\�OՏd\'�(\0\0\0\0\0\0\0\0\0��W�\�񸶛M�5]�t�캫7=�5���\�l�\0EDȽ-4lͩ�#Hf\���\�f؍\�\"[Tcɣ���3)m\�\�\�d`\�wy�a\��tQ\�\�\�с\��\�=�v=Bc�0\0\0\0\0\0\0\0\���9Wӵ���\"\�\�\�Ӆ�Yݟ�K\�D���E�\\W\�\�Q�NV��\�,;��	��\�(L]t�\�\r%9�l\�y��\�\�\�^\�^\\ݎ\"9k��-\�ɢ\r]>N�_E\��/eێ����\0\0\0\0��\����\�\�\�{=^Q�@R�\�j���W>�J(���_6y�?��.g���β\rW\�I�-�v�\�Qj�\�Jh-Ζa\�-\�\'V�j\��xY\�\�\��Η\�t7�>�����\�Oљ�\��\\\��\0\0V\��\�\�\�\�\�w<\'�\�\�\�jy�R�歳!��K\�l�M:��zOP�8\�\�dd\�q\���\�.V��g\�\�2���\�V��\Z��Ɵ<\�w<ƾm\�,�k,֍qP\�3;��\�\�\����C\�\�\0\0\0�7c\�\��\�s�u\�\�y��vЅFW6XީE\Zz8�\�;<\�:rߙ3�og>\�\�\�s\"�\�\�\�yu\�\�\�/\rxS\�ƫob\�]*4)Ț5!�W��ĕ���jy6\�:G?E\�4V�\�k\��\�%}.�\��{\\`\0\0��K+\�\�o3�B���lU�Њ��DK#u:\�9i۾s\�Q\�\�s\�\�\�K\�z7NC\�\�ɖ���\�|\\����\�R��WW��^{Ya�J�\�Y�\�\�uuYVQ���x,�1vk\�\0{< \0�3\��ܻZ�G>�R\�\�\�ɩ[o6�\�\�#���e�\�e5Üq��&tXᴡ����\�36]�\�Yw\�\�L\��\�*��\�\��\�yB�I+V\�љ��@\�\�X�:.ϩ�\�y\�\�$[�f\�˭e\�ٞLt놋?Nu�K�Er�i�\�9\�z\�󘵵��&mD\�&��Vj�<ڜԴ�94\�Եys\�\�T�h\�2�%�q.IJ(\�3-fX$*�$\"�U%~ן�\���\�.ed\�+�CI�׳\�n�[�5Mo\rv�[��\�Ƒ�L\�\�\"ԟd2�\�,����	Ҷ�\�\�\�Ƒ]+�͛mG�>�U\�.\�\�\�q\�sTMa4��\���/=\�EY@>����>\��Fn\"�\�\�j=�x�`���=\�xu{+Lh�\�\ngض��3j\�~UN\�`\�\�{�i�d���\�\�7���\"Bb%\�qHr�\�4#R]�NYy\�\�X\�R�cܩE�@Ri^b�\�>\��c\�\�jU4Z!Ȧ�\�f�tѯ�G\�3�cU����\�N}]�c��G+�\�]+-��\�ٕ\�Q�&TR-I+[�jr�1VT���\�*�b�V+V6�eVT(�,�ubZ�.�ռ��k\��_��\�߂:�)\�	�͘�d���\�0z\�I���Cٚ��0��\�R\�?�\�*w\�-�J�	����![���[K�n�q��Ӳ\�eY\�R\�;v��ڛk�E\�)#��B�զoʘq|\�b_�\��\'�y�ifT�9�<�.�+�݂�}.�e\�n�f\�\�nj4ˤ�L\�Vl�b\���ʊ�¥ڋ���T]\�4n�C���qX[J�\"(\�\�X5�%�s>��\�\0\0\0\0�\�a^0\�\Z\�\�\�\��\�\�<�j\�D1�R�E���,�LQ$Cw*$AL\�-�ʒ�Rj�|\�ش\�\�iD\�j\�ST\�&��)XS-5`IvK\�*\�\\��\�y�\0\0\0\0L�\��\�)ǭ+�\�W\�\�\�\���yq�\�\�+\�\�z�ͣr\0�\�`�Dk<[]\\)\�\�?S�ʾ��3o��qX���Z�\�k^\r��F�\�&�\�X��rQ5�A�k`���\�zHC��x\�\0\0\0\0\0>s\�s2�I��\�=�����\���\�~A\�~]��j�/7\�/���\�~;\'\��u\�Ў\�gG5\�\�\�M�m/K\�\�C�5�V�v���U\������?�Ċ�;�m�wg̣R\�g��\\�e]����K��-kIiE\�i]v���=\�,\0\0\0\0\0\0˯?;Y�/o��Dv;\'_\��������\�\�\�~�\�\���5�N�>k\�^z\�7\���\r�c\�Ӗ�I\�}\'/�|g�\�k/\�[���%\�\��:3\�\��\�\�Uy�i�:_���k\�����v\�\�\�/y\�\�%��\�K�$��)\0_F\��l\0D�\0\0\0G%�\�86.�H�h�w(:�C6���@\Z��U\�\�TZ��\�\0+P	�\�\Zl\0\�oP�O�\�\0/\0\0\0\0\0!1 04A\"3@5#P$%2�\�\0\0��&�\�&�$��\�YdCU�&-t$&��\0\��<\�.C,Rf�<�K\�\�OW�]�~C�F\'��\��A_��\�\�@Z�L�ll\�\���N�9�\�l��(\n4\'[؞\�Z9�G\"\�B��J\"\�fF? G]��ώbi\�hy )\��\0���>��ok9m\�,��,��\�E�E��oU��L�$ȹ\'�[�	��J2R�\0kP\�\��FE�\���E���ok,�\�^\�S9r�\\\�\�>2X�BQ9\�\�\rF};\��\�g��,q-N�Ye{?W���,��f\�&K\�E�]㍑\�r9\nD�%��@F�\\yL:��\0\�\�\�#�93O,�}~\ZFH\�l�\"賑�6\"\�H�/vQ5ԉ3O��g4��K�-^�a�\�,���L\�\'\�޶Ki\��q\�!\�̰�U�RD�v)�\�]�J�}9�J!3SK�L]�\0��_2M\�Ⱥ۱��\'��cۺ�\�13�B+�\�p\���\�\'���=�S$�\�㐤c\�h�?\�yL�\�J���\�tQGuCK\�Ї��/_ē\"��\�!�$GӶ&D�DՓ�\�e�f,�=�N�Y�ã�+�Q��\�\\J\�FOS\�F\�cOj�g\Z[��h�H�%�\"2�4\�G�\�\�\�*�%\�d���Ț|��\��E����}6H\�\�\��\�\�j`=�d\Z#\�Б\�\�˚8֣\�\�\�K�Z�T\�?��\�-�\�\�Љw`H\�.�o7KǊ\��\0�3\"E오`\�i�,��\0���\\8\�\rF�.�\'��+U2L\�\�őVq\�\���\�c\�^mfM��1t�cU�kvGw�!T\��a%:\'�����]�E�\�\�	)/\�\�\'d\�ƌIdǨ�yq\�\�,����\�ں�>U�\Z�~\\\�\�\�)�Oq�\�m^�Z�z=\�t7d_|�~�q\\�\�J�\�I\�\�\�D��+\�\�\��M\�5Y\��ն`Ȥ\�d�6P��#�_p\�a�Lp�tR(�P��:\���D�N%���#��d\Z\�\�\�F\�DH��tA��q_��[>\Zl���4�x\�i��+d�d�\�H\�\�>d|��\")�\�?lT6u����Nc�#D2S�K\'.\�E\�s�\�?�.e�:->�\��!��&��;|��\�=JJZ����7�\�4�\��X�\'\�)�d9H\��\�(��\�{$�\��v��qq=�J\"/Q(��E�,\�\Z�?!�)�,�s\'�Ed\�r\�\�Ԝ\���I\�vSdq�=&���%�\'�x��l\�DbX��k��$�cF��\�\��c�\0\�\�~ܨ�G\�C\�s9�R�{�,��\�&~��hO\�\�1�\�/;��Ǎu�Dq	\�8�\nCB�gG�,J\�(kv��[G�y��Ntr/f\�ٕ�8�G\�C�m	\�LK\�ɡ\�hcڬ�\�n�4QE}\��G�βj\\�G1ɋe\�H�1�\�g�\�\�QBۈ�̐\�$4qCHCD�l��ڎ\'\�E^ȯ�I\�|��Y�c\�l�H�#\�n;ЗْC�L�\�;c[J�\�\�c[\�\�Q8\"�ڝD4�\�j\�?�\�\�!vq8��\\\�DR#V��-��I�\�C\��\�?tP\�z.\�\�\�\�EV��\�jz�\�ϗ��\�r��\�՜P>21�$$DB�\�d�͞\�P\�\���]�w�����\�\�\�\�j�j&\�Բ�\�\�ʈHT\�G��\�\"\�,�\�\�\�\�\���(q[�{\Z{X�\"�=D�)o�k5z�\�fyQ,�����(���L�:\"���\�\�n�]�b�^\�v=�\�q�H�N1\"\�\�{E=�-��s�#漣Կ[Y{Y�c\�\�$�I���+f\�2S�9[p\�pܑ\�Dg!I�\��ɓ}+ٍ#����\��)�MT娱�ڊ�A\Z{!\�R\\\�g\"\�<\�\�\�Ҹ4̌�J�\'ɦr!ؐ�\�\�E\�\��o{�X\�i�\r��.�*\�\�嵍\�G��I(ꟲ\�!I��D=\���g�\�\���%\�/�.\\\Z\�\�-�4\�\�b���f!l�Ĥ��ھ�c\�rM\�#�V���DQC�ۭ�{�=2\�`\�C\�Ϳ0gFam%G\�\�\�\��`\�qJ\�\�6�IHy��I\�R!Fڇ�(K�2��G�\�#��e�\�B\�lb\�m{y��4�\�8\�\�\�L�m�Qَ�\�\�!>*\�\���C.br��i\�4\�&DD~���ҝ�\�j\�zG!�vcٲ�[�5^?sS\�rc3`W�8E�ǐŒ\�\�r�)򏣴K\"FL�ݳ\'7�P��F�dQ���\�\�\�kc\�h憬��\��l�\�\�غ+\��\�s�\��L,��-�:_(��4Y�D�,\�dnO;qӋ\nB�!+ڿ�5�h~�$ζ{2�e��;��JKS\�4��O���\�~��\�lZT~� �8���i��P�B\�d�/\�\�6X\�7{4zr\�\�Cv?�[-\�#�ë\�\�d�\���\�K���\�]���D�_��{�\�\�\�rc{6��\�\r	�8\�wCD��\�\�\"��_�\�-��1�M�\�\�}�H���[/[G�k�Զ���\Z.8\�,��5����\�W\�0\\g\�O\"�pkpg�f�]�O�xg�\�\�7Ս��K\�춤F(�4�?ɖ\�\�����uc\�j�j��#\��+הé\�\�\�\�a�\��cY\�^�GZ�x2eϫ\��\'WX\�\�\�\�\�m����\�srx�h�Bz}+���\�H�9�\�,Mn\�\�B]�WU������^g�!\�`f\�\���\�,�\�6��\�\�Yu�ٞ+\�d�uz�\�g��[�\�\�s�\�?�\�[\�\�\Z\\\��\�%�Қ�\�\�|n�,��SU<8�i�jV<�t��y/I�Q�K,3D��/\�<Y��9\�\�_)G*�l\���g�\��b\�D��\�g��U�u�Hg��\0���\0�f��\�\�u���\�\�Ml��q�\0n��C7\��=�?�g��8�\��\\�z//�ɫɪ�-6\\�\0���\�\�c��\�\�\Z��\�\��\0_�W�ԯ�\Z/\�\��\0��>K�\�?�P�\�ESb\�/������������z�崫\'\�W�����\0�\�\�\�\�\�5\�Fe�\�\�-N\�\��\0Q�O�.�\"�J��ޫ6�\�<g\�|\�e\�G��,\Z��.Yw\�\�u?\�\�~\�?�t��_\�\�~\�\�]xȷ�\�#�KtQ_�X�\0�-�~7�6�\n\�\�5�?�\��%\�0�\�!\�8<^9h���\�F�\�i�K�\�\�\�\��Q�Ü���0\�\�2AJ�xq\�.8\��\0M�?\�\�KV8`\�8ZX!	U�4\�5<Jf<k�-\�(�D�z,\�����\�qH���(��(����(hh\�pe	é\�q\�K��b�XZ6,L\�8w�28�\�|l\�ό\�p3�\��\�\0\"\0\0\0\0\0\0\0\0\0\0 0!1@QA�\�\0?\�*$B�!O\���\�!5x!�3\�>3\�݆\"��<=xc�\� \�\�x�p\�йh���i�᎗\r���3�W\��\�9e�\��\�n�\�\�J���ĉ�ϡ2�\�t���\�<LWe<���E\�\Z%\�[h�<�:�f,OwMu8\��)J]\�\�\�]!�JB\�\�~�\�\�_Z�|�J)J]\�\'(Ǘ\�\�t�]�T8����OD\�\�&�ꗹ�\�!	\�L\\2�����S\��/4��|T_f#�=Qj�d�c���b\�sض�������4X3%Y�4XFx�\�>oH_�J\����\�\0&\0\0\0\0\0\0\0\0 !01\"2@Aa�\�\0?�\�lSd3\�\�GQH�H�\�h�\�\�tYz�[-�Yl\�ΣB\�\��\'\�#�\�O\�\��_�\�Z��c�]�\�\�h�d�Mї9w��FTX�֨�q0\��\0�\�d�\�%\�}�)X�$E�\�Ta\��?Ft\��\�0��\\]w��ȓ\"�\�H^Yo\�vI�\�QʪD�:\�\�ytCa\�fO��D��Q\�\�F|Y�jK����<vě��qew-QČ4ޙ�ّ\�S#��Č�bp�(ěH\�Ye�X��e�}پ�\�P\�GX럐K3eިg-��\�n���\"�\�ȓ\��ČEĚ\�E\�\�\�7D\�{c�{HH�DQ\�$5�\�\�\�\�q(��Йbe�2KL^�Q\�\�J(��ij\�,�\��%�\�&H�\��\'�,_\�z\�9z\�(��.�\�$ȋo\�C�\�1�\�\�\�1ɏI	i��\0Fx\�*e�Ж\���Z�oȁ�5g\�\�&..�����\�kp�\'C�\�}�\'�e���O8�6pg�,j�/ѕZ�ё\�~\�h�и\��b�͒2�>/��ԇ�}��\�U��HM5b��\�bd�B����\'�8Q�|~\�qDr*1dJ\�\�UL\�¿SW	\\r�\��c��\"SP�u\�ΔLy\�D��\Ze½��%�\�!\�?���\�\07\0	\0\0\0\0\0\0!10@\"AQa 2Pq#3BRbr���Cs�����\�\0\0?\�$�&�1^b�0�\�1\�\�\�⑫\n�/2\�\n�*�*�U��ט/0�rS�v�Ty^e�\�்¡޺}7TS\�UU^W�ˆ!\n�\�\��*\�eM\�<U\�弑\�\�r�\��/ú��l�i@;k\�qz<�Ϻ\�|UЦºrvĸ�E\�\�t�\�NʣVG`!�j\�\�\�W4w��Ă\�F\�3�u뱖�\�u>�n�l4\�z�?�.5j�8\�\�۩Ss2�\0:�\nnTԦ��G�\"C�^D,��_���\�2Pt^\')\r��ԽƐd\�\�&�b\n\�f[�\0\�/쩠\\A�E�p��S�\�ދ,6�6�\�\�n:7R&�$�8�\�H\�\���6\��p�]��r�֩WUr����\�8e���HWR79��\�K\�%|&�����+z���\�{�\�\�ƾ))�\�\�\�i�ﰦᚖ���\�h=h�Ye�d\�A����s<�\�gM:*\�l����\��\0�\�v\�.yY\�nAWҨ����d%Ǉ�Ү���\�W3̂0~�~_3\�W�\�ul*��� ps\�즮�J\�*XM_\n��U0�\�lV\�\�p��P�����0�\�\�#\�#?\�T����*\��_\na4$�ᦅ<T\�\�b�\n\��\�-̊�ǡG�3U(WVV�P�$T���#e\r6ușfgP�᢮6T\n~\n\�8J�\�DML7+�\"�Ƨ\Z��fP�}bb\�DW\�\�\�4&�eԘ��\�Nnp��\�\�H>ȗ\0Ya�n\�+\�^\�431���\nEE\�9\�\�V$@T��Q�\�R�X68n�A�\�̬�\�\�\�G1���*�<�Jy�@4=�:�A�d\Z\��D1��\�c�Dq\�@�\��|5;\��\�\��h�����\���-�\�o���a�$MM\�\�%e�� ��\n9\�\�\���\�^X:5U�?rc��<��2�h_\�#ZOU�\�Q\"Bw١L�\�=\�[\�\�}yw�R��\�ދ�\�f�3\�0Vg%�\�	HΊ�L\�q>���P}���\�\�?���ߐ�Mu�Yd2�M\��\0\�Ao*�\�MӒ��#�.\'�`\�\�&:h\0J�#\�>\��R��u\\l�[i쉍\�_�5D�MO�L_�\�\���b�\0\�B\�,��\�b㛤�OW\�F��@�A~�\0\��,�� �\�<�Ɇs~$؃\���\0Q\��������e\�Er�\�\�r�\�\�g\�9���(�ɉ�Ɉ{&��{\�&#�\�{&\�l\�p��\��\��9��p\�\�I\�6\"I��m\�i>s��\�\"\��Wg{��h�\��_o����ZlPs\";�8L\"߄H\�]��\�.�m`lT\����&�\�\n�D��5\�\0\�	mo�\�\�s�W%uuup�����\�\�\�\�\��WW_�\�\0)\0\0\0\0\0\0!1AQaq 0����@��P\�\��\�\0\0?!�\�%\�\�\�{�\�V<{])��TlVt\�C�I��?��	\�\�ބ~6\�\n[�\�<.ʲ#\��\Z4����`���\\����Qt\�\� !�j\�yFg\���,�xD.�t\�\�\�\�\�r\�\�6M��	�F!�ml�\�淲�Ǳ[؏���\r�#�d�:`��ג&}A\�@T|2��\�zg̟#sM{�\�\�\�\�_\���W�L�ډߖ\�\'��R�\�^�?\�kC�;\���/\"����Of\�\rҏq\'\�0\rw$\"�\�����X`�\�N�ߔ�� ��\0��}L�C:*\�n�&\�:Qꍏ!����\�z\�O!YFsn\0\�|��gf\n#\�\"{\�\��^+\�E�!\"�V_�L^p2\�\"Xٔ\�\�83�#�8hkV,T�W��R(�\�4xrIrJdE���\'_F¶)&dĦ�RL�2\�EC��1�\�\�+�6\�\�q\"m\r\��\�3�T�\n�\�V����C \�h5Ae�I��N��\Z~`F\��\�`34Pd��!T&\�ig�\�D4X�н3SaEb�r�T!��\��\�D\�)UC\�\'8fCli�\�\'F��\�~�Y弎�\�\�ރ����\'\\G�\�h\\Spf � ��Zl�\��`�NW�;���L\���$��>�4���#�\�\�\��\�v̔\�8���Vw\�!\�\\��pdI]6N\r0`P\�q�U��Y.E(%�d؃�\"dB&��y)��fH��I�`��\�v�t]F\�<e�\�6�\�r���\�ŕ�\0B�ue�̯\"\n��ة(�(\�I\"��He\�s�hq�?a1�)4��hq�L��+��1�։\�\r�	ߞ\�KL� \�;�4D6n1a����\�\�m��M\ro%�\0x�g�NB\�8����AO)=��<*k�%�/Hn�xE�G�2`�\����ي`\�C\�TT�d�y��ا2r=�Se����b�\r\�ܽm\�\'\�x�\Z�-#ܙb������e�\r�p�Aad�m��(��A�\�\�\��0\�B\'c{�D\�\�\�\�Zbx\�\�\�E��qA䵑-���BY\rZ�uL�!X}�̇�\�]�nE�A�4)v7\�9VңUD\�,��\�A\�JX\�\�!�Z&4�\'��kx�%,\rI\r\�!*ha\�l���:f\��\�\\gs�5Ӄ�j�\���T2\�yFE5��\��̊\�\�a6\'$��c�\���b\ZTY�u\Z鎄\�\�\�Y�H�Fg�\�zfLM!�\r�>��`S��*�\�ƺdcݢt|M�3	Q(!1鯳-v�έ�͈���c�;�\�<\\cDA��Q�LY҃a(�Q�C���kGY�;3<�Te\n��4JXب\�A60�Β\�ʊ���^���#\�\���1�<k���&��\�?�0vژ�k�$Gl�	&\�\�\�\n���R�C\�	���\�c\"\�Fc\�tB\��N#\�5	��N�)dhd5��lS)� �tt��87�\"����\�6\�+D�����\�\�C�܅��z�f24�K��Ы�\�L\�\�\�\ZQ؛$��`J�g�/q�JeOf��Xȑ�B\'\�\�CI,0\�̸c\�ڐD���\�\�J]	V��\�̾\�C�Bp0��\�\'�%�-�Џȗ�Fzp�\�Ä-/#DZ�4ph5|:`oc\��\r\"�\n\�/�~G��՚�`�0�l-1/�(p.���\�\�\��iSLѕ\�8\�B^�ƻ\'�V�\�Y�\�ط��Is�e>\�D��C\�\�[\�����E\�	(�H�\�\��4�cBU\��\�\�\�,��d�b>�TK#,\�\\�\�1�dXl`ۓ\�b\����zCm\��\ZI\�Q�p��4\���$\n\Z.%�;\�d\��qc]\ns�6İ3X{�6,\�t+Xd\�hKHM�vH^y�\n�����\��Nٺ!\�u\�=��\�90�A5�Yt/ ���D-��GBȰ��\�\�\\<%�����lT1SB\'�׊�h\�ً\�B}P�1�e��\r%�*Ȅ�d�\�\�i�2\�W\���C74K��D MȠI%��B���	z#\��\'C{��\�K�\�a�\��S�J\�ס\�gCT�v/�\�\�^�x�0�Y\Zx\���\�i�@*�\�![3���Y\�\�\� D.SCڍL!�b�\�\�xy�ݑ���\��Vaz��b(�%�_��Y\��v�\���Z�\"PY\��yٶ\�ӡў�\�]��8Ț#�Ɗ�\�6��\�&7OFU(�h\�\n\"YDI\�Th:�\�ա\���Ѩ�\�B$ȡ\�gt+\�3��bi\�1Sb\�#~��C�m\�\��T����\�\�\r���.,\�\��M�&\�`�(3\�N�\�%N%�\�2C\�ʘ\�\�Lv�#�8\"4�\�Oa\��$\�0�1,1�\�km�l�\�\'L;7\�\���^+F\�љ�I�\�Pdy\�%=�\�\�\�\��\�\rgdXYI�hM�z�XG`�\�܊\��6\r鳭��3�ġW\�^Q��Z�I*\ZaX���\�C��w\�4\�p��!\���\�c-Ȥ\�\�x�\��\��[\�\�g��Г\�\�<�4�o��Hd�\�\Z\\\�z4�e�� \�#^��!� ��L*\�\\J��V�7UXv��\�؊�Q�\�\�%x�앍4:\�Ά�S�\�Ȣ�Ow��ɞ\�]�g��%�\\\�Zp�{\���c��<z�ȏ�|�Aو08F,�\�\"Մo\�=ʲ7�o�-웏��ЫlOtB��\�����\�e�\�\�\�F\��hh\�{ec\"xu�\�d�X=\"�л�M2Wc^<F��\\��=�H\��Q\n�N�J�8�J�iW\�:�\n\�1���[]e���z)P�%\�\Z�RY\Z\�\0�Z4y\�\�\�C.��x\�hz�O�P״RY\��\�H^CS �bC/���!�؋���7��dv\�F\\\�Vã��y5)*,\���\�3pS:*\�\�7\�c���v8�O�&�(�v]\�4\�\�~�D�\��\�\�\Z�r	Lv� ~�\�\�0a�!2	�\�c\�*�\�D�X��N\�ls\�E����g\�y�ĩ�;c�\0�ȓc~��\�0�b\n�L��\�H�\�\�e�\Z�Q�\�!�W\n�F��\�p�\����SC�0-�ƄAPД��P��#,�b�#�Wz\�g�2��k�p=\��}��Eh��\�y~	��6�NbDZ㡙�7\�5\�͋$%�.F����\�M��2/���hQ��O�3�bC\�؞�E\�dX\�O+B�-5_Q���\Z\���\�Q	\n��\ZU�Ai\"�wi,ՆT�K\��\�b�&|\r\�\�\�\��\�\�0\�M즙\�L��/\�ܶ�P\�]Ü�\�\��\�%�M�?ɿؕ(�\��~\�\�\�ddi�J/��T:K\�g�\�t�\�L�4����ŻY�\�\�J\�&V\nqY��6\�ɽS,��?�A��\��>���&v�\�i�y	�G�1\�\�2�\��-\�\���4ե:Ϡ\�h\���gB?��s�ϡ�,S%�\0�A\��\�3Q\��Ǫ\�8�.?�yl l}rHTe�\�\��2T�S<\�dy4�\�mOС\0D*�}�u�:\�	mA\�8�țG\�dn\��8�\�\�c\�\�J^��,��\���\0$�)�`��ڊp,�h�U�*S��_\�9���88�p�\0�\�\��ަ�H�\�1uCV��\�IE�(aS_32��F\�k&Eh�\0�\�y��\0�_g�~ytd\�;m�aj\�ajD\�\�8\�>\"�-�?\�<�FC�1��dt��\�c\�\��j��_�\�\�;: `�\0���?\��\0�\�L`�G�4|\�i�\��\�\�5F�1��̯\�����1��,9\r$�#��.\�\�6M\�>\��\�K��\�c�\�1���\'\�\�ȓ\�?0���1#~)5\�\�pk\\-�ܽ�Mmh���E؇��\�tU\��SzU��\�N����7\���f�^E\'\�h\"$�CFÛ�a�z�Oc�D\����\�\�\'�g�Q:\Z:;\����Ĭj�SO�!J�����UO���G�]�k�D}�\��[)��Mp�x)H�R��#��1�7��\\R2��q����F�G��J}�7�SzA\�)�\�\"I\�\��\��M\�_��\0\��\Z�\��x�\�3�=��t!Ӊ�М|�V�\��\�\0\0\0\0\0\0�\0�\0�\0�\0�\0\�7#Py/�\��\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\�؝\���HG�D~�\0�\0�\0�\0�\0�\0�\0�y\Z�\�p|I�\�ZJ\�N�\0�\0�\0�\0�\0\������\0�N���\�C�ZP\'�\0�\0�\0�\0�-L̟0\��ɍ��H�w\��\��\0�\0�\0��\�\\c_Ov���ʲvi�8��\0�\0\�rW�\�\�\�Idn�k\�I�J_�\0�]	�\�*��\�}�i$+1G?�\�\�k�\0�\0ڕh]\�\�U|B��,q�Z��\0\"Ao�\0�6p_�\�0�#\�\n\�\0X?\'\�l�\0�\�K�\���_\�$\�;��\�+��\�\�\0.�~sP�_.��f{�\�\�\�Ŭi�=\�nc\0\�ǡ\�GgX}Ɇ�\�䯎��bX�U_�\�o�\��s\�t\�l>\�l��\�I5pVPJ��A�oQqa�\�?a�\�%?(�}��\�\�S3͵�\0�\�`\�\�E_\�w�O\']���g\�a\r\��\0�\��ɳ\�~C�=\"�`\n8|�R��\0�\0�\0�zTb^$e9t(�H׶gV\��\0�\0�\0\��\�\�Z�\�\�e\�+�v��\0�\0�\0�\0y�X)\�:�F�\�p�s5\'\�\�0��8^w�bآy\� p\0\�C�\�\0\0\0\0\0\0\0\0\0! 1A0Qa@�\�\0?�OI��{.ݻv\�ڱ�\0��v\�a�b\�E�-\�\�\�3���\0�Nx\�9&\�\�a��z�C\\/�z�༐i\�r\�=ޜafs�����?��e�\�2\�qe�)�~z6�^\�\'i/Nr��<ӷum�A�\�3g|�ĒI\�m\�\�)<=�:#2\�-�\�\�\�fS\�6HY\0%�\'\�<��\�Y!���DӸ 69\�CIP�8M�\�\�!�/\ZH�\�\�	N%\�qn\�\�y\�\���\�<o�ff\� ���t�8m\�,\�\�Yܡ\�im\�[m�\�̌8�\�x[by!7���\�)�B\�m�D;F�&��=\����\�;/\�;<�\�<\�X���e�w\�\�.��\��Yo�lA\�0\�\�\�c\��\���\�\�\'3�,�,\�Yəw\�\�1\�,�	Ź�`\�� �c�k�~\'\\\��\�c\�d\��c� c�v\��rߩg-f9q\�vM�r�~\�o��\� �^0\�\�f�;�\�eV.��\�\��e\�Pd\�\�F\���7�|�XY�穀��� ck\�\�p���J)*�w]Ķ\��7\�\�Q{C\�9\��\�\0\0\0\0\0\0\0\0\0\0!1 AQa0@�\�\0?��\�z!�\Zc{�\�\������7݋\�!=�\�\�\�h�!ڀ=����\r\��\�\�#\��\0\��2ը� \�!\�\�LH��\�\�?\���\��\�e\�#�a\�:Ixe�\����M!\���n�D��[3x\�Ԥ\�\�7�N\�-��=�1ί���ZO�\�^6\�bm��<�����Z�T�D7��=H\�bv\�\�>\�^�\�\�o�am\�?[v-���\�ëps��\��l��7�x�ð�;��j\�v�8�^t\�\�\�=��`\�oR\�,�\n��C�kK�v��v�\�!���i/\�q�8q6�[!l�V�\�adp��\�pk-��\��/gg��I\�\��\�Մ:�\��\ZK�gx-�x\�\�^�7\�\��7���n{H�6L����$\�{�\�u%l6#E۸�6R>H��!��ճ�\�c6\�6g\Z��!\�g�\�m����\�r_��d\�\�Tg6��۸NAj\�)2�\�H\�\���11<�\�\���-=���\��\�b\�3����{li7w\r�b:X3\�#\�Pp\��\�ˣB\�\r\�.N\�;����ŋ\�\� ���2N\��f�g\�`Ԇ���s�m��ffЎV��H/�W6�Y\�\�\�j\�\�&RߋW�	\�t�\�\�Z[���h�`Y\��\�6�\�;�P�\�VJy\r���H���\�\�\�W\�z㻻�M���!z%�Ye��\�\0*\0\0\0\0\0\0!1AQaq���0� @�\�P\����\�\0\0?�bp<�,\�Q\\�T��\�E�\0\�#�+�q\�\0krK\��_\�/�R��4�aw��E(���\�\rA�G%�=\�9��Gm\�Mo\�/�_D�\rWd}\�P7\�\�\�\�5\�/\�x�\�\�\�\�y���F�D\0\��`���S����\��\0H����6W\�Tk^�5��\�Y��Ǹj`04_��`$mh\�C*��uIC�\�]�[�	\�t��\��Jt�u1�|5-J��\���{��xB\�\�\�\�C��\�,\�W̮%�*\�ʉO_\�e\���ػS��ͬYb�`����\0$��r�)ܶ��e	P�\��\�\�Cv�\�kł�cmK}F\�\�r�\0)\\�\��\���<:���\0*ߜx��,Zx9~e�W�\�\�X��ܤ��-=\����^�M�\0�\'X\�\�D|J{K��D�Ƣ| �l�6�DY�`����{�(��3y��Kh�\�\�\�Z�B85sb )x�=B\nX�S\�Z-^�t!ܿ�\�\0)u�U{\��\�J�\0mR\�]B�,��\\<\Z38��\�_��n]���u\�\�<k%PL�^\�p����7^��\�P�\�ԩv%wM6X\������ehQ��n�\�Vu��ҟQ�R�\�\���\��r	�l�,8�e��F_\rFlK\�rTP\�g�\�EM�^��q[���L�0��lKv����T\\Z$P�l�hw!|��p\�J��.�c!�,P�*���\���\�\rASʚ��\n\�<��\�\�)q��\0؜\�/S��\�n\n\ZG\�Bʓ:��ħz\�φ���[��@1\�J\�\�j1eJ7*i\�0\�QQ\nM�\�WP��\�&ۃfe�\�C��p��P(D�Y�\�\��\r7��F�!`��\�}�(/�f�`�A\�1��o��oJ\�uH�αj._\\\�Ȼ�m�$\"aSE�(9�6�+:X˷c\Z~b\�\�\�N�yK��\�D4��+W�\�w]\�a�)��a$\�Q\"ՉiI�TO\�R�F��͂}ĬD�@�F*e\�U\�	\�.b��\�*\�\���h\��\�%�²\�o��+ \r��,Y5�\"%l9�NE\�\�\�QO��e[��Uw���Y0\r\�\�^�\�j\����8�d\�W\�4+�\�-k��Ѿ\�!p�#\ZDE\r\��\�%,!\�s\�\n@{DkV\0�-M�\�f��	P�q�\�S*�\�J�Or�xcs�?�\�kvS\��\�\�D\�| nn-pG�~%o����5g��]2\�[�\�AQ�a�rMx�\0x�#\�\��\�rC\�C\�W)e?qS\0���(Df�y\�j�s9SL��\"\�\\���	UK��g;\0V\rEX\�T�PC\�/\�\\8Ws�X�\'Y\���\Z�\�w~a�Ց;iI  0D\�w\��d�\�J�o�a����b;y��\'-q��M���}lJ�\�dj���t�+h$OfUtK7��~��	Lh���\�\n�[EP�n�6n�U\�\�t�KʦZ\Z_�\Zy��\0�z�D��ӐZ��x�#�@)\�:CWOP#�\�q�+�d>\n��\�E���\�w-D�6��EC�{q=\�FW��\�b\�u��\no��bp�\�\�U	\�׸�~��^=\Z�׿Q�QC�A���\�\�\r�\�z�`�<\�no\�\�ct\�!U\�5�\�s�-C@\�����\0A�cmQ\�M�)�)�;������A����ײ<\�MT�͓�,�+B\�\��#�b\�J\�XhWi~ ��! ��]��f�\0�y�w&�\�%�B\�\��YS\��A�]���H5��\�\��lK��\�(\�W\���P�����\�*Yo�O�����ܮ\�-b\"�ܽ\�GC?��\�sq\���\�\�\�4n\n�\� ޹�l-\��d�ie �Ar\�ޝJ0[̾aS�F�E\�%�6�<aP	] ��\�2�;��@��\�\�˩\�,@h=,�[\�T�W����[Kx\n�j��HYL��;l|þ�)\�\�pFl�ռʍ��Rڰ�cR��\�p\��[K#��P\�7\�m��l\�\�tI�=���\�rl]��-\�\��\�\�xE_qM�\���M\�,F�QQY�Nfk\�&{�M�#Ġ/�N��UB\�\�\�8�\0l2�\�e�9�\�B+������\�7\�_�\�#X\�\�@Y)X�L���d\�p~�	X\�Ad����Zຈ�EG�\�o\�\�e|DQC}C�J�(�\�9X\�\�\�*�\��9\�X-�\�\�iő�\�\r�]���2:F\n]�12�\�L�!ip|���7	\�\�u,\�0\�\�}GH�\��j���]�K��x\����쀮_�-)\�6�-]d�\�QV��\�	\�\�aA��\"�Jk�\��Q��\�G�%LL�\�{u\'\��|�ю9[�;�q8\n��h���\�@\�i�2�\�s9�K�*�D9G\�)�>	\�$��\�p�4�@\�7�Jݛ8\�m�T�\\r�.\�4k��nTw\�ʦ\��-*�~#\�_sZ\�\�\Z AJ4��BJ�e�h�\0�a�?�ɥs\�RU�qR\�Z\n}G\�\rk6��m\�\0�\�\"�KUE\�Bn�ʂ%\�ﳘI\��\���|\�t�t\�1,\�`Ы\����\�:p�z�p��\�G-��H(���\n2(\�LE�\�\���*+eW�!�U�p7g\�ऻ�\�r�Ck\�*\�B�%)\�\0\�Ի\�3:b>G(J�=���.��x/b\�̔�V:\�����F\�16K��S\�e;NX��{�>Y�9n\�5��\n�\��5�\�\�\�0T0�d5\�\����\�C��H)�_�ku~\�\�pCU�ܽ��Tf\n���\�Z1N��9�u8�>eʞE��4�\\\Z \'�F+�\�5g\�*��\�!ϔE�\�)�\��s9+\�[�E!\�\Ze\�\�MK���:��X��<CPZ\�Vo\����r�\�.��5*-�D\�̭�9\n:��\��\�|\��\�n�K\�P\�p�eY}��b ��maS\�R���!L*i\�Q�f;\�)*qy����\�#1�\�ڎ�*44��\�b�\�G��b�͞f��Ph���\�[\��x��Io@s+LQ�ߩZ�겭�Zu���퀫\�쑫�\�8�h��7��U2\�|B��%�oR�\��q!�p�o\�ڂj�\�;i�ȁtK��3i\0.�R����.B\���\0�!�\"\��n\�\�z�n\�X�\\T���\�6 ��\�L�r\���\05!9\�5ey�P�6�jTn\�\�\�\�\�\Z\�1|J��\0\����(�L�60\�ް\����oP=\��=\�!�#U�)-\�+ؔ�	q���,�dV�,;J(\����4�ɕ��H\�y�\0H\"\�g0P(���n\�\�0B��;\���S0(�\�o�J\�\�[|2W\�8爅�\0�M�9��J\�\��\�5[�\\(v#CE>%\��9�0AP.Q��\�K\�7\�8���^.2\�QZlej\�\0���8*Q\Z\�#\�\���w�-\�g^��\�xT2 \�OP\�Z\�:��]��_\��\�e\�GͳSM]`��\��-Q\r\�\��la\�}B\"�K[\n���r�8�\nn]� \n�\"�Ag�m��\nߘ\���]\�c2˜!�\�\�%\�9rTO#BW̬��r�/~e���\�\�HZ�0\�b¢�1p�\� \�M\�\���r���\�\�\�>biTE$\ra\��g�+\�1\�\��\Z�y��\"Q�R�%j�;\�\\�V��\�0R=\�͎%�K�b\�8���1�a�V\�\��\Z\�.��\��C&\�\�����\�*��L\�*%j0G\r\�X�	D�*i\�G\�\��!W9y#+m�E]���KQ�\�\����\'ID�\Zؒ>������֊%r��\0�`�\�G��\��\�AԶ\��\0�l(Rj��W��\Z����=Z���I\0m\�\�[�P3�2�Q*>�}�\�1F\�k��g\���F�7n\�jr��%y�\�TP\�e�Ų��\�w�.���Q\�[=PV\�Z��1�F��\�nʖ�W\�Zfj3T\�9��-�D\�\�kZ�\�*M�v,.��OBپ�8\Za\�\�Y\�y\�?l�8�2�\����\��\�\�(�Z���	u\��;\����0�J .�\�y�\�P���YI��\�6��\�\�(T\n2!�r�\0���:�[H6cd\�R�\������\�dXō!\�Q\�,y�U�\"\�\�B�)\�l\n\�:��*\��?n\�\0;\0bw�f[4V]2nN\�@(u*Z�_�B����̨\��67\�(ؐKr���M\�\r\�U\�Lz�=\�`r\�\�$=��׈\����!\�f �\�ԭ�d!��/\�\\\�\�Y�B�`\0�J��\�f2\�<�\�t�+̩\�E\�4\�\�\�#/	b\"iM\����4Kx�s\n�f�uz�x\"���*ik\�{U�\�.%j\05��e)\�\'��IV�\��*8N�Hg\�U�y��40���8��0�|E;C�\�ž	\�1\�ĸ��T\n�\�Q\���G(1^\�\�Aj|1�u\Zs���\\\'V����\�7\�+\0If�\"�\�L��\�{��\�YB��,�\�8��\�,����*(4\�0\05-N\��@�\��\�\�3Nb\0|\��2\�ܹ:�\�2�\�^T_Dh�b�Q\��2#\�)��\�\�Tz���Bm�\�et\�6��KsnjY��\�%�\�l\�1ɱ��0\�d�L\�r0\�o�Y\�)G0h������-ʶU��R�B���\�^�{T�\�\��Ѫ\�\�\�!�\Z��bl\�q3�D�]�c��\�mF�Ƣ.%��$OpB��Ր\�&������\�\�\�&Tܧ�RؔŁ�tx�o\��H\�Q�\�\�Į}\��\��DX��Zʐ+ܨ�}\�\0�\�\�[	\�\�X��5\�+�\����S���_9�$e��@ܿ;\�\�B\�\�ɥ��\r��\�q\�\�*g1�i(-k8�\�ɽDj��\�2�N4�/��F�|E\�8�G\�\�;@�����,e=C.��\nޙo;\�da�Ȁ^\\\\b\"�HBǔ2\\\�.��\"�\�FK\�\�SU�\0T\�P\0��J�\�iDNQ�_r���lu~��xl��Z��@/\��\�iP.��Z\rx�UT�)K_$��=A\0DS\0Π]%\�ĤU:�r\�q���E@�-Gɟ06=A\�^R�\�}�5���\�\�^\Z(I\��]u-�<F��m\�%\�J�\�\�_Qܵ�\r\�_P���\�\�B�p4M\�?\�@�Ld�)�,�m4BmBwj\\el�Π\�#\Z�\r\�\�W\�\�k�K\���yIqE��f��\�?p��\�*σ#9���ڕ�W�Xu\Z�Y*\�\�cīF8�No��Z��b1Z$:��>\"\�\�\�\��M�\�l�:L��e�j)\�\�0-�|\�?0��\�\�\��\0\�B���1X�R\�v|�\��=R2\�\�H\�\�l�\�}G\"\�K��՗���1�\�0�˜\�\�\"m�1:�2Z\� �W�X6\�UK��@��e��\�~\"�^z��uPi��m�pg����)�:��w.6\�\�	\�\�\�U���#\�߈\�\� \�̝+v\\t�����1\�r,J>�5v1\�\��\�\�\�{\�\�*JFTÑ�X\��\�Ң4��U\ZI\��G��q\�q�N��c�\�IWK���_��\�\�x+�N_\�Hչ��]K<�i�/y��\�d/�4���GP\�ą\�l���%*\'�C�\��\�\�sK\�E�z�:�\�L6��\�&��\�p_���\�h\�\�f\��\r\�+4T\��Js4�\rQ\�\�7Elz\n�)4�k&�q\����WP�;�/�NK�\0+Qc\�,[�\�|\�ZΠ��\0��\�\�E��\�y��\01�P\�F ��C�\�\�!7�4���\�\\��em�-�VC\�TT!Z�f\�j*\�0��)�F]w���.m����\�8�� K��C|���\�^K\�ju�2 P\�y`rq(z��\�\�Y�\�dKqa�Ƃ�@~\�#\��șo\0�r�=̧2i-��\��,8\�\�\�i1;^-��ڝ�\n\�_\��\�\�J\Z\�,A�)-!�F�\�}ʡ1VX~��2\�%��\�#jT�Mu�B\�\�S\�񊘴Ŋr��@${��\�kYW���/\�%G�UmP�!E\r\�6�\�@���}��\r\����P/���&b��\�\"x���-\�qxb�\��k�\�V��CN�\�0��Q���\Z@(\�\�s�;�\�\�l\\E�a\�^��T\�]ۂ���-\���\nzbf\�\��)ʤ���\�\0�VD#\Zx�-k���Z�%\�\�Ug�jbDr�\�ܝ\�\�[N�Jl�h�f�.�B��2�\0�P\�q�Gi�\�k,u\ZV�OH���\��蘠\����\r٥�	�\0\�7^)R�g7)j D�Z/d�z���\�\�\�y�Z\�D\��\Z�\\\�^�=W�\\�ed�DJ\�W\�P�����\�\�`2�N.r+\�\�|M��۳y�,\�Ȗ�\0�@�\Z+\����^�T��T�#�&ʪ\�n�\�]��M���,{G�=杪k�O���\�n˿}o\��F��\"\��\�Aƥ4\�H(J!Ć��R;\�\�*n��	C�\��D-�\��\�k\��h4�\0\�Ӡ;\�A��\�\�WC�#�8:\�\�#\�\��y\��\0��\��S� +8��Z/�\�,��\Z�\�V�C�(7�J7\�N�iW�\�Cl~\�:F\�z��#ˊnǡ:yp��(D)�\�\�>�qZϙ\�GEWR�r�`�_�\06\�ky�\Z���\�4~k�����B�S�Rr\�8\�gԢ؝���\�\\D�Χbe\�Խ��7\�\�U�G�XT\�q\�¯\n�\�\�)y�ӓ^��*T\��FmZu-\0j��4w�\�N+�0�.�H-\nHP\Z�ľ�\�\"PτC蘖\��y%\���\�\�\��\�p\�Q� G(R�&�\n,\��{��\�#X\�:\�/��P���\�\�3\"\�栰h���a\�}P\�Qo\���� W�\�\�5�6��Sv�\�*:j.,�M�O0\�l����eH�s���.=@	V�Q�\�x�I*�ؔ\�?2\�\� (�\�\�2[oC $�@`:9������\�;W�\�\'!\�*���!%\"m���<�/\\J��%\�\��\�Nt\�\�p\�A�\"\�K�r7?�̜͋�+��mb\��ˋ�\nP\�1c\�Dx�~���\�\�_�.\�|\�\�|éM,�%S�b\�`E�J;l#�\�+I\�;!y�$�D(\r�򄢐�i\�w�m�F�V�yD\�`*�H\�k\�\�l�������\��%<Jx�v��%<Jx��\\J��#n�\�n?��3ѩ�;��\�\�F�����	�;p.5�v�\�\�_qC�\�xI\�B\�_��SP9�7��AW\�T H99H��}�n h<��\n?���@\�e�\0#���\���.<o\�,^#G�S�\0N�\�[��9�*]�>�qyz�pW����F[�\�8�\�z���\�',NULL,NULL,1,'active'),(2,'staff','1234',NULL,NULL,NULL,NULL,2,'active'),(3,'user','1234',NULL,NULL,NULL,NULL,3,'deactive'),(5,'hoanglong','f749a07b91e43ed6926756d1e987c5e2e9fd80ffc60ce2da3dcf741e523e1bfc1c1d749282d47f584e28350ef0cdfe1771721942aab990fb49c363f616a19ab5','privatekey',_binary '��T[�(�(���@�',NULL,NULL,2,'active');
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
