-- MySQL dump 10.11
--
-- Host: localhost    Database: sample
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `access_counter`
--

DROP TABLE IF EXISTS `access_counter`;
CREATE TABLE `access_counter` (
  `url` varchar(255) NOT NULL default '',
  `cnt` int(11) NOT NULL default '0',
  PRIMARY KEY  (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `access_counter`
--

LOCK TABLES `access_counter` WRITE;
/*!40000 ALTER TABLE `access_counter` DISABLE KEYS */;
INSERT INTO `access_counter` VALUES ('/sample/chap5/FrontServlet/BbsIndex',20),('/sample/chap5/FrontServlet/Top/JSP',1),('/sample/WEB-INF/jsp/chap5/index.jsp',143),('/sample/data/css/ajaxtags.css',12),('/sample/data/js/prototype.js',12),('/sample/data/js/scriptaculous/scriptaculous.js',12),('/sample/data/js/scriptaculous/builder.js',12),('/sample/data/js/scriptaculous/effects.js',12),('/sample/data/js/scriptaculous/dragdrop.js',12),('/sample/data/js/scriptaculous/slider.js',12),('/sample/data/js/scriptaculous/controls.js',12),('/sample/data/js/overlibmws/overlibmws.js',12),('/sample/data/js/overlibmws/overlibmws_crossframe.js',12),('/sample/data/js/overlibmws/overlibmws_iframe.js',12),('/sample/data/js/overlibmws/overlibmws_hide.js',12),('/sample/data/js/overlibmws/overlibmws_shadow.js',12),('/sample/data/js/ajax/ajaxtags.js',12),('/sample/data/js/ajax/ajaxtags_controls.js',12),('/sample/data/js/ajax/ajaxtags_parser.js',12),('/sample/chap5/img/prev.gif',1),('/sample/chap5/FrontServlet/Login',5),('/sample/chap5/BmFront/BmShows',21),('/sample/chap5/BmFront/BmShow',28),('/sample/WEB-INF/jsp/chap5/BmShow.jsp',28),('/sample/chap5/BmFront/BmSubmit',15),('/sample/chap5/CheckUtil.js',7),('/sample/chap5/BmFront/BmSubmitAction',15),('/sample/chap5/BmFront/BmShowTags',2);
/*!40000 ALTER TABLE `access_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_master`
--

DROP TABLE IF EXISTS `bbs_master`;
CREATE TABLE `bbs_master` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `nam` varchar(20) NOT NULL default '',
  `sdat` datetime NOT NULL default '0000-00-00 00:00:00',
  `article` text,
  `passwd` varchar(15) NOT NULL default '',
  `deleted` tinyint(1) NOT NULL default '0',
  `parent` int(11) NOT NULL default '0',
  `level` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bbs_master`
--

LOCK TABLES `bbs_master` WRITE;
/*!40000 ALTER TABLE `bbs_master` DISABLE KEYS */;
INSERT INTO `bbs_master` VALUES (1,'JavaでAjax','山本','2007-11-24 23:07:55','サーバサイドJavaで使えるAjax対応のフレームワークで、\r\nお勧めのものを教えてください。','12345',0,0,0),(2,'Re:　JavaでAjax','井上','2007-11-25 03:09:43','> サーバサイドJavaで使えるAjax対応のフレームワークで、\r\n> お勧めのものを教えてください。\r\nわたしは、DWR（Direct Web Remoting）というのを使っていますよ。\r\n\r\nhttp://getahead.org/dwr/','12345',0,1,1),(3,'Re:　JavaでAjax','鈴木','2007-11-25 09:12:19','> サーバサイドJavaで使えるAjax対応のフレームワークで、\r\n> お勧めのものを教えてください。\r\n\r\nAjaxTagsタグライブラリは如何でしょうか？\r\nhttp://ajaxtags.sourceforge.net/\r\n\r\n使い方などは「今日からつかえるサンプル集」を参考にすると\r\n良いですよ。','12345',0,1,1),(4,'Re:　Re:　JavaでAjax','山本','2007-11-26 23:13:29','> 使い方などは「今日からつかえるサンプル集」を参考にすると\r\n> 良いですよ。\r\n\r\nありがとうございます。\r\n早速、書籍を注文しました。','12345',0,3,2),(5,'MySQLの文字コードについて','佐藤','2007-11-27 11:21:35','MySQLの文字コードは、どこから設定すればよいのでしょうか？','12345',1,0,0),(6,'リファレンス本を探しています','相田','2007-11-28 09:17:16','サーバサイドJavaのリファレンス本を探しています。\r\nなるべくコンパクトで、且つ情報が充実しているもので、\r\n用例などもたくさん載っているのが希望なのですが。\r\n皆さんは、どういったものをご使用でしょうか？','12345',0,0,0),(7,'動的にPDFの帳票を作りたい','浜田','2007-11-30 23:21:02','Webでの帳票発行（PDF形式）を行いたいのですが、\r\nどこから手をつけたら良いかわかりません。\r\n簡単に作れるライブラリが幾つかあるようなのですが、\r\n何が良いでしょうか？\r\n','12345',0,0,0),(8,'データが文字化け','佐々木','2007-12-01 13:25:14','MySQLに格納したデータがブラウザから見ると文字化けしてしまいます。\r\n何を確認したら良いのでしょうか？','12345',0,0,0),(9,'Luceneについて','和田','2007-11-24 23:29:14','Luceneで全文検索のシステムを作成中なのですが、\r\nSenの辞書作成後、インデックスファイルを作成しようとすると\r\nエラーになってしまいます。\r\n同様の現象になった方は、いらっしゃいますでしょうか。\r\nまた、もし解決法がわかる方がいましたら、アドバイスをお願い致します。','12345',0,0,0),(10,'Re:　Luceneについて','原田','2007-12-02 10:35:24','> Senの辞書作成後、インデックスファイルを作成しようとすると\r\n> エラーになってしまいます。\r\n具体的なエラーメッセージは？','12345',0,9,1),(11,'Re:　リファレンス本を探しています','上野','2007-12-03 23:37:09','「Pocket詳解JSP&サーブレット辞典」（秀和システム）\r\nを使っています。','12345',0,6,1),(12,'Re:　Re:　リファレンス本を探しています','川村','2007-12-04 18:38:02','> 「Pocket詳解JSP&サーブレット辞典」（秀和システム）\r\n> を使っています。\r\nわたしも、それ、使ってますよ。\r\n結構コンパクトで良いですよ。','12345',0,11,2),(13,'Re:　データが文字化け','なみ','2007-11-29 16:01:23','> MySQLに格納したデータがブラウザから見ると文字化けしてしまいます。\r\n> 何を確認したら良いのでしょうか？\r\n返信','123',1,8,1),(14,'Re:　データが文字化け','なみ','2007-11-29 16:59:08','> MySQLに格納したデータがブラウザから見ると文字化けしてしまいます。\r\n> 何を確認したら良いのでしょうか？','123',0,8,1),(15,'Re:　動的にPDFの帳票を作りたい','なみ','2007-11-30 01:00:44','> Webでの帳票発行（PDF形式）を行いたいのですが、\r\n> どこから手をつけたら良いかわかりません。\r\n> 簡単に作れるライブラリが幾つかあるようなのですが、\r\n> 何が良いでしょうか？\r\n> ','123',0,7,1),(16,'Jakarta Taglibsについて','藤井','2007-12-02 09:18:05','Jakarta Taglibsって何ですか？','123',0,0,0),(17,'空白を除去したい','山口','2007-12-02 21:19:54','文字列の前後から空白を除去したいのですが、\r\nJSTLのFunctionsタグライブラリで可能ですか？','1234',0,0,0),(18,'デプロイメントディスクリプタ','徳永','2007-12-03 11:10:47','デプロイメントディスクリプタについて詳しいサイトを知りませんか？','123',0,0,0),(19,'セッションとクッキー','ハルキ','2007-12-04 23:22:02','セッションとクッキーの使い分けが、よくわかりません。','123',0,0,0);
/*!40000 ALTER TABLE `bbs_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bm_comment`
--

DROP TABLE IF EXISTS `bm_comment`;
CREATE TABLE `bm_comment` (
  `cid` int(11) NOT NULL auto_increment,
  `bid` int(11) default NULL,
  `uid` varchar(20) default NULL,
  `comment` varchar(255) default NULL,
  `updated` datetime default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bm_comment`
--

LOCK TABLES `bm_comment` WRITE;
/*!40000 ALTER TABLE `bm_comment` DISABLE KEYS */;
INSERT INTO `bm_comment` VALUES (11,7,'admin','ASP.NETの解説、サンプルソースのダウンロード','2007-12-02 21:52:21'),(12,8,'admin','','2007-12-04 21:53:37'),(13,9,'admin','','2007-12-07 21:54:32'),(14,10,'admin','後で読む','2007-12-02 21:56:48'),(15,11,'admin','後で読む','2007-12-12 21:58:12'),(16,12,'admin','','2007-12-12 21:59:32'),(17,13,'admin','','2007-12-15 22:00:44'),(18,14,'admin','','2007-12-18 22:03:46'),(19,13,'super','','2007-12-21 22:53:33'),(20,12,'super','','2007-12-23 22:53:58'),(21,15,'super','','2007-12-21 22:54:55'),(22,16,'super','','2007-12-30 22:55:42'),(23,13,'usr','','2007-12-31 22:56:51'),(24,15,'usr','','2007-12-29 22:57:08'),(25,17,'usr','','2007-12-30 22:57:53');
/*!40000 ALTER TABLE `bm_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bm_master`
--

DROP TABLE IF EXISTS `bm_master`;
CREATE TABLE `bm_master` (
  `bid` int(11) NOT NULL auto_increment,
  `url` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `updated` datetime default NULL,
  PRIMARY KEY  (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bm_master`
--

LOCK TABLES `bm_master` WRITE;
/*!40000 ALTER TABLE `bm_master` DISABLE KEYS */;
INSERT INTO `bm_master` VALUES (7,'http://www.web-deli.com/default.aspx','WebDeli - ホーム','2007-12-02 21:52:21'),(8,'http://www.web-deli.com/rental.aspx',' レンタルサーバ情報','2007-12-04 21:53:37'),(9,'http://www.web-deli.com/tutorial.aspx?id=ASP-TTR-00049','「Ajax」って何だろう？','2007-12-07 21:54:32'),(10,'http://www.atmarkit.co.jp/fdotnet/ajaxlib/ajaxlib01/ajaxlib01_01.html','Microsoft AJAX Libraryで実践オブジェクト指向JavaScript','2007-12-08 21:56:48'),(11,'http://www.atmarkit.co.jp/fdotnet/ajaxjs/index/index.html','Ajax時代のJavaScriptプログラミング再入門','2007-12-12 21:58:12'),(12,'http://www.atmarkit.co.jp/fwin2k/operation/psh01/psh01_01.html','Windows PowerShellコマンド＆スクリプティング入門（前編）','2007-12-12 21:59:32'),(13,'http://codezine.jp/a/article/aid/1824.aspx','CodeZine：Zend Framework入門（1）','2007-12-15 22:00:44'),(14,'http://codezine.jp/a/article/aid/1287.aspx','TomcatとEclipse WTPの導入手順','2007-12-18 22:03:46'),(15,'http://www.web-deli.com/tutorial.aspx?id=ASP-TTR-00052','ASP.NET AJAX Control Toolkitインストール＆概要','2007-12-21 22:54:55'),(16,'http://www.web-deli.com/tutorial.aspx?id=ASP-TTR-00056','TextboxWatermarkコントロール（AJAX Control Toolkit）','2007-12-25 22:55:42'),(17,'http://www.web-deli.com/tutorial.aspx?id=ASP-TTR-00055','RoundedCoornersコントロール（AJAX Control Toolkit）','2007-12-29 22:57:53');
/*!40000 ALTER TABLE `bm_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bm_tag`
--

DROP TABLE IF EXISTS `bm_tag`;
CREATE TABLE `bm_tag` (
  `tid` int(11) NOT NULL auto_increment,
  `bid` int(11) default NULL,
  `tagname` varchar(50) default NULL,
  PRIMARY KEY  (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bm_tag`
--

LOCK TABLES `bm_tag` WRITE;
/*!40000 ALTER TABLE `bm_tag` DISABLE KEYS */;
INSERT INTO `bm_tag` VALUES (15,7,'ASP.NET'),(16,7,'サンプル'),(17,7,'記事'),(18,8,'ASP.NET'),(19,8,'レンタルサーバ'),(20,9,'ASP.NET'),(21,9,'Ajax'),(22,10,'ASP.NET'),(23,10,'Ajax'),(24,10,'JavaScript'),(25,11,'Ajax'),(26,11,'JavaScript'),(27,11,'プログラミング'),(28,12,'PowerShell'),(29,12,'コマンド'),(30,13,'Zend'),(31,13,'フレームワーク'),(32,13,'PHP'),(33,14,'Java'),(34,14,'WTP'),(35,14,'Eclipse'),(36,15,'ASP.NET'),(37,15,'Ajax'),(38,15,'Control Toolkit'),(39,16,'ASP.NET'),(40,16,'Ajax'),(41,16,'TextboxWatermark'),(42,17,'ASP.NET'),(43,17,'Ajax'),(44,17,'Control Toolkit');
/*!40000 ALTER TABLE `bm_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `isbn` varchar(50) NOT NULL default '',
  `title` varchar(100) NOT NULL default '',
  `category` varchar(20) NOT NULL default '',
  `price` int(11) NOT NULL default '0',
  `publish` varchar(30) NOT NULL default '',
  `published` date NOT NULL default '0000-00-00',
  `memo` text NOT NULL,
  `cnt` int(11) NOT NULL default '0',
  PRIMARY KEY  (`isbn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('978-4-8399-2438-6','プログラミング ASP.NET AJAX','ASP.NET',3780,'マイコム','2007-09-22','ASP.NET AJAX 1.0、ASP.NET AJAX Control Toolkit対応。',65000),('978-4-7981-1363-0','10日でSQL Server 2005入門教室','データベース',2940,'正栄社','2007-09-19','自分で動かして確かめながら、SQL Server2005の機能をがっちり学べる入門書です。',37000),('978-4-7981-1427-9','Visual Studio 2005でいってきます','ASP.NET',2520,'正栄社','2007-07-31','Visual Studio 2005でASP.NETアプリケーション開発を行う入門書。データベースはSQL Server 2005 ExpressEditionを使用。',20000),('978-4-7980-1669-6','Pocket詳解JSP＆サーブレット辞典','JSP/サーブレット',2310,'秀和システム','2007-05-30','サーバサイドJavaに必要な技術情報をコンパクトに凝縮したリファレンス本。基本構文はもちろん、注意／参考／参照などで該当メンバのみならず 関連する機能についても詳しく解説。',32000),('978-4-7980-1616-0','今日からつかえるASP.NET 2.0サンプル集','ASP.NET',3360,'秀和システム','2007-03-29','入門書だけでは身につかなかったASP.NET 2.0の実践的な使い方をサンプルアプリケーションを通じて学びましょう。アプリケーション作成の基礎TIPSからデータベース連携、話題のWeb APIやASP.NET AJAXを利用したWeb 2.0的テクニックまで、CD-ROMと連動した実用サンプルが満載。',15000),('978-4-7981-1257-2','独学ASP.NET2.0','ASP.NET',4179,'正栄社','2007-02-20','具体的なWebアプリケーションを自ら作成しながら、基礎から応用までを実体験。イベントドリブン、サーバコントロール、データベース連携、Web.configなどなど挿絵入りで詳しく紹介。解説、例題、練習問題という3ステップの学習メソッドできっちり身につけられます。',23000),('978-4-7981-1230-5','ASP.NETリファレンス','ASP.NET',3129,'正栄社','2007-02-13','ASP.NETが提供する豊富なサーバコントロールを、サンプルを交えてわかりやすく解説したリファレンス本。目的引きで構成されており、索引と併用すれば、知りたいことがすぐにわかる。',25000),('978-4-8399-2188-0','MySQL逆引きリファレンス','データベース',2730,'マイコム','2006-12-01','MySQLのインストールからサーバ管理、データ操作まで体系的に詳しく解説。最新バージョン5.0に対応。新機能ビュー／ストアドプロシージャ／ストアドファンクション／トリガも掲載。わかりやすい用例つきで、サンプルデータはサポートサイトより入手可能。',80000),('978-4-7981-1062-2','10日でASP.NET2.0入門教室','ASP.NET',2940,'正栄社','2006-08-03','1レッスンごと実際に自分でサンプルを作成しながら、じっくり基礎から学べます。丁寧な解説と豊富な挿絵、動作画面が嬉しい構成。。',62000),('978-4-7981-1070-7','始めようXML DB','XML',3780,'正栄社','2006-04-10','ネイティブXMLデータベースの代表格「NeoCoreXMS」の無償体験版「Xpriori」でXMLDBの世界を体験しよう。',75000),('978-4-8833-7491-5','SQLのドリル','データベース',2940,'ホシム','2006-03-27','とにかくSQLを繰り返し書いて、実践力を身につけるドリル。計算力も漢字力も、そしてSQL力も同じ。繰り返しの練習が基礎力を養います。。',26000),('978-4-7980-1270-4','Pocket詳解PHP辞典','PHP',2520,'秀和システム','2006-03-24','コンパクトなのに充実の情報量。PHP利用者必携のリファレンス。最新バージョンに対応し、機能引きの目次で目的のページがすぐに引けます。',30000),('978-4-7981-0981-7','独学PHP','PHP',3360,'正栄社','2006-01-23','サーバーサイドプログラミングの基礎からオブジェクト指向、またデータベース連携やPEAR、Smartyなどの定番ライブラリまでを詳しく解説。\n。',11000);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
CREATE TABLE `contents` (
  `mid` varchar(20) NOT NULL,
  `title` varchar(100) default NULL,
  `keywd` varchar(50) default NULL,
  `descript` varchar(100) default NULL,
  `role` varchar(100) default NULL,
  `skip` bit(1) default NULL,
  PRIMARY KEY  (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES ('BbsAdmin','管理者用メンテナンス','管理, 認証','管理者専用のメンテナンス画面です。','',0),('BbsAdminAction','','','','',0),('BbsDelete','記事の削除','削除','記事の削除を行います。','',1),('BbsDeleteAction','','','','',0),('BbsDisplay','個別記事の表示','個別記事, 表示','個別記事の閲覧画面です。','',0),('BbsIndex','Q&A掲示板','メイン, トップ, スレッド','掲示板のメイン画面。新着順にスレッド表示します。','',1),('BbsNew','新規投稿','新規, 投稿, 作成','記事の新規投稿を行います。','',1),('BbsNewAction','','','','',0),('BbsRes','記事の返信','返信','返信記事の書き込みを行います。','',1),('BbsSearch','記事の検索','検索, サーチ','記事の検索を行います。','',0),('BmShow','','','','',0),('BmShows','ブックマーク一覧','ブックマーク, 一覧, 表示','ブックマークを表示します。','',1),('BmShowTag','','','','',0),('BmShowTags','タグの表示','タグ, 表示','タグを表示します。','',1),('BmSubmit','ブックマーク','ブックマーク, お気に入り','ブックマークのメインメニューです。','',1),('BmSubmitAction','','','','',0),('Login','ログイン','ログイン','ログイン処理を行います。','',1),('LoginError','ログインエラー','ログイン, エラー','ログインエラー画面です。','',1),('MngIndex','資産管理システム','資産管理, メイン, トップ','資産管理システムのメインメニューです。','',1),('MngMenu1','新規資産登録','新規, 資産, 登録','新規資産登録を行います。','administrator',1),('MngMenu2','既存資産更新','既存, 資産, 更新','既存資産の更新を行います','supervisor',1),('MngMenu3','資産検索','資産, 検索, サーチ','既存資産の検索を行います。','user',1),('MngMenu4','資産管理ログアウト','ログアウト','資産管理システムからのログアウト処理を行います。','user',0),('MngNew','','','','administrator',0),('MngSearch','','','','user',0),('MngUpdate','','','','supervisor',0),('ScheDay','登録','予定, 登録','スケジュールを登録します。','',1),('ScheDelete','','','','',0),('ScheIndex','スケジュール管理','スケジュール, メイン','Sche Descript','',0),('ScheSearch','スケジュール検索','予定, 検索, サーチ','スケジュールの検索を行います。','',1),('ScheUpdate','','','','',0),('ScheUtility','スケジュールデータのダウンロード','予定、 データ, ダウンロード','スケジュールデータをダウンロードします。','',0),('Top','TEST','Keywd00','Descript00','',0);
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gmap`
--

DROP TABLE IF EXISTS `gmap`;
CREATE TABLE `gmap` (
  `mid` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `url` varchar(255) default NULL,
  `axisx` float default NULL,
  `axisy` float default NULL,
  `description` text,
  PRIMARY KEY  (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gmap`
--

LOCK TABLES `gmap` WRITE;
/*!40000 ALTER TABLE `gmap` DISABLE KEYS */;
INSERT INTO `gmap` VALUES (1,'東京ディズニーランド','http://www.tokyodisneyresort.co.jp/tdl/',139.881,35.6325,'本家アメリカ以外で初めて開園したディズニーランドです。'),(2,'旭山動物園','http://www5.city.asahikawa.hokkaido.jp/asahiyamazoo/',142.482,43.7688,'行動展示で有名な旭川市にある動物園です。。'),(3,'ユニバーサル・スタジオ・ジャパン','http://www.usj.co.jp/',135.432,34.6665,'大阪にあるテーマパークです。'),(4,'スペースワールド','http://www.spaceworld.co.jp/',130.812,33.8737,'日本初の宇宙テーマパークです。。'),(5,'沖縄美ら海水族館','http://www.kaiyouhaku.com/',127.877,26.6940,'沖縄にある世界一を誇る水族館です。');
/*!40000 ALTER TABLE `gmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `id` int(11) NOT NULL default '0',
  `url` varchar(100) NOT NULL default '',
  `icon` varchar(100) NOT NULL default '',
  `title` varchar(50) NOT NULL default '',
  `keyword` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `nextId` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` VALUES (1,'chap0-1.jsp','star1.gif','老樹の城砦1','老樹,城','闇果つる古代王国アレスィアの累々たる血脈、そして忌まわしき歪んだ歴史の象徴たる「潜争」とは？新シリーズ「緑翳の聖域」、ここにスタート。',2),(2,'chap0-2.jsp','star2.gif','老樹の城砦2','老樹,城','永き歴史のひずみはすべてここにある。古代王国アレスィアの右の重鎮サルニュダーサ公、左の重鎮ログレシア公の、呪われた婚礼のおとない。そして、歴史の歯車は緩やかに回りだす。',3),(3,'chap1-1.jsp','star3.gif','紅月の逢瀬1','逢瀬,紅月','紅き月がサルニュダーサの城にかかるとき、森はざわめき、山は戦慄する。人の営みを懐に押し隠し、アレスィアの夜が異なる旋律をつむぎだすのを、人はいまだ知らぬ。',4),(4,'chap1-2.jsp','star4.gif','紅月の逢瀬2','逢瀬,紅月','陰謀のログレシア公ウェルダ、狂喜の花嫁アルテスィア、そして、暗躍の翳法師。月の細き紅の光が鈍く城を照らし、次第と一点に交わっていくとき、神は歴史の一頁を繰った。',5),(5,'chap1-3.jsp','star5.gif','紅月の逢瀬3','逢瀬,紅月','サルニュダーサ公の死。哄笑の翳法師。狂喜の花嫁が紡ぎ出す拙い旋律は、古代王国アレスィアの鎮魂歌なのか。ログレシア公ウェルダの蒼き双眸は、今焦点を結ぶ。',0);
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ml_master`
--

DROP TABLE IF EXISTS `ml_master`;
CREATE TABLE `ml_master` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `body` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ml_master`
--

LOCK TABLES `ml_master` WRITE;
/*!40000 ALTER TABLE `ml_master` DISABLE KEYS */;
INSERT INTO `ml_master` VALUES (1,'テスト','テストです。');
/*!40000 ALTER TABLE `ml_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ml_usr`
--

DROP TABLE IF EXISTS `ml_usr`;
CREATE TABLE `ml_usr` (
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ml_usr`
--

LOCK TABLES `ml_usr` WRITE;
/*!40000 ALTER TABLE `ml_usr` DISABLE KEYS */;
INSERT INTO `ml_usr` VALUES ('sample2@localhost'),('sample3@localhost');
/*!40000 ALTER TABLE `ml_usr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mng_master`
--

DROP TABLE IF EXISTS `mng_master`;
CREATE TABLE `mng_master` (
  `id` varchar(10) NOT NULL default '',
  `nam` varchar(50) default NULL,
  `fnum` varchar(50) default NULL,
  `depart` varchar(20) default NULL,
  `plac` varchar(30) default NULL,
  `dat` date default NULL,
  `mem` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mng_master`
--

LOCK TABLES `mng_master` WRITE;
/*!40000 ALTER TABLE `mng_master` DISABLE KEYS */;
INSERT INTO `mng_master` VALUES ('101-000003','業務用PC','PC9000/10T','資材','302オフィス','2008-01-20','山田M管理'),('101-000041','カードリーダ','SR2003','資材','OCRルーム','2007-12-12','山浦S管理'),('101-000040','複合プリンタ','SMLP-99','資材','通路キャビネット','2007-11-11','山浦S管理'),('101-000023','会議用テーブル','TABLE1','資材','502会議室','2007-11-10','山浦S管理'),('101-000022','移動書庫','SHOKO2','資材','サイドP','2007-12-21','萩本S管理'),('101-000021','移動書庫','SHOKO1','資材','サイドS','2008-01-15','萩本S管理'),('101-000020','メディアボード','E32-490-9898','資材','905会議室','2006-03-01','萩本S管理'),('101-000045','ディスクアレイ装置','DR200-XR','システム','サーバ室','2007-08-06','浜島S管理'),('101-000036','業務用PC','PC9001/10U','システム','401オフィス','2007-08-23','浜島S管理'),('101-000035','日本語カラーシリアルプリンタ','CSP5200PR','システム','XYZビル4F','2007-12-07','浜島S管理'),('101-000034','オフィスプロセッサ','OP5200','システム','サーバ室','2007-12-06','浜島S管理'),('101-000012','UNIXサーバ','NX4800-J','システム','システムセンタ','2007-10-01','浜島S預かり'),('101-000011','NTサーバ（部門用）','N8500-160B','システム','サーバ室','2007-06-07','大橋S管理'),('101-000002','無停電電源装置','DGN-58-A','システム','OCRルーム','2007-12-18','川端氏管理'),('101-000000','オフィスプロセッサ','OP5200-98','システム','サーバ室','2007-08-15','川端氏管理'),('101-000039','サーマルプリンタ','SMLP-00','製造','行方不明中','2007-09-19','小野氏保管'),('101-000033','ワークステーション','OP5200-98','製造','サーバ室','2007-11-21','小野氏保管'),('101-000032','ワークステーション','OP5200-98','製造','サーバ室','2007-12-22','小野氏保管'),('101-000029','日本語ラインプリンタ','LN23-JX-00','製造','XCビル','2007-08-03','小野氏保管'),('101-000015','ラインプリンタ','PC-KRT800','製造','OCRルーム','2008-01-10','本多S保有'),('101-000014','業務用PC','PC9100/11B','製造','武蔵工場','2008-02-03','横井T'),('101-000009','業務用PC','PC5800/10T','製造','海外工場にて使用','2007-02-10','韓国鈴木Ｋ'),('101-000007','業務用PC','PC5800/80','製造','管理課保管','2008-02-04','小野氏保管'),('101-000006','業務用PC','PC5800/13TA','製造','製造部キャビネット保管','2008-01-13','営業部より融通'),('101-000048','タイプライター','TW2007/XZ','総務','製造部設置','2007-12-10','小野K管理'),('101-000047','OHP','OHP','総務','総務部キャビネット','2007-01-01','山田左脇'),('101-000044','投影型フルカラー液晶','PC-PJ600','総務','移動書庫内','2007-08-08','漆原K保有'),('101-000038','ラインプリンタ','LNPRT-00-X','総務','ＯＣＲルーム','2007-07-02','漆原K保有'),('101-000027','照明回路スイッチ','SWT01','総務','601会議室照明スイッチ部分','2007-09-07','漆原K保有'),('101-000026','排煙口','OTHER','総務','802会議室天井','2007-10-17','漆原K保有'),('101-000025','スチールパーティション','PART1','総務','503会議室','2007-12-29','漆原K保有'),('101-000024','ウォールキャビネット','CABI1','総務','906会議室前','2007-12-01','漆原K保有'),('101-000019','応接セット','OUSETSU','総務','支配人室','2008-01-25','小野氏管理'),('101-000018','UNIXサーバ','NX4800-JD','総務','システム管理センタ','2007-07-16','松岡K保持'),('101-000017','NTサーバ','N8500-140K','総務','システム管理室','2007-06-18','松岡K保持'),('101-000016','カードリーダ','K7500SR','総務','行方不明中','2007-03-05','川村S預かり'),('101-000010','液晶プロジェクタ','PC-PJ600','総務','総務部裏倉庫','2007-05-13','漆原K保有'),('101-000001','ファックス装置','FAX-DX6800','総務','総務部業務FAX','2007-04-21','川端氏管理'),('101-000004','業務用PC','PC8000/15T','技術','301オフィス','2006-01-03','ユーザ田中S'),('101-000005','業務用PC','PC5800/17TE','技術','302オフィス','2007-10-08','営業部より融通'),('101-000008','業務用PC','PC8000/95','技術','管理課保管','2007-03-22','ユーザ井上S'),('101-000013','プリンタ','PC-PRT500','技術','技術管理グループ使用','2008-01-09','鎌本B専用'),('101-000030','オフィスプロセッサ','OP5200-98','技術','335会議室キャビネット','2007-12-04','田中S管理'),('101-000031','日本語ラインプリンタ','LNPRT-00-X','技術','オフィス500','2007-06-28','田中S管理'),('101-000037','オフィスプロセッサ','OP5200','技術','サーバ室','2007-07-08','田中S管理'),('101-000042','マルチポートFAX','MP200-0-1X','技術','サーバ室','2007-10-10','田中S管理'),('101-000043','光ディスク装置','KNK-1312-DA','技術','OCRルーム','2007-09-09','田中S管理'),('101-000046','複合プリンタ','SMLP-98','技術','技術部内','2007-03-03','田中S管理');
/*!40000 ALTER TABLE `mng_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mng_pmaster`
--

DROP TABLE IF EXISTS `mng_pmaster`;
CREATE TABLE `mng_pmaster` (
  `id` varchar(10) default NULL,
  `ip` varchar(15) default NULL,
  `pnum` varchar(8) default NULL,
  `memory` int(11) default NULL,
  `hdd` int(11) default NULL,
  `mem` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mng_pmaster`
--

LOCK TABLES `mng_pmaster` WRITE;
/*!40000 ALTER TABLE `mng_pmaster` DISABLE KEYS */;
INSERT INTO `mng_pmaster` VALUES ('101-000003','10.2.109.200','ZZUI12',1024,150,'DVD-RW機器増設'),('101-000004','10.2.109.201','ZZUI13',2048,300,'DVD-RW機器増設');
/*!40000 ALTER TABLE `mng_pmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mng_usr`
--

DROP TABLE IF EXISTS `mng_usr`;
CREATE TABLE `mng_usr` (
  `uid` varchar(10) NOT NULL default '',
  `passwd` varchar(20) NOT NULL default '',
  `unam` varchar(50) default NULL,
  `depart` varchar(50) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mng_usr`
--

LOCK TABLES `mng_usr` WRITE;
/*!40000 ALTER TABLE `mng_usr` DISABLE KEYS */;
INSERT INTO `mng_usr` VALUES ('admin','admin','システム管理者','システム'),('super','super','部門管理者','総務'),('usr','usr','一般ユーザ','製造');
/*!40000 ALTER TABLE `mng_usr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mng_usr_role`
--

DROP TABLE IF EXISTS `mng_usr_role`;
CREATE TABLE `mng_usr_role` (
  `uid` varchar(10) NOT NULL default '',
  `role` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`uid`,`role`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mng_usr_role`
--

LOCK TABLES `mng_usr_role` WRITE;
/*!40000 ALTER TABLE `mng_usr_role` DISABLE KEYS */;
INSERT INTO `mng_usr_role` VALUES ('admin','administrator'),('admin','supervisor'),('admin','user'),('super','supervisor'),('super','user'),('usr','user');
/*!40000 ALTER TABLE `mng_usr_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `pid` int(11) NOT NULL auto_increment,
  `pname` varchar(100) default NULL,
  `last_updated` date default NULL,
  `data` blob,
  `content_type` varchar(50) default NULL,
  `category` varchar(10) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_answer`
--

DROP TABLE IF EXISTS `quest_answer`;
CREATE TABLE `quest_answer` (
  `qid` varchar(10) NOT NULL default '',
  `answer_id` int(11) NOT NULL default '0',
  `answer_title` varchar(100) default NULL,
  `cnt` bigint(20) default NULL,
  PRIMARY KEY  (`qid`,`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quest_answer`
--

LOCK TABLES `quest_answer` WRITE;
/*!40000 ALTER TABLE `quest_answer` DISABLE KEYS */;
INSERT INTO `quest_answer` VALUES ('Browser',1,'Internet Explorer ',100),('Browser',2,'Netscape',30),('Browser',3,'Firefox',50),('Browser',4,'Opera',10),('Browser',5,'その他',10),('Mailer',1,'Outlook Express ',100),('Mailer',2,'Outlook',80),('Mailer',3,'Becky! Internet mail',40),('Mailer',4,'Apple mail',10),('Mailer',5,'その他',10);
/*!40000 ALTER TABLE `quest_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_master`
--

DROP TABLE IF EXISTS `quest_master`;
CREATE TABLE `quest_master` (
  `qid` varchar(10) NOT NULL,
  `qtitle` varchar(255) default NULL,
  PRIMARY KEY  (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quest_master`
--

LOCK TABLES `quest_master` WRITE;
/*!40000 ALTER TABLE `quest_master` DISABLE KEYS */;
INSERT INTO `quest_master` VALUES ('Browser','ご使用のブラウザは何ですか？'),('Mailer','ご使用のメールソフトは何ですか？');
/*!40000 ALTER TABLE `quest_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sche_category`
--

DROP TABLE IF EXISTS `sche_category`;
CREATE TABLE `sche_category` (
  `id` int(11) NOT NULL default '0',
  `cnam` varchar(20) default NULL,
  `pic` varchar(15) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sche_category`
--

LOCK TABLES `sche_category` WRITE;
/*!40000 ALTER TABLE `sche_category` DISABLE KEYS */;
INSERT INTO `sche_category` VALUES (1,'会議','kaigi.gif'),(2,'研修','ken.gif'),(3,'作業','pen.gif'),(4,'私用','pri.gif'),(5,'外出','out.gif');
/*!40000 ALTER TABLE `sche_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sche_master`
--

DROP TABLE IF EXISTS `sche_master`;
CREATE TABLE `sche_master` (
  `pid` int(11) NOT NULL auto_increment,
  `id` varchar(10) default NULL,
  `pDat` date default NULL,
  `bTim` time default NULL,
  `eTim` time default NULL,
  `pNam` varchar(100) default NULL,
  `cate` varchar(20) default NULL,
  `memo` text,
  PRIMARY KEY  (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sche_master`
--

LOCK TABLES `sche_master` WRITE;
/*!40000 ALTER TABLE `sche_master` DISABLE KEYS */;
INSERT INTO `sche_master` VALUES (1,'yyamada','2007-12-11','09:00:00','12:00:00','会議','1','取引先A社と打ち合わせ'),(6,'yyamada','2007-12-21','11:30:00','14:30:00','外出','5','B社創立記念パーティー');
/*!40000 ALTER TABLE `sche_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sche_usr`
--

DROP TABLE IF EXISTS `sche_usr`;
CREATE TABLE `sche_usr` (
  `id` varchar(10) NOT NULL default '',
  `passwd` varchar(20) default NULL,
  `nam` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sche_usr`
--

LOCK TABLES `sche_usr` WRITE;
/*!40000 ALTER TABLE `sche_usr` DISABLE KEYS */;
INSERT INTO `sche_usr` VALUES ('yyamada','123','山田祥寛'),('khonda','123','本多こずえ'),('tkawamura','123','川村智美');
/*!40000 ALTER TABLE `sche_usr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2007-12-02 14:14:06
