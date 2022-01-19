-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 Oca 2022, 14:54:13
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ecms`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_must` int(11) DEFAULT NULL,
  `blog_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `blogs`
--

INSERT INTO `blogs` (`id`, `created_at`, `updated_at`, `blog_title`, `blog_slug`, `blog_file`, `blog_must`, `blog_content`, `blog_status`) VALUES
(3, '2021-11-16 14:25:35', '2021-11-10 15:54:40', 'Su Adam', 'su-adam', '618bce36ecf15.jpg', 2, '<p>Pek &ccedil;ok bilimkurgu yazarı vardır. Bir kısmı adını tarihe altın harflerle yazdırıp unutulmazlar arasındaki yerini almıştır. Bir kısmı da unutulup gitmiştir. Ama bazı isimler var ki &uuml;n&uuml;ne rağmen adından &ccedil;ok ama &ccedil;ok sonra haberdar olunur. Rus yazar&nbsp;<em><strong>Alexander Romanovich Belyaev&nbsp;</strong></em>de (<em>1884-1942</em>) o isimlerden biri işte.</p>\r\n\r\n<p>Kendisinden yeni haberdar olanlar ona Ruslar&rsquo;ın&nbsp;<em>Jules Verne</em>&lsquo;i denmesini de kuşkuyla karşılayacaktır muhtemelen. Ancak kaleminden &ccedil;ıkan bilimkurgulara ş&ouml;yle g&ouml;z gezdirmek akla d&uuml;şen bu tip soru işaretlerini silip atacaktır. Kendisi, Jules Verne gibi okurlarının ufkunu genişleten bilimkurgusal maceralar yazarak insanlara ilham verebilmiş yazarlardan. Tabii bilimkurgusal fikirlerinin &ccedil;ıkış noktası, niteliği ve hayata ge&ccedil;irilme prensipleri bakımından Jules Verne&rsquo;den ayrılıyor. Verne okurunu Ay&rsquo;a veya denizin derinliklerine seyahate &ccedil;ıkarırken, insanlara sınırları aşabilecekleri fikrini aşılıyordu.&nbsp;<strong>Belyaev</strong>&nbsp;ise bunu bir adım daha ileri g&ouml;t&uuml;rerek, insanoğluna aşılan sınırlardan nasıl faydalanabileceğini hayal ettiriyor. Ortaya attığı fikirler -kimisi tartışmalı kimisiyse bilgi temelinde hatalı da olsa- bilimin doğayı ve bilinmezi evcilleştirmesiyle insanın yeni ufuklara yelken a&ccedil;masına dayanıyor. Fikirlerinin belli bir y&uuml;zdesi farklı metot ve disiplinlerle g&uuml;n&uuml;m&uuml;zde uygulanmaktayken, geri kalan y&uuml;zdesi ise h&acirc;len ger&ccedil;ekleştirilmeyi bekliyor. Bu da bilimsel ve kurgusal manada yazdığı ser&uuml;venlerin g&uuml;ncelliğini korunmasına kapı aralıyor.</p>', '1'),
(4, '2021-11-22 14:25:53', '2021-11-10 15:55:37', 'Ben Bir Gürgen Dalıyım', 'ben-bir-gurgen-daliyim', '618bce6427956.jpg', 3, '<p>Hasan Ali Toptaş &quot;&ccedil;ocuk aklı&quot;nın hikmet dolu bilincini bir g&uuml;rgen dalına terc&uuml;me ediyor ve insanlığımıza onun g&ouml;z&uuml;yle bakmamızı sağlıyor.<br />\r\n<br />\r\nBen Bir G&uuml;rgen Dalıyım; yemyeşil umutların, horg&ouml;r&uuml;len ufukların, kaybedilen zamanların, bitmeyen zul&uuml;m &ccedil;arklarının, ama asla s&ouml;nmeyen bir inancın hik&acirc;yesi&hellip;<br />\r\n<br />\r\n&quot;Herh&acirc;lde beni tuhaf bir kuşa benzetmişlerdi. Belki de onların g&ouml;z&uuml;nde, masallardan &ccedil;ıkıp gelmiştim ben, ne yapacağımı kestiremeden, k&ouml;y&uuml;n &uuml;st&uuml;nde &ouml;ylece, kendi hızımın i&ccedil;inde kaybolmuş&ccedil;asına u&ccedil;up duruyordum. Ola ki başka bir masala gidecektim ama, hen&uuml;z o masal yaratılmamıştı. Bu y&uuml;zden, oralarda oyalanıp vakit ge&ccedil;iriyordum.<br />\r\n<br />\r\nHi&ccedil; kuşkusuz, beni anlatacak olan masal s&ouml;ylenir s&ouml;ylenmez u&ccedil;up gidecektim.&quot;</p>', '1'),
(5, '2021-11-20 14:25:49', '2021-11-10 15:57:06', 'Beyaz Zambaklar Ülkesinde', 'beyaz-zambaklar-ulkesinde', '618bce5a89eee.jpg', 4, '<p>Bazı devletler, halk olarak korkun&ccedil; krizler ge&ccedil;irir ya da t&uuml;m&uuml;yle perişan bir hale d&uuml;şerler. Bazı uluslar ise hayatlarına iyi bird&uuml;zen kazandırırlar. Bu misallerin her ikisi de sadece devlet adamları, bakanlar, milletvekilleri i&ccedil;in &ouml;nem taşımaz; ulusun her bir &uuml;yesini de ilgilendiren meselelerdir. İster beyin g&uuml;c&uuml;yle, ister kas g&uuml;c&uuml;yle &ccedil;alışsın; b&uuml;t&uuml;n erkekler, kadınlar, yaşlılar, gen&ccedil;ler, kentliler, k&ouml;yl&uuml;ler, hep bu sorunları d&uuml;ş&uuml;nmelidir.</p>', '1'),
(7, '2021-11-11 14:25:43', '2021-11-10 15:57:42', 'Yeraltından Notlar', 'yeraltindan-notlar', '618bce4656ce6.jpg', 5, '<p>&quot;İnsan olmak, ger&ccedil;ek insan, etiyle kemiğiyle insan olmak bile ağır gelir bize. Utanırız bundan, insan olmayı y&uuml;zkarası sayarız, benzeri olmayan toplumsal birtakım insanlar olmak i&ccedil;in &ccedil;abalarız. &Ouml;l&uuml; doğmuş insanlarız biz ve uzun zamandır canlı babaların &ccedil;ocukları değiliz, giderek daha &ccedil;ok hoşlanıyoruz b&ouml;yle doğmuş olmaktan. Zevk duyuyoruz bundan. &Ccedil;ok yakın bir gelecekte bir şekilde d&uuml;ş&uuml;ncelerden doğmanın yolunu bulacağız.&quot;<br />\r\n<br />\r\nDostoyevski&#39;nin Gogol etkisinden kurtularak kendi sesiyle verdiği ilk b&uuml;y&uuml;k yapıt olan Yeraltından Notlar, Avrupa&#39;daki b&uuml;y&uuml;k varoluş&ccedil;u edebiyatı m&uuml;jdeleyen bir roman. Kitap, okuruna &quot;yeraltı&quot; diye adlandırdığı bir ruh halinden seslenen kahramanın uzun, &ccedil;ılgınca s&ouml;yleviyle başlıyor. Ardından, bu ahlak&ccedil;ı, uyumsuz, d&uuml;r&uuml;st kişinin yaşadığı bir aşağılanma olayı anlatılıyor. Y&uuml;z elli yıldır okunan ger&ccedil;ek bir başyapıt.</p>', '1'),
(13, '2021-11-27 14:26:01', '2021-11-10 15:52:44', 'Küçük Prens', 'kucuk-prens', '618bce79075b2.jpg', NULL, '<p>Yazar kendi yaşadığı bir olayı anlatmıştır. Yazarımız bir pilottur. Bir g&uuml;n Afrika &uuml;zerinde u&ccedil;arken u&ccedil;ağının motoru bozulur, zorunlu iniş yapar. Yardım isteyecek kimse yoktur. &Ccedil;&ouml;l&uuml;n ortasında yapayalnızdır.</p>\r\n\r\n<p>G&uuml;n doğarken uykusunun arasında garip, incecik bir ses duyar. Karşısında ilgin&ccedil;, minik biri durmaktadır. Bu, K&uuml;&ccedil;&uuml;k Prens&rsquo;tir. Yani yazar K&uuml;&ccedil;&uuml;k Prens adında birisiyle gelmiştir. Gezegeninde tek başına yaşamaktadır. Biri s&ouml;nm&uuml;ş ikisi hala lavlar p&uuml;sk&uuml;rten &uuml;&ccedil; tane yanardağa vardır. Ayrıca hi&ccedil;bir gezegende bulunmayan eşsiz g&uuml;zellikte bir tek de &ccedil;i&ccedil;eği vardır. K&uuml;&ccedil;&uuml;k Prens pilotumuza &ldquo;Bana bir koyun &ccedil;izer misiniz?&rdquo; diye bir soru y&ouml;neltir. Pilot K&uuml;&ccedil;&uuml;k Prens&rsquo;in bu sorusuna cevap vermek i&ccedil;in uyanmıştır. Etrafına bakınır. Şaşkındır. Ama g&ouml;rd&uuml;ğ&uuml; ger&ccedil;ektir. R&uuml;ya değildir. Pilotumuz b&uuml;y&uuml;k bir şaşkınlık i&ccedil;erisinde &ldquo;iyi resim yapmayı beceremem&rdquo; der. Bu yeteneğini b&uuml;y&uuml;klerin k&uuml;&ccedil;&uuml;kken s&ouml;ylediği s&ouml;zler y&uuml;z&uuml;nden geliştiremediğini s&ouml;yler.</p>', '1'),
(14, '2021-11-29 14:25:57', '2021-11-10 15:53:22', 'Şeker Portakalı', 'seker-portakali', '618bce6cd2bd6.jpg', NULL, '<p>Yazarlıkta karar kılıncaya kadar, boks antren&ouml;rl&uuml;ğ&uuml;nden ressam ve heykeltıraşlara modellik yapmaya, muz plantasyonlarında hamallıktan gece kul&uuml;plerinde garsonluğa kadar &ccedil;eşitli işlerde &ccedil;alışan Jose Mauro de Vasconcelosun başyapıtı Şeker Portakalı, &quot;g&uuml;n&uuml;n birinde acıyı keşfeden k&uuml;&ccedil;&uuml;k bir &ccedil;ocuğun &ouml;yk&uuml;s&uuml;&quot;d&uuml;r. &Ccedil;ok yoksul bir ailenin oğlu olarak d&uuml;nyaya gelen, dokuz yaşında y&uuml;zme &ouml;ğrenirken bir g&uuml;n y&uuml;zme şampiyonu olmanın hayalini kuran Vasconcelosun &ccedil;ocukluğundan derin izler taşıyan Şeker Portakalı, yaşamın beklenmedik değişimleri karşısında b&uuml;y&uuml;k sarsıntılar yaşayan k&uuml;&ccedil;&uuml;k Zezenin başından ge&ccedil;enleri anlatır. Vasconcelos, tam on iki g&uuml;nde yazdığı bu romanı &quot;yirmi yıldan fazla bir zaman y&uuml;reğinde taşıdığını&quot; s&ouml;yler.<br />\r\n<br />\r\nAydın Eme&ccedil;in, g&uuml;zel T&uuml;rk&ccedil;esiyle dilimize armağan ettiği Şeker Portakalının başkahramanı Zezenin b&uuml;y&uuml;d&uuml;k&ccedil;e yaşadığı ser&uuml;venleri, yazarın G&uuml;neşi Uyandıralım ve Delifişek adlı romanlarında izleyebilirsiniz.</p>', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2021_11_01_173759_create_settings_table', 1),
(16, '2021_11_05_091857_create_blogs_table', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_must` int(11) DEFAULT NULL,
  `page_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`, `page_title`, `page_slug`, `page_file`, `page_must`, `page_content`, `page_status`) VALUES
(2, '2021-11-25 15:16:44', '2021-11-10 15:59:05', 'Harry Potter 1', 'harry-potter-1', '618be3057e578.jpg', 0, '<p>K&uuml;&ccedil;&uuml;k yaşta ailesini kaybeden Harry Potter, anne (Lilly Potter) ve babasının (James potter) da mezun olduğu Hogwarts Cadılık ve B&uuml;y&uuml;c&uuml;l&uuml;k Okulu m&uuml;d&uuml;r&uuml; Albus Dumbledore tarafından kapılarına bırakıldığı g&uuml;nden beri teyzesi, eniştesi ve kuzeni Dudley ile birlikte b&uuml;y&uuml;n&uuml;n ger&ccedil;ek olduğundan dahi habersiz bir şekilde yaşamaktadır. Eniştesi, (Vernon Dursley) teyzesi (Petunia Dursley) ve kuzeni Harry&rsquo;e &ccedil;ok k&ouml;t&uuml; davranmaktadırlar ve Harry merdiven boşluğunun altındaki bir odada yaşamaktadır. &Ccedil;ok mutsuz bir &ccedil;ocukluk ge&ccedil;iren Harry&rsquo;nin 11. doğum g&uuml;n&uuml; yaklaşmaktadır.</p>\r\n\r\n<p>Bir g&uuml;n Harry&#39;ye Hogwarts&#39;dan bir kabul mektubu gelir fakat b&uuml;y&uuml;c&uuml;leri birer ucube ve utan&ccedil; kaynağı olarak g&ouml;ren eniştesi ve teyzesi Harry&#39;nin mektubu okumasına izin vermez. Fakat mektupların arkası kesilmez hatta giderek artan sayıda mektuplar gelmeye devam eder. Bir g&uuml;n evin Ş&ouml;minesinden mektup yağmaya başlar. Eniştesi evdekileri de alarak evden ayrılırlar ve &ccedil;ok uzak bir yere giderler. Denizin ortasındaki bir kayalıkta, k&uuml;&ccedil;&uuml;k bir kul&uuml;bede yaşamaya başlarlar. Bir akşam kul&uuml;beye Hagrid adında bir yarı dev gelir. Hagrid, Hogwarts Cadılık ve B&uuml;y&uuml;c&uuml;l&uuml;k Okulu&rsquo;nun anahtar sorumlusu ve bek&ccedil;isidir. Hagrid, Harry&rsquo;nin mektupları okuyamadığını &ouml;ğrenir ve Harry&#39;e her şeyi anlatır. Anne ve babası trafik kazasında &ouml;lmemişlerdir. Onlar b&uuml;y&uuml;c&uuml;d&uuml;rler ve karanlık b&uuml;y&uuml;c&uuml; Lord Voldemort tarafından &ouml;ld&uuml;r&uuml;lm&uuml;şlerdir. Harry de bir b&uuml;y&uuml;c&uuml; adayıdır. Kendisi bilmese de daha 1 yaşındayken o g&uuml;ne kadarki en b&uuml;y&uuml;k kara b&uuml;y&uuml;c&uuml; Lord Voldemort&#39;u yenmişti. Her ne kadar Voldemort &ouml;l&uuml;ms&uuml;zl&uuml;k konusunda herkesten daha fazla ilerlemiş olsa da. Harry, bug&uuml;ne kadar t&uuml;m ger&ccedil;ekleri kendisinden saklayan teyzesi ve eniştesine &ccedil;ok kızar. Hogwarts B&uuml;y&uuml;c&uuml;l&uuml;k Okuluna gitmeye karar verir. Okul &ouml;ncesi alışverişi i&ccedil;in Hagrid ile birlikte &Ccedil;atlak Kazan adlı bir bardan Diagon Yolu&rsquo;na giderler. Burada &ouml;nce b&uuml;y&uuml;c&uuml; bankası Gringotts&#39;a girerler. Annesi ve babası Harry&#39;ye bir servet bırakmıştır. Ardından bir asa, (28 santim Defne Dikeni, Anka Kuşu Teleği) b&uuml;y&uuml;c&uuml;l&uuml;k kitapları, parş&ouml;men, m&uuml;rekkep, okul c&uuml;ppesi gibi okulda ihtiyacı olacak şeyleri alırlar. Hagrid Harry&#39;ye doğum g&uuml;n&uuml; hediyesi olarak bir baykuş (karbeyazı rengindeki baykuşu Hedwig) alır.</p>', '1'),
(3, '2021-11-30 15:16:48', '2021-11-10 16:00:04', 'Harry Potter 3', 'harry-potter-3', NULL, 2, '<p>Harry bir sabah uyandığında b&uuml;t&uuml;n Dursley ailesini televizyon başında haberleri izlerken g&ouml;r&uuml;r. Haberde Sirius Black adlı azılı bir su&ccedil;lunun hapishaneden ka&ccedil;tığı s&ouml;ylenir. Vernon enişte bu sırada evlerine konuk olacak Marge halayı eve getirmek i&ccedil;in hazırlık yapmıştır. Marge hala Vernon eniştenin ablasıdır ve Harry&#39; den hi&ccedil; hoşlanmaz, her geldiğinde Harry&#39; e ve &ouml;len ailesi hakkında ileri geri konuşurdu. Harry, Vernon eniştesi kapıdan &ccedil;ıkarken Hogsmeade gezilerine katılabilmesi i&ccedil;in gerekli olan forumu imzalamasını rica eder. Fakat Vernon enişte umursamaz.</p>\r\n\r\n<p>&nbsp; &nbsp;Marge hala eve geldiğinde bavulunu yukarı taşıma işi Harry&#39; e d&uuml;şer. Harry bavulu yavaş yavaş &ccedil;ıkarır. &Ccedil;ok zor g&uuml;nler ge&ccedil;iren Harry sonunda Marge halanın evdeki son g&uuml;n&uuml; olduğu i&ccedil;in sevin&ccedil;lidir. Son akşam yemeğinde Marge hala Harry&#39; nin annesi ve babası hakkında k&ouml;t&uuml; şeyler s&ouml;yleyince Harry &ccedil;ok sinirlenir. Bilmeyerek Marge halayı bir balon gibi şişirir. Marge hala u&ccedil;maya başlar ve yavaş&ccedil;a dışarıya, g&ouml;ky&uuml;z&uuml;ne doğru u&ccedil;maya başlar. Vernon enişte Marge halayı kurtarma &ccedil;abası g&ouml;sterirken Harry bu fırsatı değerlendirip odasına &ccedil;ıkar ve bavulunu toplamaya başlar. Kapıdan &ccedil;ıkarken Vernon enişte Harry&#39; nin &ouml;n&uuml;n&uuml; kapatır ve &ccedil;ıkmasına izin vermez. Fakat Harry &ccedil;ok sinirlidir. Vernon enişteye asasını doğrultur ve yavaş&ccedil;a kapıdan dışarı &ccedil;ıkar.</p>\r\n\r\n<p>&nbsp; &nbsp;Evden birka&ccedil; sokak uzaklaşan Harry Magnolia Crescent&#39; ta bir duvarın dibine yığılır. Harry b&uuml;y&uuml; yaptığı i&ccedil;in alacağı cezayı d&uuml;ş&uuml;n&uuml;rken g&ouml;zetlendiğini hisseder. Harry karanlıkta asasını yakar ve Harry az ilerisinde g&ouml;zleri ışıldayan b&uuml;y&uuml;k bir k&ouml;pek g&ouml;rd&uuml;. Harry irkilip geriledi ve ayağı sandığına &ccedil;arpar. D&uuml;ş&uuml;ş&uuml;n&uuml; yavaşlatmak i&ccedil;in kolunu savururken asası elinden fırlar ve olanca ağırlığı ile suyoluna yığılır. Bir G&Uuml;M sesi duyulur ve karşısında b&uuml;y&uuml;k bir 3 katlı mor bir otob&uuml;s g&ouml;r&uuml;r. Otob&uuml;s&uuml;n i&ccedil;inden &ccedil;ıkan bilet&ccedil;i Harry&#39; nin bavulunu alır ve i&ccedil;eri g&ouml;t&uuml;r&uuml;r. Şaşıran Harry bir b&uuml;y&uuml;c&uuml; otob&uuml;s&uuml;n&uuml; yanlışlıkla &ccedil;ağırdığını farkeder. Otob&uuml;s&uuml;n i&ccedil;inde yataklar vardır ve aynı zamanda g&ouml;r&uuml;nd&uuml;ğ&uuml;nden daha y&uuml;ksek olduğunu g&ouml;r&uuml;r. &Ccedil;atlak Kazana gitmek isteyen Harry 11 Sickle para &ouml;der. Bilet&ccedil;i gazete okumaktadır ve televizyonda g&ouml;rd&uuml;ğ&uuml; adamın fotoğrafı gazetede de vardır. Harry bilet&ccedil;iden Sirius Black&#39; in bir lanet ile bir&ccedil;ok kişiyi &ouml;ld&uuml;rd&uuml;ğ&uuml; ve Voldemort adına &ccedil;alışan birisi olduğunu &ouml;ğrenir. Bu y&uuml;zden Azkaban Hapishanesine atılır. Azkaban Ruh Emiciler tarafından korunan &ccedil;ok g&uuml;venlikli bir yerdir. Kimse Sirius&#39; un oradan nasıl ka&ccedil;tığını bilememektedir.&nbsp;</p>', '1'),
(4, '2021-11-30 15:16:51', '2021-11-10 15:59:33', 'Harry Potter 2', 'harry-potter-2', NULL, 1, '<p>Harry&rsquo;nin doğum g&uuml;n&uuml; Dursley&rsquo;lerce kutlanmadan ge&ccedil;er. Yine de Dobby adındaki cin onu ziyaret etmiş ve okula d&ouml;nmemesi i&ccedil;in kandırmaya &ccedil;alışmıştır. Dobby, evde hasar yarattıktan sonra Bayan Dursley Harry&rsquo;yi odasına kilitler. Harry&rsquo;yi u&ccedil;an arabalarıyla gelen ve onu alıp evlerine g&ouml;t&uuml;ren Weasley kardeşler kurtarır ve onu evlerine g&ouml;t&uuml;r&uuml;rler.</p>\r\n\r\n<p>Okul kitapları i&ccedil;in alışveriş yaparken Harry ve arkadaşları yeni bir profes&ouml;r ile tanışırlar; Gilderoy Lockhart. Harry ve Ron 9 &frac34; peronundaki Hogwarts trenine yetişemeyince yine okula gitmek i&ccedil;in b&uuml;y&uuml;l&uuml; arabayı &ouml;d&uuml;n&ccedil; alırlar. Okuldaki ilk&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Quidditch\">Quidditch</a>&nbsp;&ccedil;alışmasında&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Gryffindor\">Gryffindor</a>&rsquo;lular, Draco Malfoy&rsquo;un Slytherin&rsquo;in yeni Arayıcısı olduğunu ve babasının t&uuml;m takım i&ccedil;in 2001 s&uuml;p&uuml;rgelerinden aldığını &ouml;ğrenir ve &ccedil;ok şaşırırlar. &Ccedil;alışma Malfoy&rsquo;un Hermione&rsquo;yi &quot;<em>Bulanık&quot;</em>&nbsp;(Muggle aileden gelen) şeklinde &ccedil;ağırmasıyla k&ouml;t&uuml;ye gider. Kısa bir s&uuml;re sonra Harry, Profes&ouml;r Lockhart&rsquo;a zorunlu olarak yardım eder ve &ouml;l&uuml;m konuşan kin dolu bir ses duyar.Harry, Ron ve Hermione Neredeyse Kafasız Nick&rsquo;in partisine katılırlar. Geri d&ouml;nerlerken Harry o kin dolu sesi tekrar duyar ve hademenin kedisini kara bir b&uuml;y&uuml; y&uuml;z&uuml;nden taşlaşmış olarak bulurlar. Duvarlardaki mesajda Sırlar Odası uyarısı vardır. &Ccedil;ocuklar, Profes&ouml;r Binns&rsquo;den Salazar Slytherin&rsquo;in Muggle&rsquo;lara karşı olan &ouml;nyargısını, Sırlar Odası&rsquo;nı ve onun miras&ccedil;ısını &ouml;ğrenirler. Ron bu miras&ccedil;ının Draco Malfoy olduğunu d&uuml;ş&uuml;n&uuml;r ve Hermione de &ccedil;ok&ouml;zl&uuml; iksiri i&ccedil;ip Draco&rsquo;nun arkadaşlarının kılığına girerek bir sonraki Quidditch ma&ccedil;ından &ouml;nce onunla konuşmayı &ouml;nerir. Harry&rsquo;nin kolu ma&ccedil; sırasında topun &ccedil;arpması sonucu kırılır. Lockhart&rsquo;ın b&uuml;y&uuml;s&uuml;yle de iyileşmek yerine kemikler tamamen yok olur. Harry, revirde iyileşirken Dobby tekrar ziyaret edip uyarır.O gece Colin Creevey&rsquo;e saldırdırırlar. D&uuml;ello kul&uuml;b&uuml; toplantısında Malfoy, yılan g&ouml;r&uuml;nt&uuml;s&uuml; yapar. Harry, yılana Justin&rsquo;i bırakması i&ccedil;in bağırdığı zaman herkes onun yılanlarla konuşabildiğini anlar. &Ccedil;ok ge&ccedil;meden Justin&rsquo;e de saldırırlar. Yen Yıl tatili sırasında Harry, Ron ve Hermione &ccedil;ok &ouml;zl&uuml; iksiri denerler. Harry ve Ron, Draco Malfoy&rsquo;un miras&ccedil;ı olmadığını &ouml;ğrenirler fakat Hermione yanlışlıkla kendini bir kediye d&ouml;n&uuml;şt&uuml;r&uuml;r. Harry, Mızmız Myrtle&rsquo;ın odasında boş bir g&uuml;nl&uuml;k bulur. G&uuml;nl&uuml;k bir zamanlar, Tom Riddle&rsquo;a aittir; yani okulun 50 yıl &ouml;nceki bir &ouml;ğrencisine.Sonra g&uuml;nl&uuml;k &ccedil;alınır ve Hermione ile Penelope Clearwater&rsquo;a saldırılır. Daha k&ouml;t&uuml;s&uuml;; Hagrid hapishaneye g&ouml;nderilir ve Dumbledore&rsquo;un m&uuml;d&uuml;rl&uuml;k g&ouml;revi askıya alınır. Harry ve Ron Yasak Ormana girerek Hagrid&rsquo;e yardım etmek isterler. Orman&rsquo;da dev bir &ouml;r&uuml;mcek olan Aragog&rsquo;la karşılaşırlar.Aragog onlara Hagrid&rsquo;in su&ccedil;suz olduğunu s&ouml;yler. Harry duyduğu sesin borulardan geldiğini ve dev bir yılana (Basilisk) ait olduğunu &ouml;ğrenir. Ron&rsquo;un kızkardeşi Ginny, Sırlar Odası&rsquo;na g&ouml;t&uuml;r&uuml;l&uuml;r. Bu y&uuml;zden Harry, Ron ve Profes&ouml;r Lockhart onu bulmak i&ccedil;in doğru borulara giderler. Harry, Tom Riddle yani Lord Voldemort ile karşı karşıya gelir. Voldemort, Ginny&rsquo;yi de esir almıştır. Fakat Dumbledore&#39;nun Anka Kuşu Fawkes&rsquo;in yardımıyla Harry Voldemort&rsquo;u yener.</p>', '1'),
(5, '2021-11-13 15:16:54', '2021-11-10 16:00:43', 'Harry Potter 4', 'harry-potter-4', NULL, 3, '<p><a href=\"https://tr.wikipedia.org/wiki/Harry_Potter\">Harry</a>, yaz tatilinin bir kısmını Dursley&#39;lerde ge&ccedil;irdikten sonra arkadaşı&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Ron_Weasley\">Ron&#39;un</a>&nbsp;daveti &uuml;zerine yaz tatilinin geri kalanını&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Kovuk\">Kovuk</a>&#39;ta ge&ccedil;irmeye karar verir. Kovuk&#39;ta ge&ccedil;irdiği birka&ccedil; mutlu g&uuml;n&uuml;n ardından Weasley ailesi ile birlikte (<a href=\"https://tr.wikipedia.org/wiki/Molly_Weasley\">Molly</a>&nbsp;hari&ccedil;) Quidditch D&uuml;nya Kupasını izlemeye gider.&nbsp;<a href=\"https://tr.wikipedia.org/wiki/%C3%96l%C3%BCm_yiyen\">&Ouml;l&uuml;m yiyenlerin</a>&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Muggle\">muggle</a>&#39;ları ter&ouml;rize ettiği ve Voldemort&#39;un kara işaretinin yapıldığı tantanalı bir gecenin ardından Harry Hogwarts&#39;a geri d&ouml;ner.</p>\r\n\r\n<p><a href=\"https://tr.wikipedia.org/wiki/Hogwarts\">Hogwarts</a>&nbsp;bu yıl &ouml;nemli bir b&uuml;y&uuml;c&uuml;l&uuml;k turnuvasına ev sahipliği yapmaktadır. 19. y&uuml;zyılın başından beri d&uuml;zenlenmeyen &Uuml;&ccedil;b&uuml;y&uuml;c&uuml; turnuvası&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Albus_Dumbledore\">Dumbledore&#39;un</a>&nbsp;&ccedil;abaları sonucunda Hogwarts&#39;ta d&uuml;zenlenir. Ateş kadehi denen sihirli bir nesnenin her okuldan se&ccedil;tiği bir şampiyon okulunu hayatı pahasına turnuvada temsil etmek zorundadır.&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Hogwarts\">Hogwarts</a>&#39;ı&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Cedric_Diggory\">Cedric Diggory</a>&#39;nin,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Beauxbatons\">Beauxbatons</a>&#39;u&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Fleur_Delacour\">Fleur Delacour</a>&#39;un,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Durmstrang\">Durmstrang</a>&#39;i&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Viktor_Krum\">Viktor Krum</a>&#39;un temsil ettiği yarışmaya,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Harry\">Harry</a>&nbsp;de garip bir şekilde ismi &ccedil;ıktığı i&ccedil;in (Sonradan&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Deli_G%C3%B6z_Moody&amp;action=edit&amp;redlink=1\">Deli G&ouml;z Moody</a>&nbsp;kılığındaki&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Barty_Crouch_Jr.&amp;action=edit&amp;redlink=1\">Barty Crouch Jr.</a>&#39;ın şaşırtma b&uuml;y&uuml;s&uuml; yaptığı ortaya &ccedil;ıkmıştır.)d&ouml;rd&uuml;nc&uuml; olarak katılmak zorundadır. Balo gecesinde şampiyonlar baloyu eşleriyle dans ederek a&ccedil;acaklardır ve Harry Cho&#39;ya balo i&ccedil;in dans teklif eder.&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Cho&amp;action=edit&amp;redlink=1\">Cho</a>&nbsp;ise&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Yard%C4%B1mc%C4%B1_Harry_Potter_karakterleri_listesi#Cedric_Diggory\">Cedric</a>&#39;e s&ouml;z verdiği i&ccedil;in gelemeyeceğini s&ouml;yler<a href=\"https://tr.wikipedia.org/w/index.php?title=.Ron&amp;action=edit&amp;redlink=1\">.Ron</a>&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Hermione\">Hermione</a>&#39;nin onunla beraber baloya geleceğine kesin g&ouml;z&uuml;yle bakmaktadır fakat&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Hermione\">Hermione</a>&nbsp;&uuml;nl&uuml;&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Quidditch\">Quidditch</a>&nbsp;oyuncusu ve&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Durmstrang\">Durmstrang</a>&#39;ı temsil eden şampiyon&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Viktor_Krum%27&amp;action=edit&amp;redlink=1\">Viktor Krum&#39;la</a>&nbsp;baloya katılınca&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Ron\">Ron</a>&nbsp;yanıldığını anlamıştır ve &ccedil;ok kıskanmıştır. Hem Harry hem de Ron baloya katılacak birini bulamadıklarını&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Gryffindor\">Gryffindor</a>&#39;un ortak salonunda konuşurlarken&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Parvati\">Parvati</a>&nbsp;ve&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Lavender&amp;action=edit&amp;redlink=1\">Lavender</a>&#39;ı g&ouml;r&uuml;rler ve Harry parvatiye baloda onun eşi olmasını teklif eder, Lavender&#39;in Ron&#39;a eşlik edip edemeyeceğini sorar. Parvati de Harry ile birlikte gelebileceğini ve Lavender&#39;ın başka birine s&ouml;z verdiğini, ama kardeşi&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Padma&amp;action=edit&amp;redlink=1\">Padma</a>&#39;nın Ron&#39;la gelebileceğini s&ouml;yler. &Uuml;&ccedil;b&uuml;y&uuml;c&uuml; turnuvasının ilk g&ouml;revinde ne olacağını bilmeyen Harry Delig&ouml;z Moody&#39;nin kılığına girip Hagrid&#39;i ilk g&ouml;revde ejderhaların olacağını s&ouml;ylemesi i&ccedil;in d&uuml;rt&uuml;kleyen Barty Crouch sayesinde &ouml;ğrenir. Sonra bunun Fleur ve Viktor&#39;un da bildiğini &ouml;ğrenince haksızlık olmasın diye Cedric&#39;e de s&ouml;yler. İlk g&ouml;revde ejderhayla savaşmak i&ccedil;in Hermione&#39;yle birlikte &ccedil;ağırma b&uuml;y&uuml;s&uuml; &ccedil;alışır. G&ouml;rev esnasında ateşoku s&uuml;p&uuml;rgesini &ccedil;ağırır ve ejderhanın dikkatini dağıtıp u&ccedil;arak ejderhaların yumurtasını alır. Alırken yaralandığı i&ccedil;in puanı kırılır. Cedricle ikisi aynı puanla birinci olurlar. Daha sonra ikinci g&ouml;revin yumurtanın i&ccedil;inde olduğu s&ouml;ylenir. Yine Barty Crouch&#39;un Cedric&#39;i d&uuml;rt&uuml;klemesiyle Cedric sınıf başkanı banyosundaki deniz kızı tablosundan ikinci g&ouml;revi &ouml;ğrenir ve minnet borcunu &ouml;demek i&ccedil;in ikinci g&ouml;revi nasıl bulacağını Harry&#39;e s&ouml;yler. Cedric Harry&#39;e sınıf başkanlarının banyosuna yumurtayla beraber gidip banyo yapmasını s&ouml;yleyinca Harry dalga ge&ccedil;tiğini sanır ama yine de banyoya gider. Gizemi &ccedil;&ouml;zer. İkinci g&ouml;revde Hogwarts&#39;ın arazisindeki g&ouml;le gidip dalmak ve g&ouml;l&uuml;n dibindeki deniz halkından sevdiği kişiyi kurtarmaktır. Harry ne kadar araştırsada g&ouml;l&uuml;n dibinde bir saat nasıl kalabileceğini bulamaz. G&ouml;revden &ouml;nceki gece Hemione&#39;yi ve Ron&#39;u Profes&ouml;r Mcgonagall &ccedil;ağırır. B&ouml;ylece Harry tek başına yine bir şey bulamaz. G&ouml;revden &ouml;nceki gece Harry uyuyakalır ve (yine Barty Crouch&#39;un d&uuml;rt&uuml;klemesiyle) Dobby onu g&ouml;reve 10 dakika kala uyandırır ve galsamotunu verir. G&ouml;le girmeden &ouml;nce galsamotunu yutmasını s&ouml;yler. Harry g&ouml;le girmeden &ouml;nce galsamotunu yutar ve birden solunga&ccedil;ları olur.</p>', '1'),
(7, '2021-11-16 21:00:00', '2021-11-10 16:01:14', 'Harry Potter 5', 'harry-potter-5', NULL, 4, '<p><a href=\"https://tr.wikipedia.org/wiki/Hogwarts_Cad%C4%B1l%C4%B1k_ve_B%C3%BCy%C3%BCc%C3%BCl%C3%BCk_Okulu\">Hogwarts Cadılık ve B&uuml;y&uuml;c&uuml;l&uuml;k Okulu</a>&#39;nda beşinci yılını bekleyen Harry Potter, Dursley ailesiyle ge&ccedil;irdiği yaz tatili boyunca ne sınıf arkadaşlarından ne de en yakın dostları&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Ron_Weasley\">Ron Weasley</a>&nbsp;ve&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Hermione_Granger\">Hermione Granger</a>&#39;dan tek bir mektup almıştır. Bu y&uuml;zden Harry i&ccedil;in yaz uzun ve yalnız ge&ccedil;miştir.</p>\r\n\r\n<p>Yaz tatili i&ccedil;in teyzesi ve eniştesi ile birlikte kalırken ruh emicilerin saldırısına uğrar. Harry kendisini ve kuzeni&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Dursley_ailesi#Dudley\">Dudley</a>&#39;i koruyabilmek i&ccedil;in bir&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Patronus\">Patronus</a>&nbsp;b&uuml;y&uuml;s&uuml; yapar. Bu olaydan hemen sonra Harry, teyzesinin komşusu Arabella Figg&#39;in bir&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Kofti\">kofti</a>&nbsp;olduğunu ve Dumbledore tarafından onu korumak i&ccedil;in g&ouml;revlendirildiğini &ouml;ğrenir. Gen&ccedil; Yaşta B&uuml;y&uuml;c&uuml;l&uuml;ğ&uuml;n Makul Kısıtlanması Kararnamesi&#39;nden dolayı&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Sihir_Bakanl%C4%B1%C4%9F%C4%B1\">Sihir Bakanlığı</a>, Harry&#39;yi bir duruşmaya &ccedil;ağırır ve belki de Harry&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Hogwarts\">Hogwarts</a>&#39;tan atılacaktır.</p>\r\n\r\n<p>Bir gece Dumbledore emriyle aralarında Alastor &lsquo;Deli-G&ouml;z&rsquo; Moody, Kingsley Shacklebolt ve&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Nymphadora_Tonks\">Nymphadora Tonks</a>&rsquo;un da bulunduğu bir grup Seherbaz (Kara b&uuml;y&uuml;c&uuml; avcıları) Harry&rsquo;nin kapısına gelip, Dumbledore&rsquo;un, Sihir Bakanlığı&rsquo;nda resmi bir temyiz duruşması ayarladığını s&ouml;yleyerek, gen&ccedil; b&uuml;y&uuml;c&uuml;y&uuml; apar topar, vaftiz babası Sirius&#39;un Grimmauld Meydanı 12 numaradaki evine g&ouml;t&uuml;r&uuml;rler. Bu ev aynı zamanda&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Z%C3%BCmr%C3%BCd%C3%BCanka_Yolda%C5%9Fl%C4%B1%C4%9F%C4%B1\">Z&uuml;mr&uuml;d&uuml;anka Yoldaşlığı</a>&#39;nın gizli kararg&acirc;hıdır. Sirius toplantılar i&ccedil;in ailesinin evini Z&uuml;mr&uuml;d&uuml;anka Yoldaşlığı&rsquo;na a&ccedil;mıştır. Harry, Moody&#39;nin g&ouml;sterdiği eski fotoğrafla annesiyle babasının da&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Z%C3%BCmr%C3%BCd%C3%BCanka_Yolda%C5%9Fl%C4%B1%C4%9F%C4%B1\">Z&uuml;mr&uuml;d&uuml;anka Yoldaşlığı</a>&rsquo;nın ilk &uuml;yelerinden olduğunu ve şu anki &ouml;rg&uuml;t &uuml;yeleri arasında Molly ve&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Arthur_Weasley\">Arthur Weasley</a>&rsquo;nin, Remus Lupin&rsquo;in,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Severus_Snape\">Severus Snape</a>&rsquo;in ve şaşkınlık ve memnuniyetle karşıladığı vaftiz babası&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Sirius_Black\">Sirius Black</a>&rsquo;in de bulunduğunu &ouml;ğrenir. Harry&rsquo;nin duruşmadaki tek umudu, gen&ccedil; b&uuml;y&uuml;c&uuml;n&uuml;n temelli gitmesini istemek i&ccedil;in kendince sebepleri olan Sihir Bakanı Cornelius Fudge&rsquo;ın y&ouml;nettiği kurmaca mahkemede kendini savunmaktır. Harry, b&uuml;y&uuml;k &ouml;l&ccedil;&uuml;de Hogwarts&rsquo;ın emektar m&uuml;d&uuml;r&uuml; Albus Dumbledore&rsquo;un m&uuml;dahalesiyle ve tanık Arabella Figg sayesinde su&ccedil;suz bulunarak Fudge&rsquo;ı &ccedil;ok &uuml;zer, ama ilk kez okuluna d&ouml;nerken kaygılı ve huzursuzdur.</p>\r\n\r\n<p><a href=\"https://tr.wikipedia.org/wiki/Hogwarts\">Hogwarts</a>&rsquo;a d&ouml;n&uuml;ş&uuml;nde, Harry hem ş&uuml;pheli bakışlar, hem Gelecek Postası&#39;nın Harry&rsquo;nin soyadını Potter&rsquo;dan &ldquo;Plotter&rdquo;a (entrikacı) &ccedil;evirerek attığı başlık ve hem de&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Lord_Voldemort\">Lord Voldemort</a>&rsquo;un d&ouml;n&uuml;ş&uuml;yle ilgili yalan s&ouml;ylediği su&ccedil;lamasıyla karşılaşır. Kendini yalnız ve dışlanmış hisseden Harry, Ron ve Hermione&rsquo;nin yardım ve destek &ouml;nerilerine bile ayak diretir &ccedil;&uuml;nk&uuml; yaşadıklarını kimsenin anlayamayacağını d&uuml;ş&uuml;nmektedir, hatta en yakın arkadaşlarının bile...</p>\r\n\r\n<p>Hogwarts&rsquo;ta yeni okul yılının başında &ouml;ğretmen kadrosuna yeni bir isim eklenmiştir. Dumbledore&#39;un t&uuml;m karşı &ccedil;ıkışlarına rağmen sihir bakanı&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Cornelius_Fudge\">Cornelius Fudge</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Dolores_Jane_Umbridge\">Dolores Jane Umbridge</a>&#39;ı okula&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Karanl%C4%B1k_Sanatlara_Kar%C5%9F%C4%B1_Savunma\">Karanlık Sanatlara Karşı Savunma</a>&nbsp;dersi &ouml;ğretmeni olarak atar. Dolores Umbridge aynı zamanda bakanlığın casusudur. Hogwarts &ouml;ğrencileri&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Dolores_Umbridge\">Dolores Umbridge</a>&rsquo;in g&ouml;zlerini diktiği tek hedef değildirler. &Ouml;ğretmenler de onun utan&ccedil; verici saldırılarından paylarını alırlar. Kehanet &ouml;ğretmeni Sybill Trelawney, B&uuml;y&uuml; &ouml;ğretmeni Flitwick ve Hagrid Umbridge&rsquo;in standartlarının altında kalır. Daha sonra Umbridge&#39;e okul kurallarını keyfine bağlı olarak değiştirme yetkisi verilir. Profes&ouml;r Umbridge,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Hogwarts\">Hogwarts</a>&rsquo;ta gitgide artan g&uuml;c&uuml;n&uuml; kullanırken, yeni ve her biri bir &ouml;ncekinden daha katı kararnameler gelmektedir. Hemen hemen her g&uuml;n, yeni bildiriler Hogwarts&rsquo;ın taş duvarlarına asılarak, Umbridge&rsquo;in d&uuml;zene aykırı bulduğu ne varsa yasaklamaktadır.</p>', '1'),
(8, '2021-11-20 15:16:57', '2021-11-10 16:01:43', 'Harry Potter 6', 'harry-potter-6', NULL, 5, '<p>Kitapta,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Lord_Voldemort\">Lord Voldemort</a>&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Draco_Malfoy\">Draco Malfoy</a>&#39;u&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Albus_Dumbledore\">Albus Dumbledore</a>&#39;u &ouml;ld&uuml;rmekle g&ouml;revlendirmiştir. Eğer Draco beceremezse bunu Snape yapacaktır; bunu kendi evinde, Bellatrix&#39;in yaptığı bozulmaz yeminde s&ouml;ylemektedir. Draco, ailesinin ge&ccedil;mişini &ouml;ğrenir; babasının bir &Ouml;l&uuml;m Yiyen olduğunu, Voldemort&#39;un en sadık yandaşlarından biri olduğunu ve bu g&ouml;revin ailesinde soydan gelen bir gelenek olduğunu &ouml;ğrenir.&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Harry\">Harry</a>, Melez Prens&#39;in iksir kitabının yardımı ile bir &ouml;d&uuml;l olarak kazandığı&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Felix_Felicis\">Felix Felicis</a>, (Sıvı Şans), adlı iksiri i&ccedil;er ve&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Slughorn&amp;action=edit&amp;redlink=1\">Slughorn</a>&#39;dan hortkuluklar hakkındaki anısını alır. Bundan sonra Dumbledore hortkuluklar hakkındaki fikrinden emin olur ve bunları Harry&#39;e anlatır. Harry, hortkulukları bulmak i&ccedil;in kitabın sonuna doğru Dumbledore ile bir mağaraya gider. Sonunda Hortkuluk&#39;un bulurlar ancak onu alabilmek i&ccedil;in bir iksiri i&ccedil;meleri gerekir. Dumbledore iksiri i&ccedil;er ve i&ccedil;tiği iksir y&uuml;z&uuml;nden zayıf d&uuml;şer. Harry madalyonu alır ve okula gitmelerini sağlar. Okula d&ouml;nd&uuml;klerinde &uuml;zerinde Kranlık İşareti g&ouml;rd&uuml;kleri i&ccedil;in hemen Astronomi Kulesi&#39;ne giderler. Orada Dumbledore Harry&#39;i dondurur ve o anda da Draco Malfoy ortaya &ccedil;ıkarak Dumbledore&#39;un asasını u&ccedil;urur. Diğer &Ouml;l&uuml;m Yiyenler de okula gelir ve Draco&#39;yu, Dumbledor&#39;u &ouml;ld&uuml;rmesi konusunda kışkırtırlar. O anda Snape gelir ve Avada Kedavra Laneti ile Dumbledore&#39;u &ouml;ld&uuml;r&uuml;r. Harry daha sonra bunun planlanmış bir şey olduğunu ve Dumbledore&#39;un zaten &ouml;leceğini anlayacaktır. Melez Prens ise aslında Snape&#39;tir.</p>', '1'),
(9, '2021-11-02 15:17:03', '2021-11-10 16:02:08', 'Harry Potter 7', 'harry-potter7', NULL, 6, '<p>&nbsp; &nbsp;&Ouml;l&uuml;m Yiyenler Harry&#39; i 17 yaşına girdiğinde &ouml;ld&uuml;rmek isterler. &Ouml;l&uuml;m Yiyenler, Z&uuml;mr&uuml;d&uuml;anka Yoldaşlığı&#39; nın Harry&#39;i almaya geleceğini &ouml;ğrenirler. Z&uuml;mr&uuml;d&uuml;anka Yoldaşlığı geldiğinde ilk &ouml;nce Dursley ailesini g&uuml;venli bir yere g&ouml;t&uuml;r&uuml;rler. Z&uuml;mr&uuml;d&uuml;anka Yoldaşlığı &ccedil;ok &ouml;zl&uuml; iksir i&ccedil;erek Harry&#39; nin kılığına girerler. Daha sonra Harry&#39; i g&ouml;t&uuml;rmeye &ccedil;alışırlar fakat fazla gidemeden &Ouml;l&uuml;m Yiyenler saldırır. Harry&#39; nin baykuşu Hedwig saldırıda &ouml;l&uuml;r. Harry ne olduğunu anlayamadan Voldemort gelir. &Ouml;nce Profes&ouml;r Moody&#39; i &ouml;ld&uuml;r&uuml;r. Harry&#39; e saldırır fakat Harry&#39; nin asası kendi başına sihir yapar. Harry &ccedil;ok şaşırır. Daha sonra Kovuk&#39; a varırlar.</p>\r\n\r\n<p>&nbsp; &nbsp;Birka&ccedil; g&uuml;n sonra Kovukta otururlarken Sihir Bakanı Rufus Scrimgeour ve Percy Weasley gelir. Dumbledore Harry, Ron ve Hermione&#39; ye &ouml;lmeden &ouml;nce birka&ccedil; eşya bırakmıştır. Rufus Scrimgeour bunları dağıtır. Harry&#39; e Quidditch ma&ccedil;ında ilk tuttuğu Snitch&#39; i ve Gryffindor&#39; un kılıcını, Ron&#39; a bir ışık emer ve Hermione&#39; ye bir kitap bırakmıştır. Fakat Gryffindor&#39; un kılıcı Harry&#39; e verilmez. &Ccedil;&uuml;nk&uuml; kılı&ccedil; hem okulun malıdır hem de nerede olduğu bilinmemektedir.&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp;Bill ve Fleur&#39; un d&uuml;ğ&uuml;n vakti gelmiştir. D&uuml;ğ&uuml;n sonunda Sihir Bakanını koruyan ve aynı zamanda Z&uuml;mr&uuml;d&uuml;anka yoldaşlığı &uuml;yesi olan Kingsley Shacklebolt Sihir Bakanının &ouml;ld&uuml;ğ&uuml;n&uuml; ve &Ouml;l&uuml;m Yiyenlerin d&uuml;ğ&uuml;ne gelmek &uuml;zere olduğunu s&ouml;yler. Dediği doğru &ccedil;ıkar. Aradan dakikalar ge&ccedil;memişken &Ouml;l&uuml;m Yiyenler gelir.&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp;Harry, Hermione ve Ron ışınlanarak ka&ccedil;arlar. Fakat Harry Voldemort&#39; un adını s&ouml;yleyince &Ouml;l&uuml;m Yiyenler tekrardan gelir. Bu sefer tekrardan ka&ccedil;arlar. Vaftiz babasından kalan Grimmauld Meydanı 12 numaraya giderler. Oraya gittiklerinde ev cini Kreacher ile konuşurlar. Sirius Black&#39; in kardeşi olan R.A.B (Kim olduğu fazla bilinmez. Kehaneti duyanlardan bir tanesi olduğu bilinir.) sırrını &ouml;ğrenirler. R.A.B bir zamanlar &Ouml;l&uuml;m Yiyendir. Fakat sonradan doğru yolu bulmaya başlar. Voldemort&#39; un hortkuluk&#39; u olan kolyeyi alır ve Kreacher&#39; a verir. Yani Dumbledore ile Harry&#39; nin bulduğu asıl hortkuluk değildir. Kreacher&#39; a kolyenin nerede olduğunu sorarlar. Kreacher, Z&uuml;mr&uuml;d&uuml;anka Yoldaşlığı olan Mundungus kolyeyi &ccedil;almıştır. Harry sahte kolyeyi Kreacher&#39; a verir ve onun g&ouml;nl&uuml;n&uuml; kazanır. Ondan Mundungus&#39; u bulup getirmesini s&ouml;yler.</p>\r\n\r\n<p>&nbsp; &nbsp;Aradan 3-4 g&uuml;n ge&ccedil;er Kreacher ile Dobby, Mundungus&#39;u getirirler. Mundungus kolyeyi Bakanlıkta &ccedil;alışan Umbridge adlı birine sattığını s&ouml;yler. Harry, Ron ve Hermione Sihir Bakanlığına girerek kolyeyi Umbridge&#39; den &ccedil;alarlar. Ron yaralanır ve az bir şey iyileştikten sonra Harry&#39; e &ouml;fkelenerek &ccedil;eker gider. Ron ve Hermione diğer bir hortkuluk&#39; un Godric&#39; s Hollow&#39; a giderler. Orada Voldemort&#39; un yılanı olan Nagini ile karşılaşırlar. Savaşırlarken Hermione yanlışlıkla Harry&#39; nin asasını kırar. Ka&ccedil;mayı başarırlar.</p>', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `settings_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_must` int(11) NOT NULL,
  `settings_delete` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `created_at`, `updated_at`, `settings_description`, `settings_key`, `settings_value`, `settings_type`, `settings_must`, `settings_delete`, `settings_status`) VALUES
(1, NULL, '2021-11-04 12:38:34', 'Başlık', 'title', 'Laravel ECMS Learning1', 'text', 0, '0', '1'),
(2, NULL, '2021-11-04 08:54:54', 'Açıklama', 'description', 'Laravel ECMS Learning Description', 'text', 1, '0', '1'),
(3, NULL, '2021-11-04 08:54:54', 'Anahtar Kelimeler', 'keywords', 'laravel,ecms,Sabiha Çapar', 'text', 2, '0', '1'),
(4, NULL, '2021-11-03 13:51:17', 'Telefon Sabit', 'phone_sabit', '0850 XXX XX XX', 'text', 3, '0', '1'),
(5, NULL, '2021-11-03 13:51:17', 'Telefon GSM', 'phone_gsm', '0850 XXX XX XX', 'text', 4, '0', '1'),
(6, NULL, '2021-11-03 13:51:17', 'Mail', 'mail', 'ornek@gmail.com', 'text', 5, '0', '1'),
(7, NULL, '2021-11-03 13:51:17', 'İlçe', 'ilce', 'Şehitkamil', 'text', 6, '0', '1'),
(8, NULL, '2021-11-03 13:51:17', 'İl', 'il', 'Gaziantep', 'text', 7, '0', '1'),
(9, NULL, '2021-11-04 08:54:57', 'Açık Adres', 'adres', 'Boyno Mahallesi', 'text', 8, '0', '1'),
(10, NULL, '2021-11-04 08:54:57', 'İl', 'il', 'Gaziantep', 'text', 9, '0', '1'),
(11, NULL, '2021-11-04 08:54:50', 'Açık Adres', 'adres', 'Boyno Mahallesi', 'textarea', 10, '1', '1'),
(14, NULL, '2021-11-04 11:22:25', 'Logo ', 'logo.png', '6183eca10d30c.jpeg', 'file', 10, '1', '1'),
(15, NULL, '2021-11-04 08:54:50', 'Açık Adres', 'adres', 'Boyno Mahallesi', 'ckeditor', 10, '1', '1'),
(16, NULL, '2021-11-04 08:54:50', 'Footer Bilgi', 'footer', 'SC Yazılım ECMS Laravel', 'text', 11, '1', '1'),
(17, NULL, '2021-11-10 16:13:11', 'Home Title', 'home_title', 'Kitaplar Dünyası', 'text', 11, '1', '1'),
(18, NULL, '2021-11-10 16:12:48', 'Home Detail', 'home_detail', '<p>The Modern Business template by Start Bootstrap includes:</p>\r\n\r\n<ul>\r\n	<li><strong>K&uuml;&ccedil;&uuml;k Prens</strong></li>\r\n	<li>Şeker Portakalı</li>\r\n	<li>Beyaz Zambaklar &Uuml;lkesinde</li>\r\n	<li>Ben Bir G&uuml;rgen Dalıyım</li>\r\n	<li>Su Adamı</li>\r\n</ul>\r\n\r\n<p>Okumak insanı kurtarır,farklı evrenlerde yaşama fırsatı sunar, okumak bir&ccedil;ok d&uuml;nyaya seyehat etmektir.</p>', 'ckeditor', 11, '1', '1'),
(19, NULL, '2021-11-10 12:59:05', 'Home İmage', 'home_image', '618bec49d5d57.png', 'file', 11, '1', '1'),
(20, NULL, '2021-11-10 16:13:29', 'Slogan', 'slogan', 'Kitabını al dünyanı değiştir', 'text', 11, '1', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slider_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `slider_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_must` int(11) DEFAULT NULL,
  `slider_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sliders`
--

INSERT INTO `sliders` (`id`, `created_at`, `updated_at`, `slider_title`, `slider_slug`, `slider_url`, `slider_file`, `slider_must`, `slider_content`, `slider_status`) VALUES
(3, NULL, '2021-11-10 15:31:02', 'Slider Title 3', 'slider-slug-3', 'https://www.youtube.com/watch?v=rm9RlME6M4E', '618c0fe68ac99.jpg', 2, '<p>Slider Title 3</p>', '1'),
(21, NULL, NULL, 'Slider 1', 'slider1', 'https://www.youtube.com/watch?v=0pgPN5wW534', '618c0f86997c5.jpg', NULL, '<p>Kitaplarda Slider</p>', '1'),
(22, NULL, NULL, 'Slider 2', 'slider2', 'https://www.youtube.com/watch?v=0pgPN5wW534', '618c0fa405bec.jpg', NULL, '<p>Slider kitap 2</p>', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci DEFAULT 'admin',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `user_file`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_status`) VALUES
(7, '6187e4abf070e.jpg', 'admin', 'Sabiha Çapar', 'sbhacpr101@gmail.com', NULL, '$2y$10$afHe/YAtB1pMTHz8wjeOzOAYpIy5d8cJv/16Dj5OYaMUC.kByhNWG', '1KeBkzPZuNKrXouzuesmlPeftxS6XMX5G9EtoReT3Mxsdipm2xluojaAuj6A', '2021-11-07 08:38:44', '2021-11-07 11:37:31', '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
