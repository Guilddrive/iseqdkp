-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Erstellungszeit: 11. Mai 2015 um 15:40
-- Server Version: 5.5.43-0ubuntu0.12.04.1
-- PHP-Version: 5.5.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `eqdkp20`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_adjustments`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_adjustments` (
`adjustment_id` mediumint(8) unsigned NOT NULL,
  `adjustment_value` float(11,2) DEFAULT NULL,
  `adjustment_date` int(11) NOT NULL DEFAULT '0',
  `member_id` smallint(5) unsigned NOT NULL,
  `adjustment_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `adjustment_added_by` varchar(30) COLLATE utf8_bin NOT NULL,
  `adjustment_updated_by` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `adjustment_group_key` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `event_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `raid_id` mediumint(8) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_articles`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_articles` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `text` mediumtext COLLATE utf8_bin NOT NULL,
  `category` int(10) unsigned NOT NULL DEFAULT '0',
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comments` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `votes` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_from` varchar(11) COLLATE utf8_bin NOT NULL DEFAULT '',
  `show_to` varchar(11) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `previewimage` text COLLATE utf8_bin NOT NULL,
  `alias` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tags` text COLLATE utf8_bin NOT NULL,
  `votes_count` int(11) unsigned NOT NULL DEFAULT '0',
  `votes_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `votes_users` text COLLATE utf8_bin,
  `last_edited` int(11) unsigned NOT NULL DEFAULT '0',
  `last_edited_user` int(11) unsigned NOT NULL DEFAULT '0',
  `page_objects` text COLLATE utf8_bin,
  `hide_header` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `undeletable` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=18 ;

--
-- Daten für Tabelle `eqdkp20_articles`
--

INSERT INTO `eqdkp20_articles` (`id`, `title`, `text`, `category`, `featured`, `comments`, `votes`, `published`, `show_from`, `show_to`, `user_id`, `date`, `previewimage`, `alias`, `hits`, `sort_id`, `tags`, `votes_count`, `votes_sum`, `votes_users`, `last_edited`, `last_edited_user`, `page_objects`, `hide_header`, `index`, `undeletable`) VALUES
(1, 'Neue Funktionen von EQdkp Plus', '&lt;p&gt;Das EQdkp Plus 2.0 stellt wesentliche neue Funktionen zur Verfügung. Dieser Artikel dient dazu, diese Funktionen etwas näher kennenzulernen.&lt;/p&gt;\n&lt;h3&gt;Artikelsystem&lt;/h3&gt;\n&lt;p&gt;Anstatt der früheren News und Infoseiten basiert nun alles auf einem Artikelsystem. Jede News und jede Seite ist dabei ein Artikel. Über Artikelkategorien können diese leicht gruppiert werden. Auch kann man dadurch Blogs ermöglichen.&lt;/p&gt;\n&lt;p&gt;Die einzelnen Artikel können über einen Weiterlesen-Bereich und Seitenumbrüchen aufgeteilt werden. Auch besteht die Möglichkeit, über den Editor Bildergalerien, Items oder Raidloot in einen Artikel einzufügen.&lt;/p&gt;\n&lt;h3&gt;Medienverwaltung&lt;/h3&gt;\n&lt;p&gt;Durch die Medienverwaltung ist es nun ein leichtes, Medien in Artikel hinzuzufügen. Dateien können so zum Beispiel über Drag&amp;Drop einfach hochgeladen werden. Desweiteren können Bilder sogar im Medieneditor bearbeitet werden.&lt;/p&gt;\n&lt;h3&gt;Menüverwaltung&lt;/h3&gt;\n&lt;p&gt;Eine weitere Neuerung ist, dass es nur noch ein zentrales Menü gibt, dass frei angepasst werden kann. Die einzelnen Einträge lassen sich mittels Drag&amp;Drop positieren, und dass sogar in bis zu 3 Ebenen, so dass Untermenüs enstehen. Wie von bisherigen EQdkp Plus Versionen gewohnt, lassen sich auch Links zu externen Seiten anlegen, alles zentral über den &quot;Link hinzufügen&quot;-Button, wo man auch die Verlinkung zu Artikel und -Kategorien vornimmt.&lt;/p&gt;\n&lt;h3&gt;Portalverwaltung&lt;/h3&gt;\n&lt;p&gt;Früher gab es nur ein ein Portallayout, d.h. auf allen Seiten waren die Portalmodule gleich. Das hat sich nun geändert. So kann man Artikelkategorien andere Portallayouts zuweisen.&lt;/p&gt;\n&lt;p&gt;Desweiteren besteht die Möglichkeit, eigene Portalblöcke anzulegen, so dass man diese im Template einbindet, um z.B. Links im Footer einfacher verwalten zu können.&lt;/p&gt;', 2, 1, 1, 0, 1, '', '', 1, 1431351620, '', 'new-features', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1431351620, 1, NULL, 0, 0, 0),
(5, 'Charakter', '&lt;p class=&quot;system-article&quot; title=&quot;character&quot;&gt;character&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 9, 0, 1, 0, 1, '', '', 1, 1431351620, '', 'index_character', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1431351620, 1, 'a:1:{i:0;s:9:"character";}', 1, 1, 1),
(6, 'Roster', '&lt;p class=&quot;system-article&quot; title=&quot;roster&quot;&gt;roster&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 7, 0, 0, 0, 1, '', '', 1, 1431351620, '', 'index_roster', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1431351620, 1, 'a:1:{i:0;s:6:"roster";}', 1, 1, 1),
(7, 'Events', '&lt;p class=&quot;system-article&quot; title=&quot;events&quot;&gt;events&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 3, 0, 0, 0, 1, '', '', 1, 1431351620, '', 'index_events', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1431351620, 1, 'a:1:{i:0;s:6:"events";}', 1, 1, 1),
(8, 'Items', '&lt;p class=&quot;system-article&quot; title=&quot;items&quot;&gt;items&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 4, 0, 0, 0, 1, '', '', 1, 1431351620, '', 'index_items', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1431351620, 1, 'a:1:{i:0;s:5:"items";}', 1, 1, 1),
(9, 'Punktestand', '&lt;p class=&quot;system-article&quot; title=&quot;points&quot;&gt;points&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 8, 0, 0, 0, 1, '', '', 1, 1431351620, '', 'index_points', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1431351620, 1, 'a:1:{i:0;s:6:"points";}', 1, 1, 1),
(10, 'Raids', '&lt;p class=&quot;system-article&quot; title=&quot;raids&quot;&gt;raids&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 5, 0, 0, 0, 1, '', '', 1, 1431351620, '', 'index_raids', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1431351620, 1, 'a:1:{i:0;s:5:"raids";}', 1, 1, 1),
(11, 'Willkommen bei EQdkp-Plus', '<p>Die Installation deines EQdkp-Plus wurde erfolgreich abgeschlossen - du kannst es nun nach deinen Wünschen einrichten.</p>\n<p>Hilfestellungen zur Aministration und zur Allgemeinen Benutzung des EQdkps findest Du in unserer <a href="http://eqdkp-plus.eu/wiki/" target="_blank">Wiki</a>.</p>\n<p>Für weitere Hilfe steht dir unser <a href="http://eqdkp-plus.eu/forum" target="_blank">Forum</a> zur Verfügung.</p>\n<p>Viel Spaß mit dem EQdkp-Plus wünscht das gesamte EQdkp-Plus-Team!</p>', 2, 1, 1, 0, 1, '', '', 1, 1431351620, '', 'welcome', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1431351620, 1, NULL, 0, 0, 0),
(12, 'Kalenderevent', '&lt;p class=&quot;system-article&quot; title=&quot;calendarevent&quot;&gt;calendarevent&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 6, 0, 1, 0, 1, '', '', 1, 1431351620, '', 'calendarevent', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1431351620, 1, 'a:1:{i:0;s:13:"calendarevent";}', 1, 0, 1),
(13, 'Kalender', '&lt;p class=&quot;system-article&quot; title=&quot;calendar&quot;&gt;calendar&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 6, 0, 0, 0, 1, '', '', 1, 1431351620, '', 'index_calendar', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1431351620, 1, 'a:1:{i:0;s:8:"calendar";}', 1, 1, 1),
(14, 'Gildenregeln', '&lt;p&gt;You can use this page to display rules the user must accept before registering.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Please do not change the Alias of this Page.&lt;/strong&gt;&lt;/p&gt;', 1, 0, 0, 0, 0, '', '', 1, 1431351620, '', 'guildrules', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, NULL, 1431351620, 1, 'a:0:{}', 1, 0, 0),
(15, 'Datenschutz', '&lt;h2&gt;&lt;strong&gt;Datenschutz&lt;/strong&gt;&lt;/h2&gt;\n&lt;p&gt;Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten möglich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit möglich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdrückliche Zustimmung nicht an Dritte weitergegeben.&lt;/p&gt;\n&lt;p&gt;Wir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich.&lt;/p&gt;\n&lt;p&gt;Der Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten durch Dritte zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdrücklich widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Datenschutzerklärung für die Nutzung von Facebook-Plugins (Like-Button)&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;Auf unseren Seiten sind Plugins des sozialen Netzwerks Facebook (Facebook Inc., 1601 Willow Road, Menlo Park, California, 94025, USA) integriert. Die Facebook-Plugins erkennen Sie an dem Facebook-Logo oder dem &quot;Like-Button&quot; (&quot;Gefällt mir&quot;) auf unserer Seite. Eine Übersicht über die Facebook-Plugins finden Sie hier: &lt;a href=&quot;http://developers.facebook.com/docs/plugins/&quot; rel=&quot;nofollow&quot;&gt;http://developers.facebook.com/docs/plugins/&lt;/a&gt;&lt;br /&gt; Wenn Sie unsere Seiten besuchen, wird über das Plugin eine direkte Verbindung zwischen Ihrem Browser und dem Facebook-Server hergestellt. Facebook erhält dadurch die Information, dass Sie mit Ihrer IP-Adresse unsere Seite besucht haben. Wenn Sie den Facebook &quot;Like-Button&quot; anklicken während Sie in Ihrem Facebook-Account eingeloggt sind, können Sie die Inhalte unserer Seiten auf Ihrem Facebook-Profil verlinken. Dadurch kann Facebook den Besuch unserer Seiten Ihrem Benutzerkonto zuordnen. Wir weisen darauf hin, dass wir als Anbieter der Seiten keine Kenntnis vom Inhalt der übermittelten Daten sowie deren Nutzung durch Facebook erhalten. Weitere Informationen hierzu finden Sie in der Datenschutzerklärung von facebook unter &lt;a href=&quot;https://de-de.facebook.com/policy.php&quot; rel=&quot;nofollow&quot;&gt;https://de-de.facebook.com/policy.php&lt;/a&gt;.&lt;/p&gt;\n&lt;p&gt;Wenn Sie nicht wünschen, dass Facebook den Besuch unserer Seiten Ihrem Facebook-Nutzerkonto zuordnen kann, loggen Sie sich bitte aus Ihrem Facebook-Benutzerkonto aus.&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Datenschutzerklärung für die Nutzung von Google +1&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em&gt;Erfassung und Weitergabe von Informationen:&lt;/em&gt;&lt;br /&gt; Mithilfe der Google +1-Schaltfläche können Sie Informationen weltweit veröffentlichen. Über die Google +1-Schaltfläche erhalten Sie und andere Nutzer personalisierte Inhalte von Google und unseren Partnern. Google speichert sowohl die Information, dass Sie für einen Inhalt +1 gegeben haben, als auch Informationen über die Seite, die Sie beim Klicken auf +1 angesehen haben. Ihre +1 können als Hinweise zusammen mit Ihrem Profilnamen und Ihrem Foto in Google-Diensten, wie etwa in Suchergebnissen oder in Ihrem Google-Profil, oder an anderen Stellen auf Websites und Anzeigen im Internet eingeblendet werden.&lt;br /&gt; Google zeichnet Informationen über Ihre +1-Aktivitäten auf, um die Google-Dienste für Sie und andere zu verbessern. Um die Google +1-Schaltfläche verwenden zu können, benötigen Sie ein weltweit sichtbares, öffentliches Google-Profil, das zumindest den für das Profil gewählten Namen enthalten muss. Dieser Name wird in allen Google-Diensten verwendet. In manchen Fällen kann dieser Name auch einen anderen Namen ersetzen, den Sie beim Teilen von Inhalten über Ihr Google-Konto verwendet haben. Die Identität Ihres Google-Profils kann Nutzern angezeigt werden, die Ihre E-Mail-Adresse kennen oder über andere identifizierende Informationen von Ihnen verfügen.&lt;br /&gt; &lt;br /&gt; &lt;em&gt;Verwendung der erfassten Informationen:&lt;/em&gt;&lt;br /&gt; Neben den oben erläuterten Verwendungszwecken werden die von Ihnen bereitgestellten Informationen gemäß den geltenden Google-Datenschutzbestimmungen genutzt. Google veröffentlicht möglicherweise zusammengefasste Statistiken über die +1-Aktivitäten der Nutzer bzw. gibt diese an Nutzer und Partner weiter, wie etwa Publisher, Inserenten oder verbundene Websites.&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Datenschutzerklärung für die Nutzung von Twitter&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;Auf unseren Seiten sind Funktionen des Dienstes Twitter eingebunden. Diese Funktionen werden angeboten durch die Twitter Inc., Twitter, Inc. 1355 Market St, Suite 900, San Francisco, CA 94103, USA. Durch das Benutzen von Twitter und der Funktion &quot;Re-Tweet&quot; werden die von Ihnen besuchten Webseiten mit Ihrem Twitter-Account verknüpft und anderen Nutzern bekannt gegeben. Dabei werden auch Daten an Twitter übertragen.&lt;/p&gt;\n&lt;p&gt;Wir weisen darauf hin, dass wir als Anbieter der Seiten keine Kenntnis vom Inhalt der übermittelten Daten sowie deren Nutzung durch Twitter erhalten. Weitere Informationen hierzu finden Sie in der Datenschutzerklärung von Twitter unter &lt;a href=&quot;http://twitter.com/privacy&quot; rel=&quot;nofollow&quot;&gt;http://twitter.com/privacy&lt;/a&gt;.&lt;/p&gt;\n&lt;p&gt;Ihre Datenschutzeinstellungen bei Twitter können Sie in den Konto-Einstellungen unter &lt;a href=&quot;http://twitter.com/account/settings&quot; rel=&quot;nofollow&quot;&gt;http://twitter.com/account/settings&lt;/a&gt; ändern.&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;\n&lt;h2&gt;&lt;a id=&quot;Cookies&quot;&gt;&lt;/a&gt;Cookie-Verwendung&lt;/h2&gt;\n&lt;p&gt;Diese Seite nutzt wie viele anderen Internetseiten Cookies. Im Folgenden wird erläutert, was Cookies sind und wie diese verwendet werden.&lt;/p&gt;\n&lt;h3&gt;Was sind Cookies?&lt;/h3&gt;\n&lt;p&gt;Cookies sind kleine Dateien, die beim Aufruf von Internetseiten durch den Browser lokal auf dem Rechner gespeichert werden. Internetseiten speichern in diesen Dateien Informationen ab, zum Beispiel verschlüsselte Zugangsdaten, um den Benutzer bei einem Seitenbesuch automatisch anmelden zu können. Es ist mit Cookies aber auch möglich, das Internetverhalten von Benutzern zu verfolgen. Deswegen wird nun erläutert, wie unsere Cookies verwendet werden.&lt;/p&gt;\n&lt;h3&gt;Wie wir Cookies nutzen&lt;/h3&gt;\n&lt;p&gt;Wir setzen Cookies für folgende Zwecke ein:&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt;Anmeldung: Wird bei der Anmeldung die Option &quot;Mich bei jedem Besuch automatisch anmelden&quot; aktiviert oder die Anmeldung über Drittanbieter durchgeführt, werden verschlüsselte Zugangsdaten als Cookie abgelegt, um den Benutzer ohne die Eingabe von Zugangsdaten anmelden zu können.&lt;/li&gt;\n&lt;li&gt;Sitzung: Beim ersten Aufruf unserer Seite wird eine neue Sitzung gestartet, diese wird durch ein eindeutiges Cookies dem Computer des Benutzers zugeordnet. Mit Sitzungen ist es möglich, den Benutzer über jeden Seitenaufruf identifizieren zu können, und ihm alle Funktionalitäten bereistellen zu können.&lt;/li&gt;\n&lt;li&gt;Drittanbieter-Dienste: Die Einblendung von Werbeanzeigen oder das Teilen von Inhalten auf sozialen Netzwerken oder vergleichbaren Internetseiten kann die Erzeugung eines Cookies zur Folge haben. Diese Cookies werden nicht direkt von unserer Seite erzeugt, sondern durch den Drittanbieter selbst.&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;Die Cookies &quot;Anmeldung&quot; und &quot;Sitzung&quot; werden nur von unserer Seite angelegt, und können auch nur von unserer Seite ausgelesen werden. Dies ist bei Cookies von Drittanbieter-Diensten nicht der Fall, so dass diese das Internetverhalten des Benutzers durch deren Cookies verfolgen können.&lt;/p&gt;\n&lt;h3&gt;Cookies deaktivieren und entfernen&lt;/h3&gt;\n&lt;p class=&quot;externalURL&quot;&gt;Cookies können in den Einstellungen Ihres Browsers verwaltet und entfernt werden. Darüber hinaus lässt sich in den Einstellungen das Speichern von Cookies zudem vollständig deaktivieren. Eine Anleitung zum Entfernen und Deaktivieren von Cookies kann der Hilfeseite des jeweiligen Browsers entnommen werden.&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em&gt;Quellenangaben: &lt;a href=&quot;http://www.e-recht24.de/muster-datenschutzerklaerung.html&quot; target=&quot;_blank&quot; rel=&quot;nofollow&quot;&gt;eRecht24&lt;/a&gt;, &lt;a href=&quot;http://www.e-recht24.de/artikel/datenschutz/6590-facebook-like-button-datenschutz-disclaimer.html&quot; target=&quot;_blank&quot; rel=&quot;nofollow&quot;&gt;eRecht24 Datenschutzerklärung für Facebook&lt;/a&gt;, &lt;a href=&quot;http://www.google.com/intl/de/+/policy/+1button.html&quot; target=&quot;_blank&quot; rel=&quot;nofollow&quot;&gt;Datenschutzerklärung für Google +1&lt;/a&gt;, &lt;a href=&quot;http://twitter.com/privacy&quot;&gt; Twitter Datenschutzerklärung&lt;/a&gt;&lt;/em&gt;&lt;/p&gt;', 1, 0, 0, 0, 1, '', '', 1, 1431351620, '', 'privacypolicy', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, NULL, 1431351620, 1, 'a:0:{}', 1, 0, 0),
(16, 'Impressum', '&lt;h2&gt;Impressum&lt;/h2&gt;\n&lt;h3&gt;Angaben gemäß § 5 TMG:&lt;/h3&gt;\n&lt;p&gt;Name Vorname&lt;br /&gt; Straße&lt;br /&gt; PLZ Stadt&lt;/p&gt;\n&lt;h3&gt;Kontakt:&lt;/h3&gt;\n&lt;p&gt;Telefon:&lt;br /&gt; Email-Adresse:&lt;/p&gt;\n&lt;h2&gt;Haftungsausschluss (Disclaimer)&lt;/h2&gt;\n&lt;p&gt;&lt;strong&gt;Haftung für Inhalte&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Haftung für Links&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Urheberrecht&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;\n&lt;p&gt;Quelle: &lt;em&gt;&lt;a href=&quot;http://www.e-recht24.de/impressum-generator.html&quot;&gt;http://www.e-recht24.de&lt;/a&gt;&lt;/em&gt;&lt;/p&gt;', 1, 0, 0, 0, 1, '', '', 1, 1431351620, '', 'legalnotice', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, NULL, 1431351620, 1, 'a:0:{}', 1, 0, 0),
(17, 'Team', '&lt;p class=&quot;system-article&quot; title=&quot;team&quot;&gt;team&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 1, 0, 0, 0, 1, '', '', 1, 1431351620, '', 'team', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, NULL, 1431351620, 1, 'a:1:{i:0;s:4:"team";}', 1, 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_article_categories`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_article_categories` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `portal_layout` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_bin NOT NULL,
  `per_page` int(3) unsigned NOT NULL DEFAULT '25',
  `permissions` text COLLATE utf8_bin NOT NULL,
  `published` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_id` int(10) unsigned NOT NULL DEFAULT '0',
  `list_type` int(3) unsigned NOT NULL DEFAULT '1',
  `aggregation` text COLLATE utf8_bin NOT NULL,
  `featured_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notify_on_onpublished_articles` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `social_share_buttons` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `show_childs` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `article_published_state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hide_header` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortation_type` int(3) unsigned NOT NULL DEFAULT '1',
  `featured_ontop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hide_on_rss` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Daten für Tabelle `eqdkp20_article_categories`
--

INSERT INTO `eqdkp20_article_categories` (`id`, `name`, `alias`, `portal_layout`, `description`, `per_page`, `permissions`, `published`, `parent`, `sort_id`, `list_type`, `aggregation`, `featured_only`, `notify_on_onpublished_articles`, `social_share_buttons`, `show_childs`, `article_published_state`, `hide_header`, `sortation_type`, `featured_ontop`, `hide_on_rss`) VALUES
(1, 'System', 'system', 1, '', 25, 'a:5:{s:3:"rea";a:6:{i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";i:1;s:1:"1";}s:3:"cre";a:6:{i:2;s:1:"1";i:3;s:1:"1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:1:"0";i:1;s:2:"-1";}s:3:"upd";a:6:{i:2;s:1:"1";i:3;s:1:"1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:1:"0";i:1;s:2:"-1";}s:3:"del";a:6:{i:2;s:1:"1";i:3;s:1:"1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:1:"0";i:1;s:2:"-1";}s:3:"chs";a:6:{i:2;s:1:"1";i:3;s:1:"1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:1:"0";i:1;s:2:"-1";}}', 1, 0, 99999999, 1, 'a:0:{}', 0, 0, 0, 0, 1, 0, 1, 0, 1),
(2, 'News', 'news', 1, '', 15, 'a:5:{s:3:"rea";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}s:3:"cre";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:1:"1";i:1;s:2:"-1";}s:3:"upd";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:1:"1";i:1;s:2:"-1";}s:3:"del";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:1:"1";i:1;s:2:"-1";}s:3:"chs";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:1:"1";i:1;s:2:"-1";}}', 1, 1, 99999999, 1, 'a:1:{i:0;s:1:"2";}', 0, 0, 1, 0, 1, 1, 1, 0, 0),
(3, 'Events', 'events', 1, '', 25, 'a:5:{s:3:"rea";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}s:3:"cre";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}s:3:"upd";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}s:3:"del";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}s:3:"chs";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}}', 1, 1, 99999999, 1, 'a:0:{}', 0, 0, 0, 0, 1, 1, 0, 0, 1),
(4, 'Items', 'items', 1, '', 25, 'a:5:{s:3:"rea";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}s:3:"cre";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}s:3:"upd";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}s:3:"del";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}s:3:"chs";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}}', 1, 1, 99999999, 1, 'a:0:{}', 0, 0, 0, 0, 1, 1, 0, 0, 1),
(5, 'Raids', 'raids', 1, '', 25, 'a:5:{s:3:"rea";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}s:3:"cre";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}s:3:"upd";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}s:3:"del";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}s:3:"chs";a:6:{i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:1;s:2:"-1";}}', 1, 1, 99999999, 1, 'a:0:{}', 0, 0, 0, 0, 1, 0, 0, 0, 1),
(6, 'Kalender', 'calendar', 1, '', 25, 'a:5:{s:3:"rea";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";}s:3:"cre";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";}s:3:"upd";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";}s:3:"del";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";}s:3:"chs";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:4;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";}}', 1, 1, 99999999, 1, 'a:1:{i:0;i:6;}', 0, 0, 0, 0, 1, 1, 1, 0, 1),
(7, 'Roster', 'roster', 1, '', 25, 'a:5:{s:3:"rea";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:4;s:2:"-1";}s:3:"cre";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:4;s:2:"-1";}s:3:"upd";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:4;s:2:"-1";}s:3:"del";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:4;s:2:"-1";}s:3:"chs";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:4;s:2:"-1";}}', 1, 1, 99999999, 1, 'a:0:{}', 0, 0, 0, 0, 1, 1, 1, 0, 1),
(8, 'Punktestand', 'points', 1, '', 25, 'a:5:{s:3:"rea";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:4;s:2:"-1";}s:3:"cre";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:4;s:2:"-1";}s:3:"upd";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:4;s:2:"-1";}s:3:"del";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:4;s:2:"-1";}s:3:"chs";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:4;s:2:"-1";}}', 1, 1, 99999999, 1, 'a:0:{}', 0, 0, 0, 0, 1, 1, 1, 0, 1),
(9, 'Charakter', 'character', 1, '', 25, 'a:5:{s:3:"rea";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:4;s:2:"-1";}s:3:"cre";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:4;s:2:"-1";}s:3:"upd";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:4;s:2:"-1";}s:3:"del";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:4;s:2:"-1";}s:3:"chs";a:6:{i:1;s:2:"-1";i:2;s:2:"-1";i:3;s:2:"-1";i:5;s:2:"-1";i:6;s:2:"-1";i:4;s:2:"-1";}}', 1, 1, 99999999, 1, 'a:0:{}', 0, 0, 0, 0, 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_auth_groups`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_auth_groups` (
  `group_id` int(11) unsigned NOT NULL,
  `auth_id` int(11) unsigned NOT NULL,
  `auth_setting` enum('N','Y') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp20_auth_groups`
--

INSERT INTO `eqdkp20_auth_groups` (`group_id`, `auth_id`, `auth_setting`) VALUES
(1, 42, 'Y'),
(1, 46, 'Y'),
(3, 35, 'Y'),
(3, 31, 'Y'),
(3, 27, 'Y'),
(3, 24, 'Y'),
(3, 26, 'Y'),
(3, 25, 'Y'),
(3, 13, 'Y'),
(3, 1, 'Y'),
(3, 3, 'Y'),
(3, 2, 'Y'),
(3, 34, 'Y'),
(3, 18, 'Y'),
(3, 4, 'Y'),
(3, 6, 'Y'),
(3, 5, 'Y'),
(3, 7, 'Y'),
(3, 9, 'Y'),
(3, 8, 'Y'),
(3, 16, 'Y'),
(3, 14, 'Y'),
(3, 10, 'Y'),
(3, 12, 'Y'),
(3, 11, 'Y'),
(3, 33, 'Y'),
(3, 32, 'Y'),
(3, 22, 'Y'),
(3, 30, 'Y'),
(3, 29, 'Y'),
(3, 15, 'Y'),
(3, 28, 'Y'),
(3, 36, 'Y'),
(3, 37, 'Y'),
(3, 49, 'Y'),
(3, 43, 'Y'),
(3, 45, 'Y'),
(3, 44, 'Y'),
(3, 48, 'Y'),
(3, 39, 'Y'),
(3, 40, 'Y'),
(3, 41, 'Y'),
(3, 38, 'Y'),
(3, 46, 'Y'),
(3, 42, 'Y'),
(3, 47, 'Y'),
(4, 38, 'Y'),
(4, 39, 'Y'),
(4, 40, 'Y'),
(4, 41, 'Y'),
(4, 42, 'Y'),
(4, 44, 'Y'),
(4, 46, 'Y'),
(4, 47, 'Y'),
(4, 48, 'Y'),
(5, 1, 'Y'),
(5, 2, 'Y'),
(5, 3, 'Y'),
(5, 7, 'Y'),
(5, 8, 'Y'),
(5, 9, 'Y'),
(5, 10, 'Y'),
(5, 11, 'Y'),
(5, 12, 'Y'),
(5, 14, 'Y'),
(5, 25, 'Y'),
(5, 24, 'Y'),
(5, 31, 'Y'),
(6, 31, 'Y'),
(6, 23, 'Y');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_auth_options`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_auth_options` (
`auth_id` int(10) unsigned NOT NULL,
  `auth_value` varchar(65) COLLATE utf8_bin NOT NULL,
  `auth_default` enum('N','Y') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=50 ;

--
-- Daten für Tabelle `eqdkp20_auth_options`
--

INSERT INTO `eqdkp20_auth_options` (`auth_id`, `auth_value`, `auth_default`) VALUES
(1, 'a_event_add', 'N'),
(2, 'a_event_upd', 'N'),
(3, 'a_event_del', 'N'),
(4, 'a_indivadj_add', 'N'),
(5, 'a_indivadj_upd', 'N'),
(6, 'a_indivadj_del', 'N'),
(7, 'a_item_add', 'N'),
(8, 'a_item_upd', 'N'),
(9, 'a_item_del', 'N'),
(10, 'a_raid_add', 'N'),
(11, 'a_raid_upd', 'N'),
(12, 'a_raid_del', 'N'),
(13, 'a_config_man', 'N'),
(14, 'a_members_man', 'N'),
(15, 'a_users_man', 'N'),
(16, 'a_logs_view', 'N'),
(17, 'a_logs_del', 'N'),
(18, 'a_extensions_man', 'N'),
(19, 'a_backup', 'N'),
(20, 'a_reset', 'N'),
(21, 'a_maintenance', 'N'),
(22, 'a_sms_send', 'N'),
(23, 'a_files_man', 'N'),
(24, 'a_cal_event_man', 'N'),
(25, 'a_calendars_man', 'N'),
(26, 'a_cal_revent_conf', 'N'),
(27, 'a_cal_addrestricted', 'N'),
(28, 'a_users_massmail', 'N'),
(29, 'a_usergroups_man', 'N'),
(30, 'a_usergroups_grpleader', 'N'),
(31, 'a_articles_man', 'N'),
(32, 'a_raidgroups_man', 'N'),
(33, 'a_raidgroups_grpleader', 'N'),
(34, 'a_export_data', 'N'),
(35, 'a_article_categories_man', 'N'),
(36, 'a_users_perms', 'N'),
(37, 'a_users_profilefields', 'N'),
(38, 'u_member_man', 'Y'),
(39, 'u_member_add', 'Y'),
(40, 'u_member_conn', 'Y'),
(41, 'u_member_del', 'Y'),
(42, 'u_userlist', 'Y'),
(43, 'u_cal_event_add', 'Y'),
(44, 'u_calendar_view', 'Y'),
(45, 'u_calendar_raidnotes', 'Y'),
(46, 'u_search', 'Y'),
(47, 'u_usermailer', 'Y'),
(48, 'u_files_man', 'Y'),
(49, 'u_articles_script', 'N');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_auth_users`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_auth_users` (
  `user_id` smallint(5) unsigned NOT NULL,
  `auth_id` int(11) unsigned NOT NULL,
  `auth_setting` enum('N','Y') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_calendars`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_calendars` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `color` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `private` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `feed` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `restricted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `affiliation` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'user'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Daten für Tabelle `eqdkp20_calendars`
--

INSERT INTO `eqdkp20_calendars` (`id`, `name`, `color`, `private`, `feed`, `system`, `type`, `restricted`, `affiliation`) VALUES
(1, 'Raids', '#00628c', 0, NULL, 1, 1, 1, 'core'),
(2, 'Userraids', '#0cb20f', 0, NULL, 1, 1, 0, 'core'),
(3, 'Standard', '#ba1e1e', 0, NULL, 0, 2, 0, 'core');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_calendar_events`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_calendar_events` (
`id` int(10) unsigned NOT NULL,
  `cloneid` int(10) unsigned NOT NULL DEFAULT '0',
  `calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `creator` smallint(5) unsigned NOT NULL DEFAULT '0',
  `timestamp_start` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp_end` int(10) unsigned NOT NULL DEFAULT '0',
  `allday` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `private` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `visible` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension` text COLLATE utf8_bin,
  `notes` text COLLATE utf8_bin,
  `repeating` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_calendar_raid_attendees`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_calendar_raid_attendees` (
`id` int(10) unsigned NOT NULL,
  `calendar_events_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member_role` int(10) unsigned NOT NULL DEFAULT '0',
  `signup_status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status_changedby` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp_signup` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp_change` int(10) unsigned NOT NULL DEFAULT '0',
  `raidgroup` int(10) unsigned NOT NULL DEFAULT '0',
  `random_value` int(10) unsigned NOT NULL DEFAULT '0',
  `signedbyadmin` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_calendar_raid_guests`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_calendar_raid_guests` (
`id` int(10) unsigned NOT NULL,
  `calendar_events_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp_signup` int(10) unsigned NOT NULL DEFAULT '0',
  `raidgroup` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `class` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_calendar_raid_templates`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_calendar_raid_templates` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tpldata` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_classcolors`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_classcolors` (
  `template` int(3) NOT NULL,
  `class_id` int(2) NOT NULL,
  `color` varchar(7) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_comments`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_comments` (
`id` int(11) unsigned NOT NULL,
  `attach_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `userid` int(11) unsigned NOT NULL,
  `date` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `text` text COLLATE utf8_bin,
  `page` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `reply_to` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_config`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_config` (
  `config_name` varchar(120) COLLATE utf8_bin NOT NULL,
  `config_plugin` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT 'core',
  `config_value` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp20_config`
--

INSERT INTO `eqdkp20_config` (`config_name`, `config_plugin`, `config_value`) VALUES
('account_activation', 'core', '1'),
('active_point_adj', 'core', '0.00'),
('auth_method', 'core', 'db'),
('calendar_addevent_mode', 'core', 'raid'),
('calendar_addraid_deadline', 'core', '1'),
('calendar_addraid_duration', 'core', '120'),
('calendar_email_statuschange', 'core', '1'),
('calendar_raid_classbreak', 'core', '5'),
('calendar_raid_guests', 'core', '1'),
('calendar_raid_nsfilter', 'core', 'a:3:{i:0;s:6:"twinks";i:1;s:8:"inactive";i:2;s:6:"hidden";}'),
('calendar_raid_status', 'core', 'a:5:{i:0;i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;}'),
('calendar_repeat_crondays', 'core', '40'),
('class_color', 'core', '1'),
('color_items', 'core', 'a:2:{i:0;i:34;i:1;i:67;}'),
('cookie_euhint_show', 'core', '1'),
('cookie_name', 'core', 'eqdkp_6aa47d'),
('cookie_path', 'core', '/'),
('custom_logo', 'core', 'logo.svg'),
('date_startday', 'core', 'monday'),
('debug', 'core', '0'),
('default_alimit', 'core', '100'),
('default_date_long', 'core', 'j. F Y'),
('default_date_short', 'core', 'd.m.y'),
('default_date_time', 'core', 'H:i'),
('default_elimit', 'core', '100'),
('default_game', 'core', 'dummy'),
('default_ilimit', 'core', '100'),
('default_lang', 'core', 'german'),
('default_locale', 'core', 'de_DE'),
('default_nlimit', 'core', '10'),
('default_rlimit', 'core', '100'),
('default_style', 'core', '1'),
('default_style_overwrite', 'core', '0'),
('dkp_name', 'core', 'DKP'),
('dttl', 'pdc', '86400'),
('embedly_key', 'core', '9bda60ed633e403e866dbca5f4c8e56d'),
('enable_captcha', 'core', '1'),
('enable_comments', 'core', '1'),
('enable_embedly', 'core', '1'),
('enable_gzip', 'core', '0'),
('enable_leaderboard', 'core', '1'),
('enable_points', 'core', '1'),
('enable_registration', 'core', '1'),
('eqdkp_layout', 'core', 'normal'),
('eqdkp_start', 'core', '1431351617'),
('failed_logins_inactivity', 'core', '5'),
('game_language', 'core', 'german'),
('game_version', 'core', '0.1.0'),
('guildtag', 'core', 'My Guild'),
('hide_inactive', 'core', '0'),
('inactive_period', 'core', '0'),
('inactive_point_adj', 'core', '0.00'),
('infotooltip_use', 'core', '0'),
('itemhistory_dia', 'core', '1'),
('mainmenu', 'core', 'a:8:{i:0;a:1:{s:4:"item";a:2:{s:4:"hash";s:32:"d41d8cd98f00b204e9800998ecf8427e";s:6:"hidden";s:1:"0";}}i:1;a:1:{s:4:"item";a:2:{s:4:"hash";s:32:"e2672c7758bc5f8bb38ddb4b60fa530c";s:6:"hidden";s:1:"0";}}i:2;a:2:{s:4:"item";a:2:{s:4:"hash";s:32:"92f04bcfb72b27949ee68f52a412acac";s:6:"hidden";s:1:"0";}s:7:"_childs";a:1:{i:0;a:1:{s:4:"item";a:2:{s:4:"hash";s:32:"7809b1008f1d915120b3b549ca033e1f";s:6:"hidden";s:1:"0";}}}}i:3;a:2:{s:4:"item";a:2:{s:4:"hash";s:32:"ca65b9cf176197c365f17035270cc9f1";s:6:"hidden";s:1:"0";}s:7:"_childs";a:4:{i:1;a:1:{s:4:"item";a:2:{s:4:"hash";s:32:"0e6acee4fa4635f2c25acbf0bad6c445";s:6:"hidden";s:1:"0";}}i:2;a:1:{s:4:"item";a:2:{s:4:"hash";s:32:"53433bf03b32b055f789428e95454cec";s:6:"hidden";s:1:"0";}}i:3;a:1:{s:4:"item";a:2:{s:4:"hash";s:32:"c1ec6e24e3276e17e3edcb08655d9181";s:6:"hidden";s:1:"0";}}i:4;a:1:{s:4:"item";a:2:{s:4:"hash";s:32:"65d93e089c21a737b601f81e70921b8b";s:6:"hidden";s:1:"0";}}}}i:4;a:1:{s:4:"item";a:2:{s:4:"hash";s:32:"8f9bfe9d1345237cb3b2b205864da075";s:6:"hidden";s:1:"0";}}i:5;a:2:{s:4:"item";a:2:{s:4:"hash";s:32:"ebc90e9afa50f8383d4f93ce9944b8dd";s:6:"hidden";s:1:"0";}s:7:"_childs";a:2:{i:5;a:1:{s:4:"item";a:2:{s:4:"hash";s:32:"276753faf0f1a394d24bea5fa54a4e6b";s:6:"hidden";s:1:"0";}}i:6;a:1:{s:4:"item";a:2:{s:4:"hash";s:32:"cd5f542b7201c8d9b8f697f97a2dcc52";s:6:"hidden";s:1:"0";}}}}i:6;a:1:{s:4:"item";a:2:{s:4:"hash";s:32:"292299380781735bd110e74fe0ada4ac";s:6:"hidden";s:1:"0";}}i:7;a:1:{s:4:"item";a:2:{s:4:"hash";s:32:"2a91cf06beec2894ebd9266c884558c3";s:6:"hidden";s:1:"0";}}}'),
('mode', 'pdc', 'file'),
('pk_attendance90', 'core', '1'),
('pk_lastraid', 'core', '1'),
('pk_maintenance_mode', 'core', '0'),
('pk_newsloot_limit', 'core', 'all'),
('plus_version', 'core', '2.0.2.0'),
('prefix', 'pdc', 'eqdkp20_'),
('round_activate', 'core', '1'),
('round_precision', 'core', '2'),
('seo_extension', 'core', '1'),
('server_path', 'core', '/'),
('session_cleanup', 'core', '0'),
('session_last_cleanup', 'core', '0'),
('session_length', 'core', '3600'),
('start_page', 'core', 'news'),
('thumbnail_defaultsize', 'core', '500'),
('timezone', 'core', 'Europe/Paris');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_events`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_events` (
`event_id` smallint(5) unsigned NOT NULL,
  `event_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `event_value` float(6,2) DEFAULT NULL,
  `event_added_by` varchar(30) COLLATE utf8_bin NOT NULL,
  `event_updated_by` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `event_icon` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_groups_raid`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_groups_raid` (
`groups_raid_id` int(11) NOT NULL,
  `groups_raid_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `groups_raid_color` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `groups_raid_desc` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `groups_raid_system` tinyint(1) NOT NULL DEFAULT '0',
  `groups_raid_default` tinyint(1) NOT NULL DEFAULT '0',
  `groups_raid_sortid` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `eqdkp20_groups_raid`
--

INSERT INTO `eqdkp20_groups_raid` (`groups_raid_id`, `groups_raid_name`, `groups_raid_color`, `groups_raid_desc`, `groups_raid_system`, `groups_raid_default`, `groups_raid_sortid`) VALUES
(1, 'Default', '#000000', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_groups_raid_members`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_groups_raid_members` (
  `group_id` int(22) NOT NULL,
  `member_id` int(22) NOT NULL,
  `grpleader` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_groups_user`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_groups_user` (
`groups_user_id` int(11) NOT NULL,
  `groups_user_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `groups_user_desc` varchar(255) COLLATE utf8_bin NOT NULL,
  `groups_user_deletable` tinyint(1) NOT NULL DEFAULT '0',
  `groups_user_default` tinyint(1) NOT NULL DEFAULT '0',
  `groups_user_hide` tinyint(1) NOT NULL DEFAULT '0',
  `groups_user_sortid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groups_user_team` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `eqdkp20_groups_user`
--

INSERT INTO `eqdkp20_groups_user` (`groups_user_id`, `groups_user_name`, `groups_user_desc`, `groups_user_deletable`, `groups_user_default`, `groups_user_hide`, `groups_user_sortid`, `groups_user_team`) VALUES
(1, 'Gäste', 'Gäste sind nicht eingeloggte Benutzer', 0, 0, 1, 0, 0),
(2, 'Super-Administratoren', 'Super-Administratoren haben sämtliche Rechte', 0, 0, 0, 0, 0),
(3, 'Administratoren', 'Administratoren haben nicht alle Admin-Rechte', 0, 0, 0, 0, 0),
(4, 'Mitglieder', 'Mitglieder', 0, 1, 0, 0, 0),
(5, 'Offiziere', 'Offiziere dürfen Raids verwalten', 1, 0, 0, 0, 0),
(6, 'Redakteure', 'Redakteure dürfen News schreiben und verwalten', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_groups_users`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `grpleader` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_itempool`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_itempool` (
`itempool_id` int(11) unsigned NOT NULL,
  `itempool_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `itempool_desc` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `eqdkp20_itempool`
--

INSERT INTO `eqdkp20_itempool` (`itempool_id`, `itempool_name`, `itempool_desc`) VALUES
(1, 'default', 'Default itempool');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_items`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_items` (
`item_id` int(10) unsigned NOT NULL,
  `item_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `member_id` smallint(5) unsigned NOT NULL,
  `raid_id` mediumint(8) unsigned NOT NULL,
  `item_value` float(10,2) DEFAULT NULL,
  `item_date` int(11) NOT NULL DEFAULT '0',
  `item_added_by` varchar(30) COLLATE utf8_bin NOT NULL,
  `item_updated_by` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `item_group_key` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `game_itemid` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `itempool_id` int(11) unsigned NOT NULL,
  `item_color` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_links`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_links` (
`link_id` int(12) NOT NULL,
  `link_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `link_window` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `link_menu` tinyint(4) NOT NULL DEFAULT '0',
  `link_sortid` int(11) NOT NULL DEFAULT '0',
  `link_visibility` text COLLATE utf8_bin NOT NULL,
  `link_height` int(12) NOT NULL DEFAULT '4024'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `eqdkp20_links`
--

INSERT INTO `eqdkp20_links` (`link_id`, `link_url`, `link_name`, `link_window`, `link_menu`, `link_sortid`, `link_visibility`, `link_height`) VALUES
(1, '#', 'Guild', '0', 0, 0, '[&#34;0&#34;]', 4024),
(2, '#', 'Links', '0', 0, 0, '[&#34;0&#34;]', 4024),
(3, 'http://eqdkp-plus.eu', 'EQdkp-Plus', '1', 0, 0, '[&#34;0&#34;]', 4024),
(4, '#', 'DKP-System', '0', 0, 0, '[&#34;0&#34;]', 4024);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_logs`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_logs` (
`log_id` int(11) unsigned NOT NULL,
  `log_date` int(11) NOT NULL DEFAULT '0',
  `log_value` text COLLATE utf8_bin NOT NULL,
  `log_ipaddress` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_sid` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_result` int(1) NOT NULL DEFAULT '1',
  `log_tag` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_plugin` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_flag` smallint(3) NOT NULL DEFAULT '0',
  `user_id` smallint(5) NOT NULL DEFAULT '0',
  `username` varchar(30) COLLATE utf8_bin NOT NULL,
  `log_record` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_record_id` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_members`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_members` (
`member_id` smallint(5) unsigned NOT NULL,
  `member_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `member_status` tinyint(1) NOT NULL DEFAULT '1',
  `member_rank_id` smallint(3) NOT NULL DEFAULT '0',
  `member_main_id` smallint(5) unsigned DEFAULT NULL,
  `member_creation_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_update` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `notes` text COLLATE utf8_bin,
  `profiledata` text COLLATE utf8_bin NOT NULL,
  `requested_del` tinyint(1) NOT NULL DEFAULT '0',
  `require_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `defaultrole` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_member_profilefields`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_member_profilefields` (
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `category` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `size` smallint(5) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `undeletable` tinyint(1) NOT NULL DEFAULT '0',
  `custom` tinyint(1) NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_bin,
  `options_language` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_member_ranks`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_member_ranks` (
  `rank_id` smallint(5) unsigned NOT NULL,
  `rank_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `rank_hide` tinyint(1) NOT NULL DEFAULT '0',
  `rank_prefix` varchar(75) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_suffix` varchar(75) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_sortid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rank_default` tinyint(1) NOT NULL DEFAULT '0',
  `rank_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_member_user`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_member_user` (
  `member_id` smallint(5) unsigned NOT NULL,
  `user_id` smallint(5) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_multidkp`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_multidkp` (
`multidkp_id` int(11) unsigned NOT NULL,
  `multidkp_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `multidkp_desc` text COLLATE utf8_bin NOT NULL,
  `multidkp_sortid` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `eqdkp20_multidkp`
--

INSERT INTO `eqdkp20_multidkp` (`multidkp_id`, `multidkp_name`, `multidkp_desc`, `multidkp_sortid`) VALUES
(1, 'Default', 'Default MultiDKPPool', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_multidkp2event`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_multidkp2event` (
  `multidkp2event_multi_id` int(11) NOT NULL,
  `multidkp2event_event_id` smallint(5) NOT NULL,
  `multidkp2event_no_attendance` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_multidkp2itempool`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_multidkp2itempool` (
  `multidkp2itempool_itempool_id` int(11) unsigned NOT NULL,
  `multidkp2itempool_multi_id` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp20_multidkp2itempool`
--

INSERT INTO `eqdkp20_multidkp2itempool` (`multidkp2itempool_itempool_id`, `multidkp2itempool_multi_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_notifications`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_notifications` (
`id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `read` tinyint(4) NOT NULL DEFAULT '0',
  `username` text COLLATE utf8_bin,
  `dataset_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `link` text COLLATE utf8_bin,
  `additional_data` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_notification_types`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_notification_types` (
  `id` varchar(50) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `category` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `prio` int(11) NOT NULL DEFAULT '0',
  `default` tinyint(4) NOT NULL DEFAULT '0',
  `group` tinyint(4) NOT NULL DEFAULT '0',
  `group_name` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `group_at` int(5) NOT NULL DEFAULT '0',
  `icon` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp20_notification_types`
--

INSERT INTO `eqdkp20_notification_types` (`id`, `name`, `category`, `prio`, `default`, `group`, `group_name`, `group_at`, `icon`) VALUES
('calendarevent_char_statuschange', 'notification_calendarevent_statuschange', 'calendarevent', 1, 0, 1, 'notification_calendarevent_statuschange_grouped', 3, 'fa-refresh'),
('calendarevent_mod_groupchange', 'notification_calendarevent_mod_groupchange', 'calendarevent', 0, 1, 0, 'notification_calendarevent_mod_groupchange_grouped', 3, 'fa-users'),
('calendarevent_mod_statuschange', 'notification_calendarevent_mod_statuschange', 'calendarevent', 0, 1, 0, 'notification_calendarevent_mod_statuschange_grouped', 3, 'fa-refresh'),
('calenderevent_closed', 'notification_calendarevent_closed', 'calendarevent', 0, 1, 0, '', 3, 'fa-lock'),
('calenderevent_opened', 'notification_calendarevent_opened', 'calendarevent', 0, 1, 0, '', 3, 'fa-unlock'),
('comment_new_article', 'notification_newcomment_article', 'articles', 0, 1, 1, 'notification_newcomment_article_grouped', 3, 'fa-comment'),
('comment_new_mentioned', 'notification_newmention', 'comment', 0, 1, 0, NULL, 0, 'fa-at'),
('comment_new_response', 'notification_newcomment_response', 'comment', 0, 1, 1, 'notification_newcomment_response_grouped', 3, 'fa-comments-o'),
('comment_new_userwall', 'notification_newcomment_userwall', 'userwall', 0, 1, 1, 'notification_newcomment_userwall_grouped', 3, 'fa-comment'),
('comment_new_userwall_response', 'notification_newcomment_userwall_response', 'userwall', 0, 1, 1, 'notification_newcomment_userwall_response_grouped', 3, 'fa-comments-o'),
('eqdkp_article_unpublished', 'notifaction_article_unpublished', 'articles', 1, 1, 0, NULL, 0, 'fa-file'),
('eqdkp_char_confirm_required', 'notification_char_confirm_required', 'chars', 1, 1, 0, NULL, 0, 'fa-check-square-o'),
('eqdkp_char_delete_requested', 'notification_char_delete_requested', 'chars', 1, 1, 0, NULL, 0, 'fa-trash'),
('eqdkp_user_enable_requested', 'notification_user_enable_requested', 'user', 1, 1, 1, 'notification_user_enable_requested_grouped', 3, 'fa-user');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_plugins`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_plugins` (
  `code` varchar(20) COLLATE utf8_bin NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `version` varchar(7) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_portal`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_portal` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `contact` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `autor` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `version` varchar(7) COLLATE utf8_bin NOT NULL DEFAULT '',
  `plugin` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `visibility` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'a:1:{i:0;i:0;}',
  `collapsable` tinyint(1) NOT NULL DEFAULT '1',
  `child` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_portal_blocks`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_portal_blocks` (
`id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `wide_content` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `eqdkp20_portal_blocks`
--

INSERT INTO `eqdkp20_portal_blocks` (`id`, `name`, `wide_content`) VALUES
(1, 'Header', 0),
(2, 'Footer', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_portal_layouts`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_portal_layouts` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `blocks` text COLLATE utf8_bin NOT NULL,
  `modules` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `eqdkp20_portal_layouts`
--

INSERT INTO `eqdkp20_portal_layouts` (`id`, `name`, `blocks`, `modules`) VALUES
(1, 'Standard', 'a:4:{i:0;s:4:"left";i:1;s:6:"middle";i:2;s:6:"bottom";i:3;s:5:"right";}', 'a:0:{}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_raids`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_raids` (
`raid_id` mediumint(8) unsigned NOT NULL,
  `event_id` smallint(5) unsigned NOT NULL,
  `raid_date` int(11) NOT NULL DEFAULT '0',
  `raid_note` text COLLATE utf8_bin,
  `raid_value` float(6,2) NOT NULL DEFAULT '0.00',
  `raid_added_by` varchar(30) COLLATE utf8_bin NOT NULL,
  `raid_updated_by` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `raid_additional_data` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_raid_attendees`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_raid_attendees` (
  `raid_id` mediumint(8) unsigned NOT NULL,
  `member_id` smallint(5) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_repository`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_repository` (
`id` int(10) unsigned NOT NULL,
  `plugin` varchar(255) COLLATE utf8_bin NOT NULL,
  `plugin_id` int(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `version` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `version_ext` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `level` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `changelog` text COLLATE utf8_bin,
  `dep_php` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dep_coreversion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rating` int(10) unsigned NOT NULL DEFAULT '0',
  `updated` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `bugtracker_url` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_roles`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_roles` (
`c_index` mediumint(5) unsigned NOT NULL,
  `role_id` mediumint(8) unsigned NOT NULL,
  `role_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `role_classes` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `eqdkp20_roles`
--

INSERT INTO `eqdkp20_roles` (`c_index`, `role_id`, `role_name`, `role_classes`) VALUES
(1, 1, 'Heiler', ''),
(2, 2, 'Tank', ''),
(3, 3, 'Fernkämpfer', ''),
(4, 4, 'Nahkämpfer', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_sessions`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_user_id` smallint(5) NOT NULL DEFAULT '-1',
  `session_last_visit` int(11) NOT NULL DEFAULT '0',
  `session_start` int(11) NOT NULL,
  `session_current` int(11) NOT NULL,
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `session_ip` varchar(50) COLLATE utf8_bin NOT NULL,
  `session_browser` text COLLATE utf8_bin,
  `session_key` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_type` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_perm_id` smallint(5) DEFAULT '-1',
  `session_failed_logins` int(10) unsigned NOT NULL DEFAULT '0',
  `session_vars` mediumtext COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_styles`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_styles` (
`style_id` smallint(5) unsigned NOT NULL,
  `style_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_version` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `style_contact` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `style_author` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `enabled` enum('0','1') COLLATE utf8_bin NOT NULL DEFAULT '0',
  `template_path` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'default',
  `body_background` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `body_link` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `body_link_style` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `body_hlink` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `body_hlink_style` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `header_link` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `header_link_style` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `header_hlink` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `header_hlink_style` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `tr_color1` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `tr_color2` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `th_color1` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `fontface1` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `fontface2` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `fontface3` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `fontsize1` tinyint(4) DEFAULT NULL,
  `fontsize2` tinyint(4) DEFAULT NULL,
  `fontsize3` tinyint(4) DEFAULT NULL,
  `fontcolor1` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `fontcolor2` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `fontcolor3` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `fontcolor_neg` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `fontcolor_pos` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `table_border_width` tinyint(3) DEFAULT NULL,
  `table_border_color` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `table_border_style` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `input_color` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `input_border_width` tinyint(3) DEFAULT NULL,
  `input_border_color` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `input_border_style` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `attendees_columns` enum('1','2','3','4','5','6','7','8','9','10') COLLATE utf8_bin NOT NULL DEFAULT '6',
  `logo_position` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `background_img` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `css_file` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `use_db_vars` tinyint(1) unsigned DEFAULT NULL,
  `column_right_width` varchar(20) COLLATE utf8_bin DEFAULT '',
  `column_left_width` varchar(20) COLLATE utf8_bin DEFAULT '',
  `portal_width` varchar(20) COLLATE utf8_bin DEFAULT '',
  `background_pos` varchar(20) COLLATE utf8_bin DEFAULT 'normal',
  `background_type` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `eqdkp20_styles`
--

INSERT INTO `eqdkp20_styles` (`style_id`, `style_name`, `style_version`, `style_contact`, `style_author`, `enabled`, `template_path`, `body_background`, `body_link`, `body_link_style`, `body_hlink`, `body_hlink_style`, `header_link`, `header_link_style`, `header_hlink`, `header_hlink_style`, `tr_color1`, `tr_color2`, `th_color1`, `fontface1`, `fontface2`, `fontface3`, `fontsize1`, `fontsize2`, `fontsize3`, `fontcolor1`, `fontcolor2`, `fontcolor3`, `fontcolor_neg`, `fontcolor_pos`, `table_border_width`, `table_border_color`, `table_border_style`, `input_color`, `input_border_width`, `input_border_color`, `input_border_style`, `attendees_columns`, `logo_position`, `background_img`, `css_file`, `use_db_vars`, `column_right_width`, `column_left_width`, `portal_width`, `background_pos`, `background_type`) VALUES
(1, 'EQdkp Modern', '0.0.1', '', 'GodMod', '1', 'eqdkp_modern', '#2B577C', '#C5E5FF', 'none', '#EEEEEE', 'none', '#FFFFFF', 'none', '#C3E5FF', 'none', '#14293B', '#1D3953', '#2B577C', 'Verdana, Arial, Helvetica, sans-serif', 'Verdana, Arial, Helvetica, sans-serif', 'Verdana, Arial, Helvetica, sans-serif', 10, 11, 12, '#EEEEEE', '#C3E5FF', '#000000', '#FF0000', '#008800', 1, '#999999', 'solid', '#EEEEEE', 1, '#2B577C', 'solid', '6', 'left', '', '', 1, '0px', '0px', '0px', 'normal', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_users`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_users` (
`user_id` smallint(5) unsigned NOT NULL,
  `username` varchar(30) COLLATE utf8_bin NOT NULL,
  `user_password` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_login_key` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_alimit` smallint(4) NOT NULL DEFAULT '100',
  `user_climit` smallint(4) NOT NULL DEFAULT '100',
  `user_elimit` smallint(4) NOT NULL DEFAULT '100',
  `user_ilimit` smallint(4) NOT NULL DEFAULT '100',
  `user_nlimit` smallint(2) NOT NULL DEFAULT '10',
  `user_rlimit` smallint(4) NOT NULL DEFAULT '100',
  `user_date_time` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `user_date_short` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `user_date_long` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `user_style` tinyint(4) DEFAULT NULL,
  `user_lang` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_timezone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_key` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `user_lastvisit` int(11) NOT NULL DEFAULT '0',
  `user_lastpage` varchar(255) COLLATE utf8_bin DEFAULT '',
  `user_registered` int(11) unsigned NOT NULL DEFAULT '0',
  `user_active` tinyint(1) NOT NULL DEFAULT '1',
  `custom_fields` text COLLATE utf8_bin,
  `plugin_settings` text COLLATE utf8_bin,
  `country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `birthday` bigint(10) DEFAULT '0',
  `privacy_settings` text COLLATE utf8_bin,
  `rules` tinyint(3) unsigned DEFAULT '0',
  `auth_account` text COLLATE utf8_bin,
  `failed_login_attempts` int(3) NOT NULL DEFAULT '0',
  `exchange_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `hide_nochar_info` tinyint(1) DEFAULT '0',
  `notifications` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp20_user_profilefields`
--

CREATE TABLE IF NOT EXISTS `eqdkp20_user_profilefields` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `lang_var` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(30) COLLATE utf8_bin NOT NULL,
  `length` int(10) unsigned NOT NULL DEFAULT '30',
  `minlength` int(10) unsigned NOT NULL DEFAULT '1',
  `validation` text COLLATE utf8_bin NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `show_on_registration` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  `is_contact` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `contact_url` text COLLATE utf8_bin,
  `icon_or_image` text COLLATE utf8_bin,
  `bridge_field` text COLLATE utf8_bin,
  `options` text COLLATE utf8_bin,
  `editable` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- Daten für Tabelle `eqdkp20_user_profilefields`
--

INSERT INTO `eqdkp20_user_profilefields` (`id`, `name`, `lang_var`, `type`, `length`, `minlength`, `validation`, `required`, `show_on_registration`, `enabled`, `sort_order`, `is_contact`, `contact_url`, `icon_or_image`, `bridge_field`, `options`, `editable`) VALUES
(1, 'location', 'userpf_location', 'text', 100, 2, '', 0, 0, 1, 2, 0, '', 'fa-map-marker', '', 'a:1:{s:7:"options";a:0:{}}', 1),
(2, 'website', 'userpf_website', 'link', 255, 10, '', 0, 0, 1, 12, 1, '%s', 'fa-globe', NULL, NULL, 1),
(3, 'interests', 'userpf_interests', 'textarea', 500, 2, '', 0, 0, 1, 3, 0, NULL, NULL, NULL, NULL, 1),
(4, 'occupation', 'userpf_occupation', 'textarea', 500, 2, '', 0, 0, 1, 4, 0, NULL, NULL, NULL, NULL, 1),
(5, 'facebook', 'userpf_facebook', 'link', 50, 5, '[\\w.]+', 0, 0, 1, 5, 1, 'https://facebook.com/%s/', 'fa-facebook-square', NULL, NULL, 1),
(6, 'twitter', 'userpf_twitter', 'link', 15, 1, '[\\w_]+', 0, 0, 1, 6, 1, 'https://twitter.com/%s', 'fa-twitter-square', NULL, NULL, 1),
(7, 'skype', 'userpf_skype', 'link', 32, 1, '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 1, 7, 1, 'skype:%s?userinfo', 'fa-skype', '', 'a:1:{s:7:"options";a:0:{}}', 1),
(8, 'youtube', 'userpf_youtube', 'link', 60, 6, '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 1, 8, 1, 'http://youtube.com/user/%s', 'fa-youtube', NULL, NULL, 1),
(9, 'googleplus', 'userpf_googleplus', 'link', 255, 3, '[\\w]+', 0, 0, 1, 9, 1, 'http://plus.google.com/%s', 'fa-google-plus-square', NULL, NULL, 1),
(10, 'icq', 'userpf_icq', 'link', 15, 3, '[0-9]+', 0, 0, 1, 10, 1, 'https://www.icq.com/people/%s/', '', '', 'a:1:{s:7:"options";a:0:{}}', 1),
(11, 'mobile', 'userpf_mobile', 'text', 30, 6, '[0-9\\+\\/\\-]+', 0, 0, 1, 11, 1, '%s', 'fa-mobile-phone', NULL, NULL, 1),
(12, 'name', 'userpf_name', 'text', 50, 1, '', 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, 1),
(13, 'lastname', 'userpf_lastname', 'text', 50, 1, '', 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eqdkp20_adjustments`
--
ALTER TABLE `eqdkp20_adjustments`
 ADD PRIMARY KEY (`adjustment_id`);

--
-- Indexes for table `eqdkp20_articles`
--
ALTER TABLE `eqdkp20_articles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eqdkp20_article_categories`
--
ALTER TABLE `eqdkp20_article_categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eqdkp20_auth_groups`
--
ALTER TABLE `eqdkp20_auth_groups`
 ADD KEY `auth_id` (`auth_id`), ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `eqdkp20_auth_options`
--
ALTER TABLE `eqdkp20_auth_options`
 ADD PRIMARY KEY (`auth_id`), ADD KEY `auth_value` (`auth_value`);

--
-- Indexes for table `eqdkp20_auth_users`
--
ALTER TABLE `eqdkp20_auth_users`
 ADD KEY `auth_id` (`auth_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `eqdkp20_calendars`
--
ALTER TABLE `eqdkp20_calendars`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eqdkp20_calendar_events`
--
ALTER TABLE `eqdkp20_calendar_events`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eqdkp20_calendar_raid_attendees`
--
ALTER TABLE `eqdkp20_calendar_raid_attendees`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eqdkp20_calendar_raid_guests`
--
ALTER TABLE `eqdkp20_calendar_raid_guests`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eqdkp20_calendar_raid_templates`
--
ALTER TABLE `eqdkp20_calendar_raid_templates`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eqdkp20_classcolors`
--
ALTER TABLE `eqdkp20_classcolors`
 ADD PRIMARY KEY (`class_id`,`template`);

--
-- Indexes for table `eqdkp20_comments`
--
ALTER TABLE `eqdkp20_comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eqdkp20_config`
--
ALTER TABLE `eqdkp20_config`
 ADD PRIMARY KEY (`config_name`,`config_plugin`);

--
-- Indexes for table `eqdkp20_events`
--
ALTER TABLE `eqdkp20_events`
 ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `eqdkp20_groups_raid`
--
ALTER TABLE `eqdkp20_groups_raid`
 ADD PRIMARY KEY (`groups_raid_id`);

--
-- Indexes for table `eqdkp20_groups_user`
--
ALTER TABLE `eqdkp20_groups_user`
 ADD PRIMARY KEY (`groups_user_id`);

--
-- Indexes for table `eqdkp20_itempool`
--
ALTER TABLE `eqdkp20_itempool`
 ADD PRIMARY KEY (`itempool_id`);

--
-- Indexes for table `eqdkp20_items`
--
ALTER TABLE `eqdkp20_items`
 ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `eqdkp20_links`
--
ALTER TABLE `eqdkp20_links`
 ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `eqdkp20_logs`
--
ALTER TABLE `eqdkp20_logs`
 ADD PRIMARY KEY (`log_id`), ADD KEY `user_id` (`user_id`), ADD KEY `log_tag` (`log_tag`), ADD KEY `log_ipaddress` (`log_ipaddress`);

--
-- Indexes for table `eqdkp20_members`
--
ALTER TABLE `eqdkp20_members`
 ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `eqdkp20_member_profilefields`
--
ALTER TABLE `eqdkp20_member_profilefields`
 ADD PRIMARY KEY (`name`);

--
-- Indexes for table `eqdkp20_member_ranks`
--
ALTER TABLE `eqdkp20_member_ranks`
 ADD UNIQUE KEY `rank_id` (`rank_id`);

--
-- Indexes for table `eqdkp20_member_user`
--
ALTER TABLE `eqdkp20_member_user`
 ADD KEY `member_id` (`member_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `eqdkp20_multidkp`
--
ALTER TABLE `eqdkp20_multidkp`
 ADD PRIMARY KEY (`multidkp_id`);

--
-- Indexes for table `eqdkp20_multidkp2event`
--
ALTER TABLE `eqdkp20_multidkp2event`
 ADD PRIMARY KEY (`multidkp2event_multi_id`,`multidkp2event_event_id`);

--
-- Indexes for table `eqdkp20_multidkp2itempool`
--
ALTER TABLE `eqdkp20_multidkp2itempool`
 ADD PRIMARY KEY (`multidkp2itempool_itempool_id`,`multidkp2itempool_multi_id`);

--
-- Indexes for table `eqdkp20_notifications`
--
ALTER TABLE `eqdkp20_notifications`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eqdkp20_notification_types`
--
ALTER TABLE `eqdkp20_notification_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eqdkp20_plugins`
--
ALTER TABLE `eqdkp20_plugins`
 ADD PRIMARY KEY (`code`);

--
-- Indexes for table `eqdkp20_portal`
--
ALTER TABLE `eqdkp20_portal`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eqdkp20_portal_blocks`
--
ALTER TABLE `eqdkp20_portal_blocks`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eqdkp20_portal_layouts`
--
ALTER TABLE `eqdkp20_portal_layouts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eqdkp20_raids`
--
ALTER TABLE `eqdkp20_raids`
 ADD PRIMARY KEY (`raid_id`);

--
-- Indexes for table `eqdkp20_raid_attendees`
--
ALTER TABLE `eqdkp20_raid_attendees`
 ADD KEY `raid_id` (`raid_id`), ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `eqdkp20_repository`
--
ALTER TABLE `eqdkp20_repository`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eqdkp20_roles`
--
ALTER TABLE `eqdkp20_roles`
 ADD PRIMARY KEY (`c_index`);

--
-- Indexes for table `eqdkp20_sessions`
--
ALTER TABLE `eqdkp20_sessions`
 ADD PRIMARY KEY (`session_id`), ADD KEY `session_current` (`session_current`);

--
-- Indexes for table `eqdkp20_styles`
--
ALTER TABLE `eqdkp20_styles`
 ADD PRIMARY KEY (`style_id`);

--
-- Indexes for table `eqdkp20_users`
--
ALTER TABLE `eqdkp20_users`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `eqdkp20_user_profilefields`
--
ALTER TABLE `eqdkp20_user_profilefields`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eqdkp20_adjustments`
--
ALTER TABLE `eqdkp20_adjustments`
MODIFY `adjustment_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eqdkp20_articles`
--
ALTER TABLE `eqdkp20_articles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `eqdkp20_article_categories`
--
ALTER TABLE `eqdkp20_article_categories`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `eqdkp20_auth_options`
--
ALTER TABLE `eqdkp20_auth_options`
MODIFY `auth_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `eqdkp20_calendars`
--
ALTER TABLE `eqdkp20_calendars`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eqdkp20_calendar_events`
--
ALTER TABLE `eqdkp20_calendar_events`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eqdkp20_calendar_raid_attendees`
--
ALTER TABLE `eqdkp20_calendar_raid_attendees`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eqdkp20_calendar_raid_guests`
--
ALTER TABLE `eqdkp20_calendar_raid_guests`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eqdkp20_calendar_raid_templates`
--
ALTER TABLE `eqdkp20_calendar_raid_templates`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eqdkp20_comments`
--
ALTER TABLE `eqdkp20_comments`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eqdkp20_events`
--
ALTER TABLE `eqdkp20_events`
MODIFY `event_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eqdkp20_groups_raid`
--
ALTER TABLE `eqdkp20_groups_raid`
MODIFY `groups_raid_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `eqdkp20_groups_user`
--
ALTER TABLE `eqdkp20_groups_user`
MODIFY `groups_user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `eqdkp20_itempool`
--
ALTER TABLE `eqdkp20_itempool`
MODIFY `itempool_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `eqdkp20_items`
--
ALTER TABLE `eqdkp20_items`
MODIFY `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eqdkp20_links`
--
ALTER TABLE `eqdkp20_links`
MODIFY `link_id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `eqdkp20_logs`
--
ALTER TABLE `eqdkp20_logs`
MODIFY `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eqdkp20_members`
--
ALTER TABLE `eqdkp20_members`
MODIFY `member_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eqdkp20_multidkp`
--
ALTER TABLE `eqdkp20_multidkp`
MODIFY `multidkp_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `eqdkp20_notifications`
--
ALTER TABLE `eqdkp20_notifications`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eqdkp20_portal`
--
ALTER TABLE `eqdkp20_portal`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eqdkp20_portal_blocks`
--
ALTER TABLE `eqdkp20_portal_blocks`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `eqdkp20_portal_layouts`
--
ALTER TABLE `eqdkp20_portal_layouts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `eqdkp20_raids`
--
ALTER TABLE `eqdkp20_raids`
MODIFY `raid_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eqdkp20_repository`
--
ALTER TABLE `eqdkp20_repository`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eqdkp20_roles`
--
ALTER TABLE `eqdkp20_roles`
MODIFY `c_index` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `eqdkp20_styles`
--
ALTER TABLE `eqdkp20_styles`
MODIFY `style_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `eqdkp20_users`
--
ALTER TABLE `eqdkp20_users`
MODIFY `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eqdkp20_user_profilefields`
--
ALTER TABLE `eqdkp20_user_profilefields`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
