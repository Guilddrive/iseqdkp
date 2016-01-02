-- MySQL Template for EQdkp Plus 2.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `sample`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_adjustments`
--

CREATE TABLE `eqdkp22_adjustments` (
  `adjustment_id` mediumint(8) UNSIGNED NOT NULL,
  `adjustment_value` float(11,2) DEFAULT NULL,
  `adjustment_date` int(11) NOT NULL DEFAULT '0',
  `member_id` smallint(5) UNSIGNED NOT NULL,
  `adjustment_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `adjustment_added_by` varchar(30) COLLATE utf8_bin NOT NULL,
  `adjustment_updated_by` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `adjustment_group_key` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `event_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `raid_id` mediumint(8) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_articles`
--

CREATE TABLE `eqdkp22_articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8_bin NOT NULL,
  `text` mediumtext COLLATE utf8_bin NOT NULL,
  `category` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `comments` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `votes` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `show_from` varchar(11) COLLATE utf8_bin NOT NULL DEFAULT '',
  `show_to` varchar(11) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `previewimage` text COLLATE utf8_bin NOT NULL,
  `alias` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sort_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tags` text COLLATE utf8_bin NOT NULL,
  `votes_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `votes_sum` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `votes_users` text COLLATE utf8_bin,
  `last_edited` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_edited_user` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `page_objects` text COLLATE utf8_bin,
  `hide_header` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `index` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `undeletable` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_articles`
--

INSERT INTO `eqdkp22_articles` (`id`, `title`, `text`, `category`, `featured`, `comments`, `votes`, `published`, `show_from`, `show_to`, `user_id`, `date`, `previewimage`, `alias`, `hits`, `sort_id`, `tags`, `votes_count`, `votes_sum`, `votes_users`, `last_edited`, `last_edited_user`, `page_objects`, `hide_header`, `index`, `undeletable`) VALUES
(1, 'Neue Funktionen von EQdkp Plus', '&lt;p&gt;Das EQdkp Plus 2.0 stellt wesentliche neue Funktionen zur Verfügung. Dieser Artikel dient dazu, diese Funktionen etwas näher kennenzulernen.&lt;/p&gt;\n&lt;h3&gt;Artikelsystem&lt;/h3&gt;\n&lt;p&gt;Anstatt der früheren News und Infoseiten basiert nun alles auf einem Artikelsystem. Jede News und jede Seite ist dabei ein Artikel. Über Artikelkategorien können diese leicht gruppiert werden. Auch kann man dadurch Blogs ermöglichen.&lt;/p&gt;\n&lt;p&gt;Die einzelnen Artikel können über einen Weiterlesen-Bereich und Seitenumbrüchen aufgeteilt werden. Auch besteht die Möglichkeit, über den Editor Bildergalerien, Items oder Raidloot in einen Artikel einzufügen.&lt;/p&gt;\n&lt;h3&gt;Medienverwaltung&lt;/h3&gt;\n&lt;p&gt;Durch die Medienverwaltung ist es nun ein leichtes, Medien in Artikel hinzuzufügen. Dateien können so zum Beispiel über Drag&amp;Drop einfach hochgeladen werden. Desweiteren können Bilder sogar im Medieneditor bearbeitet werden.&lt;/p&gt;\n&lt;h3&gt;Menüverwaltung&lt;/h3&gt;\n&lt;p&gt;Eine weitere Neuerung ist, dass es nur noch ein zentrales Menü gibt, dass frei angepasst werden kann. Die einzelnen Einträge lassen sich mittels Drag&amp;Drop positieren, und dass sogar in bis zu 3 Ebenen, so dass Untermenüs enstehen. Wie von bisherigen EQdkp Plus Versionen gewohnt, lassen sich auch Links zu externen Seiten anlegen, alles zentral über den &quot;Link hinzufügen&quot;-Button, wo man auch die Verlinkung zu Artikel und -Kategorien vornimmt.&lt;/p&gt;\n&lt;h3&gt;Portalverwaltung&lt;/h3&gt;\n&lt;p&gt;Früher gab es nur ein ein Portallayout, d.h. auf allen Seiten waren die Portalmodule gleich. Das hat sich nun geändert. So kann man Artikelkategorien andere Portallayouts zuweisen.&lt;/p&gt;\n&lt;p&gt;Desweiteren besteht die Möglichkeit, eigene Portalblöcke anzulegen, so dass man diese im Template einbindet, um z.B. Links im Footer einfacher verwalten zu können.&lt;/p&gt;', 2, 1, 1, 0, 1, '', '', 1, 1451699925, '', 'new-features', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1451699925, 1, NULL, 0, 0, 0),
(5, 'Charakter', '&lt;p class=&quot;system-article&quot; title=&quot;character&quot;&gt;character&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 9, 0, 1, 0, 1, '', '', 1, 1451699925, '', 'index_character', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1451699925, 1, 'a:1:{i:0;s:9:"character";}', 1, 1, 1),
(6, 'Roster', '&lt;p class=&quot;system-article&quot; title=&quot;roster&quot;&gt;roster&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 7, 0, 0, 0, 1, '', '', 1, 1451699925, '', 'index_roster', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1451699925, 1, 'a:1:{i:0;s:6:"roster";}', 1, 1, 1),
(7, 'Events', '&lt;p class=&quot;system-article&quot; title=&quot;events&quot;&gt;events&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 3, 0, 0, 0, 1, '', '', 1, 1451699925, '', 'index_events', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1451699925, 1, 'a:1:{i:0;s:6:"events";}', 1, 1, 1),
(8, 'Items', '&lt;p class=&quot;system-article&quot; title=&quot;items&quot;&gt;items&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 4, 0, 0, 0, 1, '', '', 1, 1451699925, '', 'index_items', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1451699925, 1, 'a:1:{i:0;s:5:"items";}', 1, 1, 1),
(9, 'Punktestand', '&lt;p class=&quot;system-article&quot; title=&quot;points&quot;&gt;points&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 8, 0, 0, 0, 1, '', '', 1, 1451699925, '', 'index_points', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1451699925, 1, 'a:1:{i:0;s:6:"points";}', 1, 1, 1),
(10, 'Raids', '&lt;p class=&quot;system-article&quot; title=&quot;raids&quot;&gt;raids&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 5, 0, 0, 0, 1, '', '', 1, 1451699925, '', 'index_raids', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1451699925, 1, 'a:1:{i:0;s:5:"raids";}', 1, 1, 1),
(11, 'Willkommen bei EQdkp-Plus', '<p>Die Installation deines EQdkp-Plus wurde erfolgreich abgeschlossen - du kannst es nun nach deinen Wünschen einrichten.</p>\n<p>Hilfestellungen zur Aministration und zur Allgemeinen Benutzung des EQdkps findest Du in unserer <a href="http://eqdkp-plus.eu/wiki/" target="_blank">Wiki</a>.</p>\n<p>Für weitere Hilfe steht dir unser <a href="http://eqdkp-plus.eu/forum" target="_blank">Forum</a> zur Verfügung.</p>\n<p>Viel Spaß mit dem EQdkp-Plus wünscht das gesamte EQdkp-Plus-Team!</p>', 2, 1, 1, 0, 1, '', '', 1, 1451699925, '', 'welcome', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1451699925, 1, NULL, 0, 0, 0),
(12, 'Kalenderevent', '&lt;p class=&quot;system-article&quot; title=&quot;calendarevent&quot;&gt;calendarevent&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 6, 0, 1, 0, 1, '', '', 1, 1451699925, '', 'calendarevent', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1451699925, 1, 'a:1:{i:0;s:13:"calendarevent";}', 1, 0, 1),
(13, 'Kalender', '&lt;p class=&quot;system-article&quot; title=&quot;calendar&quot;&gt;calendar&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 6, 0, 0, 0, 1, '', '', 1, 1451699925, '', 'index_calendar', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, '', 1451699925, 1, 'a:1:{i:0;s:8:"calendar";}', 1, 1, 1),
(14, 'Gildenregeln', '&lt;p&gt;You can use this page to display rules the user must accept before registering.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Please do not change the Alias of this Page.&lt;/strong&gt;&lt;/p&gt;', 1, 0, 0, 0, 0, '', '', 1, 1451699925, '', 'guildrules', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, NULL, 1451699925, 1, 'a:0:{}', 1, 0, 0),
(15, 'Datenschutz', '&lt;h2&gt;&lt;strong&gt;Datenschutz&lt;/strong&gt;&lt;/h2&gt;\n&lt;p&gt;Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten möglich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit möglich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdrückliche Zustimmung nicht an Dritte weitergegeben.&lt;/p&gt;\n&lt;p&gt;Wir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich.&lt;/p&gt;\n&lt;p&gt;Der Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten durch Dritte zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdrücklich widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Datenschutzerklärung für die Nutzung von Facebook-Plugins (Like-Button)&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;Auf unseren Seiten sind Plugins des sozialen Netzwerks Facebook (Facebook Inc., 1601 Willow Road, Menlo Park, California, 94025, USA) integriert. Die Facebook-Plugins erkennen Sie an dem Facebook-Logo oder dem &quot;Like-Button&quot; (&quot;Gefällt mir&quot;) auf unserer Seite. Eine Übersicht über die Facebook-Plugins finden Sie hier: &lt;a href=&quot;http://developers.facebook.com/docs/plugins/&quot; rel=&quot;nofollow&quot;&gt;http://developers.facebook.com/docs/plugins/&lt;/a&gt;&lt;br /&gt; Wenn Sie unsere Seiten besuchen, wird über das Plugin eine direkte Verbindung zwischen Ihrem Browser und dem Facebook-Server hergestellt. Facebook erhält dadurch die Information, dass Sie mit Ihrer IP-Adresse unsere Seite besucht haben. Wenn Sie den Facebook &quot;Like-Button&quot; anklicken während Sie in Ihrem Facebook-Account eingeloggt sind, können Sie die Inhalte unserer Seiten auf Ihrem Facebook-Profil verlinken. Dadurch kann Facebook den Besuch unserer Seiten Ihrem Benutzerkonto zuordnen. Wir weisen darauf hin, dass wir als Anbieter der Seiten keine Kenntnis vom Inhalt der übermittelten Daten sowie deren Nutzung durch Facebook erhalten. Weitere Informationen hierzu finden Sie in der Datenschutzerklärung von facebook unter &lt;a href=&quot;https://de-de.facebook.com/policy.php&quot; rel=&quot;nofollow&quot;&gt;https://de-de.facebook.com/policy.php&lt;/a&gt;.&lt;/p&gt;\n&lt;p&gt;Wenn Sie nicht wünschen, dass Facebook den Besuch unserer Seiten Ihrem Facebook-Nutzerkonto zuordnen kann, loggen Sie sich bitte aus Ihrem Facebook-Benutzerkonto aus.&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Datenschutzerklärung für die Nutzung von Google +1&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em&gt;Erfassung und Weitergabe von Informationen:&lt;/em&gt;&lt;br /&gt; Mithilfe der Google +1-Schaltfläche können Sie Informationen weltweit veröffentlichen. Über die Google +1-Schaltfläche erhalten Sie und andere Nutzer personalisierte Inhalte von Google und unseren Partnern. Google speichert sowohl die Information, dass Sie für einen Inhalt +1 gegeben haben, als auch Informationen über die Seite, die Sie beim Klicken auf +1 angesehen haben. Ihre +1 können als Hinweise zusammen mit Ihrem Profilnamen und Ihrem Foto in Google-Diensten, wie etwa in Suchergebnissen oder in Ihrem Google-Profil, oder an anderen Stellen auf Websites und Anzeigen im Internet eingeblendet werden.&lt;br /&gt; Google zeichnet Informationen über Ihre +1-Aktivitäten auf, um die Google-Dienste für Sie und andere zu verbessern. Um die Google +1-Schaltfläche verwenden zu können, benötigen Sie ein weltweit sichtbares, öffentliches Google-Profil, das zumindest den für das Profil gewählten Namen enthalten muss. Dieser Name wird in allen Google-Diensten verwendet. In manchen Fällen kann dieser Name auch einen anderen Namen ersetzen, den Sie beim Teilen von Inhalten über Ihr Google-Konto verwendet haben. Die Identität Ihres Google-Profils kann Nutzern angezeigt werden, die Ihre E-Mail-Adresse kennen oder über andere identifizierende Informationen von Ihnen verfügen.&lt;br /&gt; &lt;br /&gt; &lt;em&gt;Verwendung der erfassten Informationen:&lt;/em&gt;&lt;br /&gt; Neben den oben erläuterten Verwendungszwecken werden die von Ihnen bereitgestellten Informationen gemäß den geltenden Google-Datenschutzbestimmungen genutzt. Google veröffentlicht möglicherweise zusammengefasste Statistiken über die +1-Aktivitäten der Nutzer bzw. gibt diese an Nutzer und Partner weiter, wie etwa Publisher, Inserenten oder verbundene Websites.&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Datenschutzerklärung für die Nutzung von Twitter&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;Auf unseren Seiten sind Funktionen des Dienstes Twitter eingebunden. Diese Funktionen werden angeboten durch die Twitter Inc., Twitter, Inc. 1355 Market St, Suite 900, San Francisco, CA 94103, USA. Durch das Benutzen von Twitter und der Funktion &quot;Re-Tweet&quot; werden die von Ihnen besuchten Webseiten mit Ihrem Twitter-Account verknüpft und anderen Nutzern bekannt gegeben. Dabei werden auch Daten an Twitter übertragen.&lt;/p&gt;\n&lt;p&gt;Wir weisen darauf hin, dass wir als Anbieter der Seiten keine Kenntnis vom Inhalt der übermittelten Daten sowie deren Nutzung durch Twitter erhalten. Weitere Informationen hierzu finden Sie in der Datenschutzerklärung von Twitter unter &lt;a href=&quot;http://twitter.com/privacy&quot; rel=&quot;nofollow&quot;&gt;http://twitter.com/privacy&lt;/a&gt;.&lt;/p&gt;\n&lt;p&gt;Ihre Datenschutzeinstellungen bei Twitter können Sie in den Konto-Einstellungen unter &lt;a href=&quot;http://twitter.com/account/settings&quot; rel=&quot;nofollow&quot;&gt;http://twitter.com/account/settings&lt;/a&gt; ändern.&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;\n&lt;h2&gt;&lt;a id=&quot;Cookies&quot;&gt;&lt;/a&gt;Cookie-Verwendung&lt;/h2&gt;\n&lt;p&gt;Diese Seite nutzt wie viele anderen Internetseiten Cookies. Im Folgenden wird erläutert, was Cookies sind und wie diese verwendet werden.&lt;/p&gt;\n&lt;h3&gt;Was sind Cookies?&lt;/h3&gt;\n&lt;p&gt;Cookies sind kleine Dateien, die beim Aufruf von Internetseiten durch den Browser lokal auf dem Rechner gespeichert werden. Internetseiten speichern in diesen Dateien Informationen ab, zum Beispiel verschlüsselte Zugangsdaten, um den Benutzer bei einem Seitenbesuch automatisch anmelden zu können. Es ist mit Cookies aber auch möglich, das Internetverhalten von Benutzern zu verfolgen. Deswegen wird nun erläutert, wie unsere Cookies verwendet werden.&lt;/p&gt;\n&lt;h3&gt;Wie wir Cookies nutzen&lt;/h3&gt;\n&lt;p&gt;Wir setzen Cookies für folgende Zwecke ein:&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt;Anmeldung: Wird bei der Anmeldung die Option &quot;Mich bei jedem Besuch automatisch anmelden&quot; aktiviert oder die Anmeldung über Drittanbieter durchgeführt, werden verschlüsselte Zugangsdaten als Cookie abgelegt, um den Benutzer ohne die Eingabe von Zugangsdaten anmelden zu können.&lt;/li&gt;\n&lt;li&gt;Sitzung: Beim ersten Aufruf unserer Seite wird eine neue Sitzung gestartet, diese wird durch ein eindeutiges Cookies dem Computer des Benutzers zugeordnet. Mit Sitzungen ist es möglich, den Benutzer über jeden Seitenaufruf identifizieren zu können, und ihm alle Funktionalitäten bereistellen zu können.&lt;/li&gt;\n&lt;li&gt;Drittanbieter-Dienste: Die Einblendung von Werbeanzeigen oder das Teilen von Inhalten auf sozialen Netzwerken oder vergleichbaren Internetseiten kann die Erzeugung eines Cookies zur Folge haben. Diese Cookies werden nicht direkt von unserer Seite erzeugt, sondern durch den Drittanbieter selbst.&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;Die Cookies &quot;Anmeldung&quot; und &quot;Sitzung&quot; werden nur von unserer Seite angelegt, und können auch nur von unserer Seite ausgelesen werden. Dies ist bei Cookies von Drittanbieter-Diensten nicht der Fall, so dass diese das Internetverhalten des Benutzers durch deren Cookies verfolgen können.&lt;/p&gt;\n&lt;h3&gt;Cookies deaktivieren und entfernen&lt;/h3&gt;\n&lt;p class=&quot;externalURL&quot;&gt;Cookies können in den Einstellungen Ihres Browsers verwaltet und entfernt werden. Darüber hinaus lässt sich in den Einstellungen das Speichern von Cookies zudem vollständig deaktivieren. Eine Anleitung zum Entfernen und Deaktivieren von Cookies kann der Hilfeseite des jeweiligen Browsers entnommen werden.&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em&gt;Quellenangaben: &lt;a href=&quot;http://www.e-recht24.de/muster-datenschutzerklaerung.html&quot; target=&quot;_blank&quot; rel=&quot;nofollow&quot;&gt;eRecht24&lt;/a&gt;, &lt;a href=&quot;http://www.e-recht24.de/artikel/datenschutz/6590-facebook-like-button-datenschutz-disclaimer.html&quot; target=&quot;_blank&quot; rel=&quot;nofollow&quot;&gt;eRecht24 Datenschutzerklärung für Facebook&lt;/a&gt;, &lt;a href=&quot;http://www.google.com/intl/de/+/policy/+1button.html&quot; target=&quot;_blank&quot; rel=&quot;nofollow&quot;&gt;Datenschutzerklärung für Google +1&lt;/a&gt;, &lt;a href=&quot;http://twitter.com/privacy&quot;&gt; Twitter Datenschutzerklärung&lt;/a&gt;&lt;/em&gt;&lt;/p&gt;', 1, 0, 0, 0, 1, '', '', 1, 1451699925, '', 'privacypolicy', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, NULL, 1451699925, 1, 'a:0:{}', 1, 0, 0),
(16, 'Impressum', '&lt;h2&gt;Impressum&lt;/h2&gt;\n&lt;h3&gt;Angaben gemäß § 5 TMG:&lt;/h3&gt;\n&lt;p&gt;Name Vorname&lt;br /&gt; Straße&lt;br /&gt; PLZ Stadt&lt;/p&gt;\n&lt;h3&gt;Kontakt:&lt;/h3&gt;\n&lt;p&gt;Telefon:&lt;br /&gt; Email-Adresse:&lt;/p&gt;\n&lt;h2&gt;Haftungsausschluss (Disclaimer)&lt;/h2&gt;\n&lt;p&gt;&lt;strong&gt;Haftung für Inhalte&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Haftung für Links&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Urheberrecht&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;\n&lt;p&gt;Quelle: &lt;em&gt;&lt;a href=&quot;http://www.e-recht24.de/impressum-generator.html&quot;&gt;http://www.e-recht24.de&lt;/a&gt;&lt;/em&gt;&lt;/p&gt;', 1, 0, 0, 0, 1, '', '', 1, 1451699925, '', 'legalnotice', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, NULL, 1451699925, 1, 'a:0:{}', 1, 0, 0),
(17, 'Team', '&lt;p class=&quot;system-article&quot; title=&quot;team&quot;&gt;team&lt;/p&gt;\r\n&lt;p&gt; &lt;/p&gt;', 1, 0, 0, 0, 1, '', '', 1, 1451699925, '', 'team', 0, 0, 'a:1:{i:0;s:0:"";}', 0, 0, NULL, 1451699925, 1, 'a:1:{i:0;s:4:"team";}', 1, 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_article_categories`
--

CREATE TABLE `eqdkp22_article_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `alias` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `portal_layout` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_bin NOT NULL,
  `per_page` int(3) UNSIGNED NOT NULL DEFAULT '25',
  `permissions` text COLLATE utf8_bin NOT NULL,
  `published` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sort_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `list_type` int(3) UNSIGNED NOT NULL DEFAULT '1',
  `aggregation` text COLLATE utf8_bin NOT NULL,
  `featured_only` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `notify_on_onpublished_articles` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `social_share_buttons` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `show_childs` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `article_published_state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `hide_header` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `sortation_type` int(3) UNSIGNED NOT NULL DEFAULT '1',
  `featured_ontop` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hide_on_rss` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_article_categories`
--

INSERT INTO `eqdkp22_article_categories` (`id`, `name`, `alias`, `portal_layout`, `description`, `per_page`, `permissions`, `published`, `parent`, `sort_id`, `list_type`, `aggregation`, `featured_only`, `notify_on_onpublished_articles`, `social_share_buttons`, `show_childs`, `article_published_state`, `hide_header`, `sortation_type`, `featured_ontop`, `hide_on_rss`) VALUES
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
-- Tabellenstruktur für Tabelle `eqdkp22_auth_groups`
--

CREATE TABLE `eqdkp22_auth_groups` (
  `group_id` int(11) UNSIGNED NOT NULL,
  `auth_id` int(11) UNSIGNED NOT NULL,
  `auth_setting` enum('N','Y') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_auth_groups`
--

INSERT INTO `eqdkp22_auth_groups` (`group_id`, `auth_id`, `auth_setting`) VALUES
(1, 42, 'Y'),
(1, 45, 'Y'),
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
(3, 48, 'Y'),
(3, 43, 'Y'),
(3, 44, 'Y'),
(3, 47, 'Y'),
(3, 39, 'Y'),
(3, 40, 'Y'),
(3, 41, 'Y'),
(3, 38, 'Y'),
(3, 45, 'Y'),
(3, 42, 'Y'),
(3, 46, 'Y'),
(4, 38, 'Y'),
(4, 39, 'Y'),
(4, 40, 'Y'),
(4, 41, 'Y'),
(4, 42, 'Y'),
(4, 45, 'Y'),
(4, 46, 'Y'),
(4, 47, 'Y'),
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
-- Tabellenstruktur für Tabelle `eqdkp22_auth_options`
--

CREATE TABLE `eqdkp22_auth_options` (
  `auth_id` int(10) UNSIGNED NOT NULL,
  `auth_value` varchar(65) COLLATE utf8_bin NOT NULL,
  `auth_default` enum('N','Y') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_auth_options`
--

INSERT INTO `eqdkp22_auth_options` (`auth_id`, `auth_value`, `auth_default`) VALUES
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
(44, 'u_calendar_raidnotes', 'Y'),
(45, 'u_search', 'Y'),
(46, 'u_usermailer', 'Y'),
(47, 'u_files_man', 'Y'),
(48, 'u_articles_script', 'N');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_auth_users`
--

CREATE TABLE `eqdkp22_auth_users` (
  `user_id` smallint(5) UNSIGNED NOT NULL,
  `auth_id` int(11) UNSIGNED NOT NULL,
  `auth_setting` enum('N','Y') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_calendars`
--

CREATE TABLE `eqdkp22_calendars` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `color` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `private` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `feed` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `system` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `restricted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `affiliation` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_calendars`
--

INSERT INTO `eqdkp22_calendars` (`id`, `name`, `color`, `private`, `feed`, `system`, `type`, `restricted`, `affiliation`) VALUES
(1, 'Raids', '#00628c', 0, NULL, 1, 1, 1, 'core'),
(2, 'Userraids', '#0cb20f', 0, NULL, 1, 1, 0, 'core'),
(3, 'Standard', '#ba1e1e', 0, NULL, 0, 2, 0, 'core');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_calendar_events`
--

CREATE TABLE `eqdkp22_calendar_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `cloneid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `calendar_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `creator` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp_start` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp_end` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `allday` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `private` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `visible` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `closed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `extension` text COLLATE utf8_bin,
  `notes` text COLLATE utf8_bin,
  `repeating` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timezone` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_calendar_raid_attendees`
--

CREATE TABLE `eqdkp22_calendar_raid_attendees` (
  `id` int(10) UNSIGNED NOT NULL,
  `calendar_events_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `member_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `member_role` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `signup_status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status_changedby` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp_signup` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp_change` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `raidgroup` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `random_value` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `signedbyadmin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_calendar_raid_guests`
--

CREATE TABLE `eqdkp22_calendar_raid_guests` (
  `id` int(10) UNSIGNED NOT NULL,
  `calendar_events_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timestamp_signup` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `raidgroup` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `class` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_calendar_raid_templates`
--

CREATE TABLE `eqdkp22_calendar_raid_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tpldata` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_classcolors`
--

CREATE TABLE `eqdkp22_classcolors` (
  `template` int(3) NOT NULL,
  `class_id` int(2) NOT NULL,
  `color` varchar(7) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_comments`
--

CREATE TABLE `eqdkp22_comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `attach_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `text` text COLLATE utf8_bin,
  `page` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `reply_to` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_config`
--

CREATE TABLE `eqdkp22_config` (
  `config_name` varchar(120) COLLATE utf8_bin NOT NULL,
  `config_plugin` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT 'core',
  `config_value` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_config`
--

INSERT INTO `eqdkp22_config` (`config_name`, `config_plugin`, `config_value`) VALUES
('account_activation', 'core', '1'),
('active_point_adj', 'core', '0.00'),
('admin_email', 'core', ''),
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
('cookie_name', 'core', 'eqdkp_8698fa'),
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
('eqdkp_start', 'core', '1451699922'),
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
('pk_known_task_hash', 'core', '0'),
('pk_lastraid', 'core', '1'),
('pk_maintenance_mode', 'core', '0'),
('pk_newsloot_limit', 'core', 'all'),
('plus_version', 'core', '2.1.4.0'),
('prefix', 'pdc', 'eqdkp22_'),
('round_activate', 'core', '1'),
('round_precision', 'core', '2'),
('seo_extension', 'core', '1'),
('server_path', 'core', '/'),
('session_cleanup', 'core', '0'),
('session_last_cleanup', 'core', '0'),
('session_length', 'core', '3600'),
('start_page', 'core', 'news'),
('thumbnail_defaultsize', 'core', '500'),
('timezone', 'core', 'Europe/Berlin');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_events`
--

CREATE TABLE `eqdkp22_events` (
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `event_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `event_value` float(6,2) DEFAULT NULL,
  `event_added_by` varchar(30) COLLATE utf8_bin NOT NULL,
  `event_updated_by` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `event_icon` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_groups_raid`
--

CREATE TABLE `eqdkp22_groups_raid` (
  `groups_raid_id` int(11) NOT NULL,
  `groups_raid_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `groups_raid_color` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `groups_raid_desc` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `groups_raid_system` tinyint(1) NOT NULL DEFAULT '0',
  `groups_raid_default` tinyint(1) NOT NULL DEFAULT '0',
  `groups_raid_sortid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_groups_raid`
--

INSERT INTO `eqdkp22_groups_raid` (`groups_raid_id`, `groups_raid_name`, `groups_raid_color`, `groups_raid_desc`, `groups_raid_system`, `groups_raid_default`, `groups_raid_sortid`) VALUES
(1, 'Default', '#000000', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_groups_raid_members`
--

CREATE TABLE `eqdkp22_groups_raid_members` (
  `group_id` int(22) NOT NULL,
  `member_id` int(22) NOT NULL,
  `grpleader` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_groups_user`
--

CREATE TABLE `eqdkp22_groups_user` (
  `groups_user_id` int(11) NOT NULL,
  `groups_user_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `groups_user_desc` varchar(255) COLLATE utf8_bin NOT NULL,
  `groups_user_deletable` tinyint(1) NOT NULL DEFAULT '0',
  `groups_user_default` tinyint(1) NOT NULL DEFAULT '0',
  `groups_user_hide` tinyint(1) NOT NULL DEFAULT '0',
  `groups_user_sortid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `groups_user_team` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_groups_user`
--

INSERT INTO `eqdkp22_groups_user` (`groups_user_id`, `groups_user_name`, `groups_user_desc`, `groups_user_deletable`, `groups_user_default`, `groups_user_hide`, `groups_user_sortid`, `groups_user_team`) VALUES
(1, 'Gäste', 'Gäste sind nicht eingeloggte Benutzer', 0, 0, 1, 0, 0),
(2, 'Super-Administratoren', 'Super-Administratoren haben sämtliche Rechte', 0, 0, 0, 0, 0),
(3, 'Administratoren', 'Administratoren haben nicht alle Admin-Rechte', 0, 0, 0, 0, 0),
(4, 'Mitglieder', 'Mitglieder', 0, 1, 0, 0, 0),
(5, 'Offiziere', 'Offiziere dürfen Raids verwalten', 1, 0, 0, 0, 0),
(6, 'Redakteure', 'Redakteure dürfen News schreiben und verwalten', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_groups_users`
--

CREATE TABLE `eqdkp22_groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `grpleader` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_groups_users`
--

INSERT INTO `eqdkp22_groups_users` (`group_id`, `user_id`, `grpleader`) VALUES
(2, 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_itempool`
--

CREATE TABLE `eqdkp22_itempool` (
  `itempool_id` int(11) UNSIGNED NOT NULL,
  `itempool_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `itempool_desc` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_itempool`
--

INSERT INTO `eqdkp22_itempool` (`itempool_id`, `itempool_name`, `itempool_desc`) VALUES
(1, 'default', 'Default itempool');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_items`
--

CREATE TABLE `eqdkp22_items` (
  `item_id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `member_id` smallint(5) UNSIGNED NOT NULL,
  `raid_id` mediumint(8) UNSIGNED NOT NULL,
  `item_value` float(10,2) DEFAULT NULL,
  `item_date` int(11) NOT NULL DEFAULT '0',
  `item_added_by` varchar(30) COLLATE utf8_bin NOT NULL,
  `item_updated_by` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `item_group_key` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `game_itemid` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `itempool_id` int(11) UNSIGNED NOT NULL,
  `item_color` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_links`
--

CREATE TABLE `eqdkp22_links` (
  `link_id` int(12) NOT NULL,
  `link_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `link_window` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `link_menu` tinyint(4) NOT NULL DEFAULT '0',
  `link_sortid` int(11) NOT NULL DEFAULT '0',
  `link_visibility` text COLLATE utf8_bin NOT NULL,
  `link_height` int(12) NOT NULL DEFAULT '4024'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_links`
--

INSERT INTO `eqdkp22_links` (`link_id`, `link_url`, `link_name`, `link_window`, `link_menu`, `link_sortid`, `link_visibility`, `link_height`) VALUES
(1, '#', 'Guild', '0', 0, 0, '[&#34;0&#34;]', 4024),
(2, '#', 'Links', '0', 0, 0, '[&#34;0&#34;]', 4024),
(3, 'http://eqdkp-plus.eu', 'EQdkp-Plus', '1', 0, 0, '[&#34;0&#34;]', 4024),
(4, '#', 'DKP-System', '0', 0, 0, '[&#34;0&#34;]', 4024);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_logs`
--

CREATE TABLE `eqdkp22_logs` (
  `log_id` int(11) UNSIGNED NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_members`
--

CREATE TABLE `eqdkp22_members` (
  `member_id` smallint(5) UNSIGNED NOT NULL,
  `member_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `member_status` tinyint(1) NOT NULL DEFAULT '1',
  `member_rank_id` smallint(3) NOT NULL DEFAULT '0',
  `member_main_id` smallint(5) UNSIGNED DEFAULT NULL,
  `member_creation_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_update` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `notes` text COLLATE utf8_bin,
  `profiledata` text COLLATE utf8_bin NOT NULL,
  `requested_del` tinyint(1) NOT NULL DEFAULT '0',
  `require_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `defaultrole` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_member_profilefields`
--

CREATE TABLE `eqdkp22_member_profilefields` (
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
-- Tabellenstruktur für Tabelle `eqdkp22_member_ranks`
--

CREATE TABLE `eqdkp22_member_ranks` (
  `rank_id` smallint(5) UNSIGNED NOT NULL,
  `rank_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `rank_hide` tinyint(1) NOT NULL DEFAULT '0',
  `rank_prefix` varchar(75) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_suffix` varchar(75) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_sortid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `rank_default` tinyint(1) NOT NULL DEFAULT '0',
  `rank_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_member_user`
--

CREATE TABLE `eqdkp22_member_user` (
  `member_id` smallint(5) UNSIGNED NOT NULL,
  `user_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_multidkp`
--

CREATE TABLE `eqdkp22_multidkp` (
  `multidkp_id` int(11) UNSIGNED NOT NULL,
  `multidkp_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `multidkp_desc` text COLLATE utf8_bin NOT NULL,
  `multidkp_sortid` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_multidkp`
--

INSERT INTO `eqdkp22_multidkp` (`multidkp_id`, `multidkp_name`, `multidkp_desc`, `multidkp_sortid`) VALUES
(1, 'Default', 'Default MultiDKPPool', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_multidkp2event`
--

CREATE TABLE `eqdkp22_multidkp2event` (
  `multidkp2event_multi_id` int(11) NOT NULL,
  `multidkp2event_event_id` smallint(5) NOT NULL,
  `multidkp2event_no_attendance` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_multidkp2itempool`
--

CREATE TABLE `eqdkp22_multidkp2itempool` (
  `multidkp2itempool_itempool_id` int(11) UNSIGNED NOT NULL,
  `multidkp2itempool_multi_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_multidkp2itempool`
--

INSERT INTO `eqdkp22_multidkp2itempool` (`multidkp2itempool_itempool_id`, `multidkp2itempool_multi_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_notifications`
--

CREATE TABLE `eqdkp22_notifications` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `read` tinyint(4) NOT NULL DEFAULT '0',
  `username` text COLLATE utf8_bin,
  `dataset_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `link` text COLLATE utf8_bin,
  `additional_data` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_notification_types`
--

CREATE TABLE `eqdkp22_notification_types` (
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
-- Daten für Tabelle `eqdkp22_notification_types`
--

INSERT INTO `eqdkp22_notification_types` (`id`, `name`, `category`, `prio`, `default`, `group`, `group_name`, `group_at`, `icon`) VALUES
('calendarevent_char_statuschange', 'notification_calendarevent_statuschange', 'calendarevent', 1, 0, 1, 'notification_calendarevent_statuschange_grouped', 3, 'fa-refresh'),
('calendarevent_invitation', 'notification_calendarevent_invitation', 'calendarevent', 0, 1, 0, NULL, 0, 'fa-envelope'),
('calendarevent_mod_groupchange', 'notification_calendarevent_mod_groupchange', 'calendarevent', 0, 1, 0, 'notification_calendarevent_mod_groupchange_grouped', 3, 'fa-users'),
('calendarevent_mod_statuschange', 'notification_calendarevent_mod_statuschange', 'calendarevent', 0, 1, 0, 'notification_calendarevent_mod_statuschange_grouped', 3, 'fa-refresh'),
('calendarevent_new', 'notification_calendarevent_new', 'calendarevent', 0, 1, 0, NULL, 0, 'fa-calendar'),
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
-- Tabellenstruktur für Tabelle `eqdkp22_plugins`
--

CREATE TABLE `eqdkp22_plugins` (
  `code` varchar(20) COLLATE utf8_bin NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `version` varchar(7) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_portal`
--

CREATE TABLE `eqdkp22_portal` (
  `id` mediumint(8) UNSIGNED NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_portal_blocks`
--

CREATE TABLE `eqdkp22_portal_blocks` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `wide_content` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_portal_blocks`
--

INSERT INTO `eqdkp22_portal_blocks` (`id`, `name`, `wide_content`) VALUES
(1, 'Header', 0),
(2, 'Footer', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_portal_layouts`
--

CREATE TABLE `eqdkp22_portal_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `blocks` text COLLATE utf8_bin NOT NULL,
  `modules` text COLLATE utf8_bin NOT NULL,
  `routes` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_portal_layouts`
--

INSERT INTO `eqdkp22_portal_layouts` (`id`, `name`, `blocks`, `modules`, `routes`) VALUES
(1, 'Standard', 'a:4:{i:0;s:4:"left";i:1;s:6:"middle";i:2;s:6:"bottom";i:3;s:5:"right";}', 'a:0:{}', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_raids`
--

CREATE TABLE `eqdkp22_raids` (
  `raid_id` mediumint(8) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `raid_date` int(11) NOT NULL DEFAULT '0',
  `raid_note` text COLLATE utf8_bin,
  `raid_value` float(6,2) NOT NULL DEFAULT '0.00',
  `raid_added_by` varchar(30) COLLATE utf8_bin NOT NULL,
  `raid_updated_by` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `raid_additional_data` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_raid_attendees`
--

CREATE TABLE `eqdkp22_raid_attendees` (
  `raid_id` mediumint(8) UNSIGNED NOT NULL,
  `member_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_repository`
--

CREATE TABLE `eqdkp22_repository` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `rating` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updated` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `bugtracker_url` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_repository`
--

INSERT INTO `eqdkp22_repository` (`id`, `plugin`, `plugin_id`, `name`, `date`, `author`, `description`, `version`, `version_ext`, `category`, `level`, `changelog`, `dep_php`, `dep_coreversion`, `rating`, `updated`, `bugtracker_url`) VALUES
(1, 'eqdkp_diablo', 240, 'EQdkp Diablo', '1444281383', 'Asitara', 'Diablo Template made by Asitara', '0.1.1', '0.1.1', '2', 'stable', '[0.1.1] ---------------------------\r\n- much more style settings available\r\n- implements #1327\r\n[0.1.0] ---------------------------\r\n- new LESS version for EQdkp 2.1', '5.2', '2.1.0.9', 0, '1451699947', 'https://eqdkp-plus.eu/bugtracker/Product/28-EQdkp-Plus-Styles/'),
(2, 'birthday', 171, 'Birthday', '1441646603', 'wallenium', 'Shows the next birthdays of your user.', '2.1.3', '2.1.3', '3', 'stable', '', '', '2.0.0.25', 0, '1451699947', ''),
(3, 'tsw', 236, 'The Secret World', '1446551900', 'Inkraja', 'The Secret World is a massively multiplayer online role-playing video \r\ngame set in the modern day real world by developer Funcom. \r\n\r\nRoman "Tilty" Amiel is the Lead Designer, Laurie "Szemra" Payne the Community Manager', '2.1.8', '2.1.8', '7', 'stable', '2.1.8 Requires EQdkp 2.1\r\n- add Flappy Drops (Purge Itemcache in Case of issues)\r\n2.1.7 Requires EQdkp 2.1\r\nAdd issue 12 Information''s:\r\n-rename "Tokio" Placeholder Event to "Flappy" and give them an new Icon\r\n- change Items from Eidolon from 10.1 to 10.3\r\n- add the 3. heroic Item (without Img)\r\nCharacter:\r\n- Add the Wings, PVP Zones, TL Access\r\n\r\n2.1.6\r\n- Add Augment Resonator Items(DE/EN/FR)\r\n- Add Informations for Guildbank (DE/EN/FR)\r\n\r\n2.1.5\r\n- Add the Bug Fix from Funcom for Eidolon Items\r\n\r\n2.1.1\r\n- Signets in all quality levels\r\n- add infos from issue 11\r\n- add eidolon drop loot\r\n\r\n2.0.0\r\n- Updated for Eqdkp-Plus 2.0', '5.2', '2.1.0.9', 0, '1451699947', ''),
(4, 'eveonline', 172, 'EVE Online', '1441529293', 'wallenium', 'Eve Online (stylised EVE Online) is a player-driven, persistent-world massively multiplayer online role-playing game (MMORPG) set in a science fiction space setting, developed and published by CCP Games.', '1.0.0', '1.0.0', '7', 'stable', '1.0.0\r\n- Updated for Eqdkp-Plus 2.0\r\n\r\nPrevious Versions\r\n- replaced unknown icon with new icon\r\n- corrected version number\r\n', '5.4', '2.0.0.25', 0, '1451699948', ''),
(5, 'sk_startorder', 229, 'SK Startorder', '1450771310', 'Godmod', 'Set the startorder of some SK Lootsystems.', '1.0.2', '1.0.2', '1', 'stable', '1.0.0\r\n- Initial Release', '5.4', '2.1.0.9', 0, '1451699948', ''),
(6, 'raidlogimport', 235, 'Raidlogimport', '1450772205', 'Hoofy', 'Import your raidlogs. This plugin supports different games, like WoW und RoM.', '0.7.1.3', '0.7.1.3', '1', 'stable', '', '5.4', '2.1.0.9', 0, '1451699948', ''),
(7, 'shoutbox', 246, 'Shoutbox', '1443681783', 'Godmod', 'With this shoutbox, user can exchange short messages.', '0.4.5', '0.4.5', '1', 'stable', '', '5.3', '2.1.0.9', 0, '1451699948', ''),
(8, 'statistics', 248, 'Statistics', '1443021877', 'Godmod', 'Shows click and visit statistics, and some other statistics about Raids, Items and User Registrations.', '0.1.1', '0.1.1', '1', 'stable', '', '5.4', '2.1.0.9', 0, '1451699948', ''),
(9, 'mediacenter', 230, 'MediaCenter', '1448721266', 'Godmod', 'Upload Images, Videos or Files to the MediaCenter. It combines a Gallery, Videosection and a Downloadsection.', '2.1.0', '2.1.0', '1', 'stable', '2.1.0\r\n- Added chunked upload, so you can upload big files (at single file upload only)\r\n- Calculate Memory Usage to prevent fatal errors\r\n- Fixes with Previewimages\r\n- Added Text Watermarks\r\n\r\n2.0.3\r\n- Fixed some Settings for Categories\r\n\r\n2.0.0\r\n- Initial Release', '5.4', '2.1.0.9', 0, '1451699948', ''),
(10, 'chat', 228, 'Chat', '1449430153', 'Godmod', 'Facebook like Chats - with one or more users, and even with the whole guild!', '0.2.2', '0.2.2', '1', 'stable', '', '5.4', '2.1.0.9', 0, '1451699948', ''),
(11, 'eqdkp_bluesky', 232, 'EQdkp Bluesky', '1441554721', 'Inkraja', 'TSW Agartha Template made by Inkraja and Asitara', '0.0.7', '0.0.7', '2', 'stable', 'First Less Support Version', '5.2', '2.1.0', 0, '1451699948', 'https://eqdkp-plus.eu/bugtracker/Product/28-EQdkp-Plus-Styles/'),
(12, 'eqdkp_tsw_agartha', 231, 'EQdkp TSW Agartha', '1441527799', 'Inkraja', 'TSW Agartha Template made by Inkraja', '0.1.0', '0.1.0', '2', 'stable', 'First Less Support Version', '5.2', '2.1.0', 0, '1451699948', 'https://eqdkp-plus.eu/bugtracker/Product/28-EQdkp-Plus-Styles/'),
(13, 'eqdkp_neon', 239, 'EQdkp Neon', '1441532170', 'Inkraja', 'Template made by Inkraja.\r\n\r\nBased on design by [url=http://pbwow.com/]PayBas @ PBWoW.com[/url]', '0.0.2', '0.0.2', '2', 'stable', 'Full Less Support', '5.2', '2.1.0', 0, '1451699948', 'https://eqdkp-plus.eu/bugtracker/Product/28-EQdkp-Plus-Styles/'),
(14, 'eqdkp_tsw_orochi', 233, 'EQdkp TSW Orochi', '1441527833', 'Inkraja', 'TSW Orochi Template made by Inkraja', '0.0.8', '0.0.8', '2', 'stable', 'First Less Support Version - or not :)', '5.2', '2.1.0', 0, '1451699948', 'https://eqdkp-plus.eu/bugtracker/Product/28-EQdkp-Plus-Styles/'),
(15, 'livestreams', 237, 'Livestreams', '1441527517', 'Godmod', 'Shows the Online status of your streamers. Supports Twitch and Hitbox.', '0.1.0', '0.1.0', '3', 'stable', '', '5.4', '2.0.0.25', 0, '1451699948', ''),
(16, 'articleslider', 124, 'Article Slider', '1441530171', 'Godmod', 'Shows featured articles in a slider', '0.1.1', '0.1.1', '3', 'stable', '', '5.3', '2.0.0.25', 0, '1451699948', ''),
(17, 'guildnews', 125, 'Guildnews', '1441530118', 'Godmod', 'Shows the WoW News for your guild.', '0.2.2', '0.2.2', '3', 'stable', '', '5.3', '2.0.0.25', 0, '1451699948', ''),
(18, 'latestposts', 126, 'Latest Posts', '1448720681', 'Godmod', 'Displays the latest posts of your board.', '3.0.6', '3.0.6', '3', 'stable', '', '5.3', '2.0.0.25', 0, '1451699948', ''),
(19, 'menu', 127, 'Menu', '1441530070', 'Godmod', 'Create with this portal module custom menus.', '0.1.0', '0.1.0', '3', 'stable', '', '5.3', '2.0.0.25', 0, '1451699948', ''),
(20, 'mmo_news', 128, 'MMO News', '1441525575', 'Godmod', 'This portal module shows some news for your game.', '0.2.2', '0.2.2', '3', 'stable', '', '5.3', '2.0.0.25', 0, '1451699948', ''),
(21, 'mybars', 129, 'My Bars', '1444125055', 'Godmod', 'Create your own bars, e.g. to show your raid progress.', '2.0.1', '2.0.1', '3', 'stable', '', '5.3', '2.0.0.25', 0, '1451699948', ''),
(22, 'mycontent', 130, 'My Content', '1441530052', 'Godmod', 'Add your own content (including HTML) to this module.', '3.0.0', '3.0.0', '3', 'stable', '', '5.3', '2.0.0.25', 0, '1451699948', ''),
(23, 'nextevents', 131, 'Next Events', '1450772545', 'wallenium', 'Shows future raids or events in the portal', '2.0.4', '2.0.4', '3', 'stable', '', '5.3', '2.0.0.25', 0, '1451699948', ''),
(24, 'quickpolls', 133, 'Quickpolls', '1441530026', 'Godmod', 'Create some polls on your portal.', '0.2.1', '0.2.1', '3', 'stable', '', '5.4', '2.0.0.25', 0, '1451699948', ''),
(25, 'guildrequest', 234, 'Guildrequest', '1448723676', 'Godmod', 'This plugin handles guild applications. Supports multiple field types and dependencies.', '1.0.2', '1.0.2', '1', 'stable', '', '5.4', '2.1.0.9', 0, '1451699949', 'https://eqdkp-plus.eu/bugtracker/index.php/Product/15-GuildRequest/'),
(26, 'recruitment', 135, 'Recruitment', '1441530008', 'Godmod', 'Show which classes you need.', '2.0.5', '2.0.5', '3', 'stable', '', '5.3', '2.0.0.25', 0, '1451699949', ''),
(27, 'rssfeed', 136, 'RSS Feed', '1441530000', 'wallenium', 'This portal module displays an RSS or Atom Feed.', '3.0.0', '3.0.0', '3', 'stable', '', '5.3', '2.0.0.25', 0, '1451699949', ''),
(28, 'tagcloud', 137, 'Tagcloud', '1441529990', 'Godmod', 'This portal moduls shows a tag cloud of used tags in articles.', '0.1.0', '0.1.0', '3', 'stable', '', '5.3', '2.0.0.25', 0, '1451699949', ''),
(29, 'twitter', 139, 'Twitter', '1441529982', 'Godmod', 'Shows tweets from a twitter account. Provides possibilites to favorite and retweet.', '0.2.4', '0.2.4', '3', 'stable', '', '5.3', '2.0.0.25', 0, '1451699949', ''),
(30, 'voice', 140, 'Voice Server', '1443457168', 'Godmod', 'This portal module bundles the most important voiceservers like Teamspeak3, Mumble and Ventrilo and shows your channels and online users.', '0.1.4', '0.1.4', '3', 'stable', '0.1.4\r\n- Fixed Mumble', '5.3', '2.0.0.25', 0, '1451699949', ''),
(31, 'weather', 141, 'Weather', '1441529954', 'wallenium', 'Shows the weather for your recent location.', '4.0.0', '4.0.0', '3', 'stable', '', '5.3', '2.0.0.25', 0, '1451699949', ''),
(32, 'wordofthemoment', 142, 'Word of the Moment', '1441529928', 'wallenium', 'Shows a random word or sentence.', '3.0.0', '3.0.0', '3', 'stable', '', '5.3', '2.0.0.25', 0, '1451699949', ''),
(33, 'wowprogress', 143, 'WoW Progress', '1441529918', 'Godmod', 'This portal module shows the progress of your WoW guild from wowprogress.com', '0.3.5', '0.3.5', '3', 'stable', '', '5.4', '2.0.0.25', 0, '1451699949', ''),
(34, 'whoisonline', 144, 'Who is online?', '1443682646', 'Godmod', 'Shows which user are online or where online a short time ago.', '0.3.2', '0.3.2', '3', 'stable', '', '5.3', '2.0.0.25', 0, '1451699949', ''),
(35, 'realmstatus', 145, 'Realmstatus', '1448723333', 'Godmod', 'Shows the status of the realm of your game.', '2.0.5', '2.0.5', '3', 'stable', '', '', '2.0.0.25', 0, '1451699949', ''),
(36, 'quickdkp', 146, 'Quick DKP', '1441530032', 'Godmod', 'Shows the DKP standings of the users characters.', '3.0.4', '3.0.4', '3', 'stable', '', '', '2.0.0.25', 0, '1451699950', ''),
(37, 'lastraids', 149, 'Last Raids', '1441530092', 'Godmod', 'Shows the latest raids and the raidloot.', '3.0.2', '3.0.2', '3', 'stable', '', '', '2.0.0.25', 0, '1451699950', ''),
(38, 'lastitems', 150, 'Last items', '1448723887', 'Godmod', 'Displays the latest inserted items.', '3.0.2', '3.0.2', '3', 'stable', '', '', '2.0.0.25', 0, '1451699950', ''),
(39, 'dkpinfo', 151, 'DKP Info', '1441613897', 'Godmod', 'This module shows some DKP statistics like total raids and items.', '3.0.2', '3.0.2', '3', 'stable', '', '', '2.0.0.25', 0, '1451699950', ''),
(40, 'wildstar', 153, 'Wildstar Online', '1441529650', 'wallenium', 'WildStar is a fantasy/science fiction massively multiplayer online role-playing game that takes place on the fictional planet Nexus, where a mysterious and powerful race known as the Eldan has disappeared leaving behind a wealth of technology and secrets for players to explore.', '1.0.1', '1.0.1', '7', 'stable', '1.0.0\r\n- Ported the game for Eqdkp-Plus 2.0\r\n\r\n0.4.1\r\n- added raical export module for wildstar\r\n\r\n0.4.0\r\n- add faction\r\n- add two events\r\n- some minro fixes', '5.4', '2.0.0.25', 0, '1451699950', ''),
(41, 'wow', 155, 'World of Warcraft', '1448742420', 'wallenium', 'World of Warcraft is the leading MMO by Blizzard Entertainment.', '6.2.3', '6.2.3', '7', 'stable', '6.2.2\r\n- some bugfixes with items\r\n\r\n6.2.1\r\n- some bugfixes, e.g. cronjob\r\n\r\n6.2.0\r\n- add hellfire citadel event\r\n\r\n6.1.8\r\n- Add server to wow macro for cross realm players\r\n- fixed the tooltip width for boss tooltips\r\n- add item level to tooltip', '', '2.0.0.25', 0, '1451699950', ''),
(42, 'wot', 157, 'World of Tanks', '1441529659', 'wallenium', 'World of Tanks is a massively multiplayer online game developed by Belarusian-Cypriot company Wargaming, featuring early to mid-20th century era fighting vehicles.', '1.0.0', '1.0.0', '7', 'stable', '1.0.0\r\n- added content of public test of update 8.5\r\n- Updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699950', ''),
(43, 'torchlight2', 158, 'Torchlight 2', '1441529642', 'wallenium', 'Torchlight II is an action role-playing game developed by Runic Games.', '1.0.0', '1.0.0', '7', 'stable', '1.0.0\r\n- updated for Eqdkp-Plus 2.0\r\n\r\nPrevious updates\r\n- added missing torchlight2.class.php\r\n- replaced unknown class icons\r\n', '5.4', '2.0.0.25', 0, '1451699950', ''),
(44, 'aion', 160, 'Aion', '1441528766', 'wallenium', 'This game package is for the free2play MMO game AION released by NCsoft.', '4.6.2', '4.6.2', '7', 'stable', '4.6.1\r\n- Fixed the version\r\n\r\n4.6.0\r\n- Updated for Eqdkp-Plus 2.0\r\n\r\nPrevious Versions\r\n- added 3 new classes\r\n- updated for patch 4.5', '5.4', '2.0.0.25', 0, '1451699950', ''),
(45, 'allods', 161, 'Allods Online', '1444232712', 'wallenium', 'Allods Online is a free-to-play 3D fantasy MMORPG developed by Astrum Nival (Allods Team nowadays).', '6.0.2', '6.0.2', '7', 'stable', '6.0.2\r\n- Fixed Tooltips for russian language\r\n\r\n6.0.1\r\n- Fixed Tooltips\r\n\r\n6.0.0\r\n- add pridens race\r\n\r\n5.1.0\r\n- Updated for Eqdkp-Plus 2.0\r\n\r\nPrevious Versions\r\n- updated class colours to fit ingame ui addon colours', '5.4', '2.0.0.25', 0, '1451699950', ''),
(46, 'archeage', 162, 'ArcheAge', '1443472436', 'wallenium', 'ArcheAge is an MMORPG developed by Korean developer Jake Song (former developer of Lineage) and his development company, XL Games.', '1.0.1', '1.0.1', '7', 'stable', '1.0.1\r\n- renamed some skilltrees to match english version\r\n- optimized images', '5.4', '2.0.0.25', 0, '1451699950', ''),
(47, 'ac2', 163, 'Asheron''s Call 2: Fallen Kings', '1441528797', 'wallenium', 'Asheron''s Call 2: Fallen Kings is a fantasy MMORPG (massively multiplayer online role-playing game) for Microsoft Windows-based PCs.', '1.0.0', '1.0.0', '7', 'stable', 'first release', '5.4', '2.0.0.25', 0, '1451699950', ''),
(48, 'atlantica', 164, 'Atlantica Online', '1441528811', 'wallenium', 'Atlantica Online is a free-to-play (F2P) 3D massively multiplayer online role-playing game (MMORPG) developed by NDOORS Corporation. The game''s primary setting is a fantasy-themed alternate history Earth composed of a diverse blend of historical, cultural, allegorical, and mythological elements.', '2.3.0', '2.3.0', '7', 'stable', '2.3.0\r\n- Updated for Eqdkp-Plus 2.0\r\n\r\nPrevious versions\r\n- replaced all event icons with a revised version\r\n- class icons haven''t been shown *fixed*\r\n- replaced the game specific background with a revised version', '5.4', '2.0.0.25', 0, '1451699950', ''),
(49, 'daoc', 165, 'Dark Age of Camelot', '1441528864', 'wallenium', 'Dark Age of Camelot (DAoC) is a 3D medieval fantasy MMORPG, released on October 10, 2001 in North America and in Europe shortly after through its partner GOA. The game combines Arthurian lore, Norse mythology and Irish Celtic legends with a dash of high fantasy.', '2.1.0', '2.1.0', '7', 'stable', 'no changes', '5.4', '2.0.0.25', 0, '1451699950', ''),
(50, 'diablo3', 166, 'Diablo 3', '1450129686', 'wallenium', 'Diablo III is an action role-playing video game developed and published by Blizzard Entertainment. It is the third installment in the Diablo franchise.', '1.2.0', '1.2.0', '7', 'stable', '1.2.2\r\n- better class icons\r\n- add crusader class icon\r\n\r\n1.2.0\r\n- Added crusader class\r\n- Add gender dropdown as a char field\r\n- Add class colors\r\n\r\n1.1.0\r\n- Updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699950', ''),
(51, 'dp', 167, 'Dragon''s Prophet', '1441528898', 'wallenium', 'Dragon''s Prophet is a massively multiplayer online role-playing game (MMORPG) developed by the Taiwanese developer Runewaker Entertainment.', '1.0.0', '1.0.0', '7', 'stable', '1.0.0\r\n- updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699950', ''),
(52, 'eden', 168, 'Eden Eternal', '1441529283', 'wallenium', 'Eden Eternal, also known as Finding Neverland Online (FNO), or Eternal Atlas—The Refined FNO in Japan, is a free to play anime styled MMORPG developed by X-Legend and published internationally in Western European languages by Aeria Games.', '1.0.0', '1.0.0', '7', 'stable', '1.0.0\r\n- updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699950', ''),
(53, 'eq', 173, 'EverQuest 1', '1443013496', 'darkmaeg', 'EverQuest is a 3D fantasy-themed massively multiplayer online role-playing game (MMORPG).', '2.3.2', '2.3.2', '7', 'stable', '2.3.2\r\n- Fixed some errors\r\n\r\n2.3.1\r\n- Increased level cap to 105\r\n\r\n2.3.0\r\n- added level, gender and guild profile fields\r\n\r\n2.2.3\r\n- added stuff for guild banker\r\n\r\n2.2.2\r\n- Removed the faction\r\n- fixed class/race dependency\r\n\r\n2.2.1\r\n- Fixed game settings\r\n\r\n2.2.0\r\n- Updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699950', ''),
(54, 'ddo', 175, 'Dungeons & Dragons Online', '1441528908', 'wallenium', 'Dungeons  Dragons Online (DDO) is a massively multiplayer online role-playing game (MMORPG) developed by Turbine, Inc. for Microsoft Windows and Macintosh personal computers. The game was originally marketed as Dungeons  Dragons Online: Stormreach, then renamed Dungeons  Dragons Online: Eberron Unlimited upon switching to a hybrid free to play model, and was finally rebranded Dungeons  Dragons Online, with the introduction of Forgotten Realms-related content.', '1.0.0', '1.0.0', '7', 'stable', '1.0.0\r\n- Updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699950', ''),
(55, 'ffxi', 176, 'Final Fantasy XI', '1441529322', 'wallenium', 'Final Fantasy XI, also known as Final Fantasy XI Online, is a massively multiplayer online role-playing game (MMORPG), developed and published by Square (later Square Enix) as part of the Final Fantasy series.', '2.2.0', '2.2.0', '7', 'stable', '2.2.0\r\n- Updated for Eqdkp-Plus 2.0\r\n\r\n2.1.0\r\n- added race icons (male/female)\r\n- changed race array (english.php)\r\n- added field_data.php for gender and guild information\r\n- replaced event unknown icon\r\n- class icons havent been shown *fixed*\r\n- added game specific background', '5.4', '2.0.0.25', 0, '1451699950', ''),
(56, 'ffxiv', 177, 'Final Fantasy XIV: A Realm Reborn', '1441529330', 'wallenium', 'Final Fantasy XIV: A Realm Reborn is a massively multiplayer online role-playing game (MMORPG) for Microsoft Windows, Sony PlayStation 3, and PlayStation 4.', '3.0.4', '3.0.4', '7', 'stable', 'Changelog 3.0.3\r\n- Added new classes dark knight, astrologic and machinist\r\n- added new race au ra\r\n\r\nChangelog 3.0.2\r\n- small fix for uldah\r\n\r\nChangelog 3.0.1\r\n- added ninja class\r\n\r\nChangelog 3.0.0\r\n- Updated for Eqdkp-Plus 2.0\r\n\r\nChangelog 2.15\r\n- added german language file\r\n- new class icons\r\n- other fixes\r\n\r\nChangelog 1.x\r\n- renamed and resized race icons (male/female)\r\n- resized class icons to 20x20 and added big icons (50x50) for roster\r\n- changed race array (english.php)\r\n- added field_data.php for gender and guild information\r\n- replaced complete event icons with a bunch of new event icons\r\n- class icons haven''t been shown *fixed*\r\n- added game specific background', '5.4', '2.0.0.25', 0, '1451699950', ''),
(57, 'eso', 178, 'The Elder Scrolls Online: Tamriel Unlimited', '1441525935', 'wallenium', 'The Elder Scrolls Online is a massively multiplayer online role-playing video game developed by ZeniMax Online Studios. The game was renamed to The Elder Scrolls Online: Tamriel Unlimited.', '1.4.1', '1.4.1', '7', 'stable', '1.3.0\r\n- Updated for Eqdkp-Plus 2.0\r\n\r\n1.2.0\r\n- improved the imperial icon\r\n- reordered the classes and icons again\r\n- added veterans rank\r\n- some minor fixes', '5.4', '2.0.0.25', 0, '1451699950', ''),
(58, 'fw', 179, 'Forsaken World: War of Shadows', '1441525816', 'wallenium', 'Forsaken World: War of Shadows, is a 3D adventure and fantasy MMORPG with traditional Chinese settings. Players can take on various roles depending on choice of race and choice of class within that race.', '1.1.3', '1.1.3', '7', 'stable', '1.1.2\r\n- new race icons\r\n- cleaned icons and reduced file size\r\n\r\n1.1.1\r\n- Added new Tormentor class\r\n- added new demon race\r\n- new class icons\r\n\r\n1.1.0\r\n- Updated for Eqdkp-Plus 2.0\r\n\r\n1.0.1\r\n- added class colors\r\n\r\n1.0\r\n- add Soul Reaper Class', '5.4', '2.0.0.25', 0, '1451699951', ''),
(59, 'guildwars2', 180, 'Guild Wars 2', '1448723787', 'wallenium', 'Guild Wars 2 is a massively multiplayer online role-playing game developed by ArenaNet and published by NCsoft. Set in the fantasy world of Tyria, the game follows the re-emergence of Destiny''s Edge, a disbanded guild dedicated to fighting the Elder Dragons, a Lovecraftian species that has seized control of Tyria in the time since the original Guild Wars.', '1.2.0', '1.2.0', '7', 'stable', '1.1.0\r\n- Added new class "Revenant"\r\n- Added class colors\r\n- minified icons to reduce space\r\n\r\n1.0.0\r\n- Updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699951', ''),
(60, 'kalonline', 181, 'KalOnline', '1441529416', 'wallenium', 'Kal Online is an MMORPG created by the Korean company Inixsoft[1] in February 2004. The player is given a choice of characters of different classes, their appearance customisable. The player can customize various attributes of their character as they progress throughout the game.', '1.0.0', '1.0.0', '7', 'stable', '1.0.0\r\n- Updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699951', ''),
(61, 'l2', 182, 'Lineage 2', '1441529425', 'wallenium', 'Lineage II is a massive multiplayer online role-playing game (MMORPG) for Microsoft Windows, the second game in the Lineage series. It is a prequel to Lineage, and is set 150 years before the earlier game.', '1.0.0', '1.0.0', '7', 'stable', '1.0.0\r\n- Updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699951', ''),
(62, 'lotro', 183, 'Lord of the Rings Online', '1441526720', 'Sionaa', 'The Lord of the Rings Online (commonly abbreviated to LOTRO, LotRO), initially branded as The Lord of the Rings Online: Shadows of Angmar, is a massively multiplayer online role-playing game (MMORPG) for Microsoft Windows and OS X set in a fantasy universe based upon J. R. R. Tolkien''s Middle-earth writings.', '3.0.5', '3.0.5', '7', 'stable', 'Changes 3.0.2\r\n- Some smaller changes\r\n\r\nChanges 3.0.1\r\n- Removed import and update as the API is not longer available\r\n\r\nChanges 3.0.0\r\n- Updated for Eqdkp-Plus 2.0\r\n\r\nChanges 2.15.0:\r\n- Added Beorning Class and Race\r\n- Some minor fixes\r\n\r\nChanges 2.2.2:\r\n- fixed parsing error in english.php\r\n\r\nChanges 2.2.1:\r\n- added translation variables for images \r\n- added translations for new variables\r\n- character profile now available in german & english\r\n\r\nChanges 2.2:\r\n- removed old event, role, race, rank and role icons and replaced with a complete new set of icons\r\n- event icons size (64x64), class icons size(46x46 and 20x20), role icons size (20x20), race icon size (20x20), rank icon size (32x32)\r\n- corrected lotro.class.php to new icon format .png\r\n- replaced background image\r\n- replaced logo', '5.4', '2.0.0.25', 0, '1451699951', ''),
(63, 'feedposter', 325, 'FeedPoster', '1451337080', 'Godmod', 'This Plugins posts entries from RSS or ATOM Feeds as Articles in your EQdkp Plus. Also, the Plugin supports a Twitter Timeline, as well as an EQdkp Plus API to post Entries from other EQdkp Plus installations.', '0.2.0', '0.2.0', '1', 'stable', '', '5.4', '2.1.0.9', 0, '1451699951', ''),
(64, 'epgpimport', 244, 'EPGP-Import', '1443021907', 'Godmod', 'An importer for the EPGP WoW-Addon Logs', '0.2.3', '0.2.3', '1', 'stable', '0.2.3\r\n- Compatibility with EQdkp Plus 2.1\r\n0.2.2:\r\n- some Realmname issues fixed', '5.4', '2.1.0.9', 0, '1451699951', ''),
(65, 'eqdkp_sso', 245, 'EQdkp Plus SSO', '1443021914', 'Godmod', 'This Plugin enables Single Sign On (SSO) through different EQdkp Plus Installations.', '0.1.4', '0.1.4', '1', 'stable', '', '5.3', '2.1.0.9', 0, '1451699951', ''),
(66, 'siggenerator', 247, 'Signature Generator', '1443021945', 'Godmod', 'Create signatures for your chars - including the DKP Standings.', '0.1.4', '0.1.4', '1', 'stable', '', '5.3', '2.1.0.9', 0, '1451699951', ''),
(67, 'awards', 249, 'Awards', '1446724551', 'Asitara', 'This Plugin allows to obtain achievments', '0.2.1', '0.2.1', '1', 'stable', '[0.2.1] ---------------------------\r\n- small permission fix\r\n- #1362 > sorting achievements\r\n[0.2.0] ---------------------------\r\n- first release for EQdkp 2.1\r\n[0.1.0] ---------------------------\r\n- first release', '5.2', '2.1.0.9', 0, '1451699951', 'https://eqdkp-plus.eu/bugtracker/Product/29-Awards/'),
(68, 'dynamictemplate', 250, 'Dynamic Template', '1443021900', 'Asitara', 'Edit and manage your templates dynamically', '2.1.1', '2.1.1', '1', 'stable', '', '5.2', '2.1.0.9', 0, '1451699951', 'https://eqdkp-plus.eu/bugtracker/Product/3-EQdkp-Plus-Plugins/'),
(69, 'localitembase', 299, 'Local Itembase', '1448809628', 'Godmod', 'Create your own database for Item and use it for your EQdkp Plus Tooltips.', '1.0.3', '1.0.3', '1', 'stable', '1.0.3\r\n- Fixed an Issue where following parsers are ignored and Items are not fetched when LocalItembase was the first parser\r\n\r\n1.0.2\r\n- Fixed some errors\r\n\r\n1.0.1\r\n- Lots of Bugfixes. Reinstall of this Plugins neccessary.\r\n\r\n1.0.0\r\n- Initial Release', '5.4', '2.1.0.9', 0, '1451699951', ''),
(70, 'cmsimport', 298, 'CMS-Import', '1443018433', 'Godmod', 'Imports data (user, articles, ...) from other CMS like Wordpress or Joomla.', '1.0.0', '1.0.0', '1', 'stable', '', '5.4', '2.1.0.9', 0, '1451699951', ''),
(71, 'guildbank', 300, 'Guildbank', '1443291811', 'wallenium', 'Add items and Money to a banker account and manage the transactions.', '2.1.6', '2.1.6', '1', 'stable', '2.1.6\r\n- no changes, just updated API level for eqdkp-plus 2.1.\r\n\r\nInfo: I am working on version 2.2.0, which will include a bunch of bugfixes and improvements. As this version is not finished, i am releasing 2.1.x while fixing the last bugs.\r\n\r\n2.1.5\r\n- [shop/auction] current DKP sometimes return zero or wrong values (#1255)\r\n- [shop/auction] wrong event id for auto adjustments (#1256)', '5.4', '2.1.0.9', 0, '1451699951', ''),
(72, 'eqdkp_luna', 241, 'EQdkp Luna', '1444281367', 'Asitara', 'Luna Template made by Asitara', '0.1.1', '0.1.1', '2', 'stable', '[0.1.1] ---------------------------\r\n- much more style settings available\r\n- implements #1327\r\n[0.1.0] ---------------------------\r\n- new LESS version for EQdkp 2.1', '5.2', '2.1.0.9', 0, '1451699951', 'https://eqdkp-plus.eu/bugtracker/Product/28-EQdkp-Plus-Styles/'),
(73, 'eqdkp_swtor', 242, 'EQdkp SWTOR', '1444281350', 'Asitara', 'SWTOR Template made by Asitara  Inkraja', '0.1.1', '0.1.1', '2', 'stable', '[0.1.1] ---------------------------\r\n- much more style settings available\r\n- implements #1327\r\n[0.1.0] ---------------------------\r\n- new LESS version for EQdkp 2.1', '5.2', '2.1.0.9', 0, '1451699951', 'https://eqdkp-plus.eu/bugtracker/Product/28-EQdkp-Plus-Styles/'),
(74, 'eqdkp_wod', 243, 'EQdkp WoD', '1444281329', 'Asitara', 'WoD Template made by Asitara', '0.1.1', '0.1.1', '2', 'stable', '[0.1.1] ---------------------------\r\n- much more style settings available\r\n- implements #1327\r\n- fix #1335\r\n- small fixes on bg-video & pagination\r\n[0.1.0] ---------------------------\r\n- new LESS version for EQdkp 2.1', '5.2', '2.1.0.9', 0, '1451699951', 'https://eqdkp-plus.eu/bugtracker/Product/28-EQdkp-Plus-Styles/'),
(75, 'eqdkp_modern', 301, 'EQdkp Modern', '1443373553', 'Godmod', 'The default Template of EQdkp Plus 2.1', '0.2.0', '0.2.0', '2', 'stable', '', '5.4', '2.1.0.9', 0, '1451699951', ''),
(76, 'eq2progress', 204, 'Everquest 2 Progression', '1448208657', 'darkmaeg', 'All data for your guild is taken directly from Daybreak''s Data API to create a progression list with kills for current raid content.', '3.7', '3.7', '3', 'stable', '*Added Terrors of Thalumbra\r\n*Added Brell Serilis\r\n*Added Fabled Freethinker''s Hideout\r\n*Added Rum Cellar\r\n*Added Altar of Malice\r\n*Added Age''s End\r\n*Added Fabled Deathtoll\r\n*Added hidden mob in Dreadscale\r\n*Fixed some Achievement ID''s that Sony changed.\r\n*Added new Raid Zone: The Dreadscale''s Maw\r\n*Added New Contested X4 (High Keep)\r\n*Updated to Include Fabled Kingdom of Sky Raids.\r\n*Added option to display kill date in admin section.\r\n*Updated to Include Tears of Veeshan Expansion.\r\n*Updated to let you choose which zones to show in admin settings.\r\n*Data is cached and is updated once every 24 hours.', '5.2', '2.0.0.25', 0, '1451699951', ''),
(77, 'nwo', 184, 'Neverwinter', '1441529437', 'wallenium', 'Neverwinter is a Dungeons  Dragons (DD) free-to-play massively multiplayer online role-playing game (MMORPG) for the Microsoft Windows platform.', '1.0.0', '1.0.0', '7', 'stable', '1.0.0\r\n- Updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699951', ''),
(78, 'oco', 185, 'Order and Chaos Online', '1441529447', 'wallenium', 'Order and Chaos Online is a fantasy MMORPG video game developed by Gameloft for Windows Phone, iOS, and Android devices.', '1.0.0', '1.0.0', '7', 'stable', '1.0.0\r\n- Updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699951', ''),
(79, 'ps2', 186, 'Planetside 2', '1441529455', 'wallenium', 'PlanetSide 2 is a free-to-play massively multiplayer online first-person shooter published by Daybreak Game Company.', '1.0.0', '1.0.0', '7', 'stable', '1.0.0\r\n- Updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699951', ''),
(80, 'ro2', 187, 'Ragnarok Online 2: Legend of The Second', '1441529465', 'wallenium', 'Ragnarok Online 2: Legend of The Second is a remake of Ragnarok Online 2: The Gate of the World, the MMORPG created by Gravity Corp. of South Korea and is the sequel to the popular MMORPG, Ragnarok Online.', '1.0.0', '1.0.0', '7', 'stable', '1.0.0\r\n- Updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699952', ''),
(81, 'raiderz', 188, 'RaiderZ', '1441529474', 'wallenium', 'Raiderz (stylized as RaiderZ) is an massively multiplayer online role-playing game (MMORPG) developed by the Korean developer MAIET Entertainment.', '1.0.0', '1.0.0', '7', 'stable', '1.0.0\r\n- Updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699952', ''),
(82, 'rift', 189, 'RIFT', '1444944414', 'wallenium', 'Rift (previously known as Rift: Planes of Telara) is a fantasy free-to-play massively multiplayer online role-playing game (MMORPG) developed by Trion Worlds. Rift takes place within the fantasy world of Telara.', '3.4.1', '3.4.1', '7', 'stable', '3.4.1\r\n- add missing class color\r\n\r\n3.4.0\r\n- Add new class primalist\r\n\r\n2.1.0\r\n- Updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699952', ''),
(83, 'rom', 190, 'Runes of Magic', '1441529490', 'wallenium', 'Runes of Magic (RoM) is a massively multiplayer online role-playing game (MMORPG) developed by the Taiwanese developer Runewaker Entertainment and adapted for the English and German-speaking market by German company Frogster Interactive.', '1.0.0', '1.0.0', '7', 'stable', '1.0.0\r\n- Updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699952', ''),
(84, 'shakesfidget', 191, 'Shakes & Fidget', '1441529591', 'wallenium', 'Shakes and Fidget (also known as sfgame) is a computer role-playing game for Internet browsers and mobile devices developed and published by Playa Games in 2009.', '2.2.0', '2.2.0', '7', 'stable', '2.2.0\r\n- Updated for Eqdkp-Plus 2.0\r\n\r\n2.1.0\r\n- activated existing female race icons \r\n- added field_data.php for gender and guild information\r\n- added a bunch of new event icons\r\n- class icons haven''t been shown *fixed*\r\n- added a new game specific background', '5.4', '2.0.0.25', 0, '1451699952', ''),
(85, 'sto', 192, 'Star Trek Online', '1441529605', 'wallenium', 'Star Trek Online, often abbreviated as STO, is a massively multiplayer online role-playing game (MMORPG) developed by Cryptic Studios based on the popular Star Trek series created by Gene Roddenberry.', '1.0.0', '1.0.0', '7', 'stable', '1.0.0\r\n- Updated for Eqdkp-Plus 2.0\r\n\r\nchanges v0.2:\r\n- replaced all class icons\r\n- extended class to all factions\r\n- added content for the upcoming addon "legacy of romulus"\r\n- removed obsolete code\r\n\r\nchanges v0.1:\r\n\r\nfirst release', '5.4', '2.0.0.25', 0, '1451699952', ''),
(86, 'swtor', 193, 'Star Wars - The old Republic', '1448724336', 'Anykan', 'Star Wars: The Old Republic, often abbreviated as SWTOR, is a massively multiplayer online role-playing game (MMORPG) based in the Star Wars universe.', '2.4.1', '2.4.1', '7', 'stable', '2.0.4\r\n- some languages fixes\r\n- fixed some smaller issues\r\n\r\n2.0.3\r\n- use new table class and a lot of smaller updates\r\n\r\n2.0.2\r\n- a lot of updates and fixes\r\n\r\n2.0.1\r\n- some smaller bugfixes\r\n\r\n2.0.0\r\n- Updated for Eqdkp-Plus 2.0\r\n\r\n1.x\r\nAdded Race "Cathar"', '5.4', '2.0.0.25', 0, '1451699952', ''),
(87, 'tera', 194, 'Tera', '1441529626', 'wallenium', 'The Exiled Realm of Arborea (officially abbreviated as TERA) is a 3D fantasy themed MMORPG developed by Bluehole Studio.', '26.1.0', '26.1.0', '7', 'stable', '26.1.0\r\n- Updated for Eqdkp-Plus 2.0\r\n\r\n26.04\r\n- add Reaper Class\r\n- add Events', '5.4', '2.0.0.25', 0, '1451699952', ''),
(88, 'destiny', 195, 'Destiny', '1441528877', 'wallenium', 'Destiny is a first-person shooter video game developed by Bungie and published by Activision. Set in a "mythic science fiction" setting, the game features a massively-multiplayer "shared-world" environment with elements of role-playing games.', '1.1.0', '1.1.0', '7', 'stable', '1.1.0\r\n- Updated for Eqdkp-Plus 2.0', '5.4', '2.0.0.25', 0, '1451699952', ''),
(89, 'eq2', 203, 'EverQuest 2', '1448231400', 'darkmaeg', 'EverQuest II (EQ2) is a 3D fantasy massively multiplayer online role-playing game (MMORPG) developed by Daybreak Games, based on EverQuest, and shipped on 4 November 2004. It features updated graphics and different gameplay from its predecessor.', '2.4', '2.4', '7', 'stable', 'Changes v2.4\r\n- Updated for "Terrors of Thalumbra"\r\n- Added new Raid Events\r\n- Added ToT Guild Achievements\r\n- Added new deity Erollisi\r\n- Added new item tags (Relic, Prestige)\r\n- Replaced template_background with ToT\r\n- Added New Servers\r\n- Removed Old Servers\r\n\r\nChanges v2.3.6\r\n- Updated for "Rum Cellar"\r\n\r\nChanges v2.3.2\r\n- Updated for "Altar of Malice"\r\n\r\nChanges v2.2.7\r\n- Updated to add "Ages End"\r\n\r\nChanges v2.2.6\r\n- Updated Guild Achievements to show all new additions with Tears of Veeshan expansion\r\n-Updated Profile View - Raid Ready Tab\r\n-Added Tears of Veeshan Background\r\n-Fixed Character Icon with Importer\r\n-Updated all files to use new Sony Data API\r\n\r\nChanges v2.2.5\r\n- added new channeler class\r\n\r\nChanges v2.2.3:\r\n- replaced role icons with icons from game\r\n\r\nChanges v2.2.2:\r\n- moved predefined raid events into higher id range to avoid problems with existing custom events\r\n\r\nChanges v2.2.1:\r\n- added predefined raid events\r\n\r\nChanges v2.2: \r\n- added complete new class icons \r\n- added complete new race icons male/female\r\n- added field_data.php for gender selection\r\n- added roles and the corresponding icons\r\n- added rank icons\r\n- added new event icons and enabled feature in eq2.class.php\r\n- replaced template_background.jpg\r\n- sorted class names in alphabetic order', '5.2', '2.0.0.25', 0, '1451699952', ''),
(90, 'syf', 238, 'Skyforge', '1441528744', 'Inkraja', ' is a free-to-play third-person action massively multiplayer online roleplaying game developed by the [url=https://en.wikipedia.org/wiki/Mail.ru_Group]Mail.ru Group[/url]''s [url=https://en.wikipedia.org/wiki/Allods_Team]Allods Team[/url] in collaboration with [url=https://en.wikipedia.org/wiki/Obsidian_Entertainment]Obsidian Entertainment[/url] and published by [url=https://en.wikipedia.org/wiki/Mail.Ru]Mail.Ru[/url] and its subsidiary [url=https://en.wikipedia.org/wiki/My.com]My.com[/url] for selected markets.', '0.0.2', '0.0.2', '7', 'stable', '', '5.2', '2.0.0.25', 0, '1451699952', ''),
(91, 'akd', 209, 'Aura Kingdom', '1441528821', 'Anykan', '', '0.1.0', '0.1.0', '7', 'stable', '', '5.4', '2.0.0.25', 0, '1451699952', ''),
(92, 'pluskernel', 1, 'EQdkp Plus Core', '1448723405', 'EQdkp Plus Dev Team', 'EQdkp Plus Core Version', '2.1.4.0', '2.1.4', '1', 'stable', '2.1.4\r\n- Fixed Fatal Error on Ical Feed (#1378)\r\n- Fixed Fatal Error on "Confirm all signed-up" (#1376)\r\n- Fixed Problem with Color in Texts (#1377)\r\n\r\n2.1.3\r\n- Fixed Battle.net Login\r\n- Fixed Effective DKP\r\n- Fixed Problems with external Registration\r\n- Added ipbv4 Bridge\r\n- Fixed Problems with RSS Feeds\r\n\r\n2.1.2\r\n- Fixed Massmail\r\n- Fixed Editing Repeating Calender Events\r\n- Fixed Installation on some hosts\r\n\r\n2.1.1\r\n- Some Bugfixes/Update Improvements\r\n\r\n2.1.0\r\n- Away-Mode for calendar\r\n- Private Events in calendar\r\n- More improvements in calendar, like statistics, disabling automatic signup for raidleaders, custom repeating interval, ...\r\n- New Style-Editor\r\n- LESS-Compiler for better and easier Style-Creation\r\n- Added Twitter and Jabber as Notificationmethods\r\n- Assign Portallayouts to static pages like wrapper, userlist, ...\r\n- Support for new Plugins\r\n- Other bugfixes and improvements', '5.4', '2.1.0.9', 0, '1451699952', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_roles`
--

CREATE TABLE `eqdkp22_roles` (
  `c_index` mediumint(5) UNSIGNED NOT NULL,
  `role_id` mediumint(8) UNSIGNED NOT NULL,
  `role_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `role_classes` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_roles`
--

INSERT INTO `eqdkp22_roles` (`c_index`, `role_id`, `role_name`, `role_classes`) VALUES
(1, 1, 'Heiler', ''),
(2, 2, 'Tank', ''),
(3, 3, 'Fernkämpfer', ''),
(4, 4, 'Nahkämpfer', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_sessions`
--

CREATE TABLE `eqdkp22_sessions` (
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
  `session_failed_logins` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_vars` mediumtext COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_sessions`
--

INSERT INTO `eqdkp22_sessions` (`session_id`, `session_user_id`, `session_last_visit`, `session_start`, `session_current`, `session_page`, `session_ip`, `session_browser`, `session_key`, `session_type`, `session_perm_id`, `session_failed_logins`, `session_vars`) VALUES
('3b9617bdabfab5d009812ad999cbed16d1da07a3', 1, 1451699939, 1451699939, 1451699946, 'admin/index', '95.90.220.8', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', '28836152ce5c', '', -1, 0, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_styles`
--

CREATE TABLE `eqdkp22_styles` (
  `style_id` smallint(5) UNSIGNED NOT NULL,
  `style_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_version` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `style_contact` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `style_author` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `enabled` enum('0','1') COLLATE utf8_bin NOT NULL DEFAULT '0',
  `template_path` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'default',
  `attendees_columns` enum('1','2','3','4','5','6','7','8','9','10') COLLATE utf8_bin NOT NULL DEFAULT '6',
  `logo_position` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `background_img` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `column_right_width` varchar(20) COLLATE utf8_bin DEFAULT '',
  `column_left_width` varchar(20) COLLATE utf8_bin DEFAULT '',
  `portal_width` varchar(20) COLLATE utf8_bin DEFAULT '',
  `background_pos` varchar(20) COLLATE utf8_bin DEFAULT 'normal',
  `background_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `body_background_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `body_font_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `body_font_size` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `body_font_family` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `body_link_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `body_link_color_hover` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `body_link_decoration` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `container_background_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `container_border_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content_background_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content_font_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content_font_color_headings` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content_link_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content_link_color_hover` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content_border_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content_accent_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `userarea_background_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `userarea_font_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `userarea_link_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `userarea_link_color_hover` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `table_th_background_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `table_th_font_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `table_tr_font_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `table_tr_background_color1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `table_tr_background_color2` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `table_tr_background_color_hover` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `table_border_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `menu_background_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `menu_font_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `menu_item_background_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `menu_item_background_color_hover` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `menu_item_font_color_hover` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sidebar_background_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sidebar_font_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sidebar_border_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `button_background_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `button_font_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `button_border_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `button_background_color_hover` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `button_font_color_hover` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `button_border_color_hover` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `input_background_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `input_border_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `input_font_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `input_background_color_active` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `input_border_color_active` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `input_font_color_active` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content_contrast_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content_contrast_background_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content_contrast_border_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content_positive_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content_negative_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content_neutral_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content_highlight_color` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `misc_color1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `misc_color2` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `misc_color3` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `misc_text1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `misc_text2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `misc_text3` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `additional_less` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_styles`
--

INSERT INTO `eqdkp22_styles` (`style_id`, `style_name`, `style_version`, `style_contact`, `style_author`, `enabled`, `template_path`, `attendees_columns`, `logo_position`, `background_img`, `column_right_width`, `column_left_width`, `portal_width`, `background_pos`, `background_type`, `body_background_color`, `body_font_color`, `body_font_size`, `body_font_family`, `body_link_color`, `body_link_color_hover`, `body_link_decoration`, `container_background_color`, `container_border_color`, `content_background_color`, `content_font_color`, `content_font_color_headings`, `content_link_color`, `content_link_color_hover`, `content_border_color`, `content_accent_color`, `userarea_background_color`, `userarea_font_color`, `userarea_link_color`, `userarea_link_color_hover`, `table_th_background_color`, `table_th_font_color`, `table_tr_font_color`, `table_tr_background_color1`, `table_tr_background_color2`, `table_tr_background_color_hover`, `table_border_color`, `menu_background_color`, `menu_font_color`, `menu_item_background_color`, `menu_item_background_color_hover`, `menu_item_font_color_hover`, `sidebar_background_color`, `sidebar_font_color`, `sidebar_border_color`, `button_background_color`, `button_font_color`, `button_border_color`, `button_background_color_hover`, `button_font_color_hover`, `button_border_color_hover`, `input_background_color`, `input_border_color`, `input_font_color`, `input_background_color_active`, `input_border_color_active`, `input_font_color_active`, `content_contrast_color`, `content_contrast_background_color`, `content_contrast_border_color`, `content_positive_color`, `content_negative_color`, `content_neutral_color`, `content_highlight_color`, `misc_color1`, `misc_color2`, `misc_color3`, `misc_text1`, `misc_text2`, `misc_text3`, `additional_less`) VALUES
(1, 'EQdkp Modern', '0.2.0', '', 'GodMod', '1', 'eqdkp_modern', '6', 'left', '', '0px', '0px', '0px', 'normal', 0, 'rgb(46, 120, 176)', 'rgb(255, 255, 255)', '13', 'Tahoma,Arial,Verdana,sans-serif', 'rgb(254, 254, 254)', 'rgb(255, 255, 255)', 'none', 'rgb(224, 224, 224)', 'rgb(56, 56, 56)', 'rgb(245, 245, 245)', 'rgb(0, 0, 0)', 'rgb(0, 0, 0)', 'rgb(78, 127, 168)', 'rgb(0, 0, 0)', 'rgb(204, 204, 204)', 'rgb(234, 234, 234)', 'rgb(69, 72, 77)', 'rgb(217, 215, 215)', 'rgb(217, 215, 215)', 'rgb(255, 255, 255)', 'rgb(232, 232, 232)', 'rgb(0, 0, 0)', '', 'rgb(249, 249, 249)', 'rgb(245, 245, 245)', 'rgb(232, 232, 232)', 'rgb(221, 221, 221)', 'rgb(69, 72, 77)', 'rgb(217, 215, 215)', 'rgba(255, 255, 255, 0)', 'rgb(0, 0, 0)', 'rgb(217, 215, 215)', 'rgb(234, 234, 234)', 'rgb(0, 0, 0)', 'rgb(204, 204, 204)', 'rgb(0, 173, 238)', 'rgb(228, 245, 252)', 'rgb(0, 118, 163)', 'rgb(0, 149, 204)', 'rgb(217, 238, 247)', 'rgb(0, 118, 163)', 'rgb(255, 255, 255)', 'rgb(204, 204, 204)', 'rgb(85, 85, 85)', 'rgb(255, 255, 255)', 'rgba(82, 168, 236, 0.8)', 'rgb(85, 85, 85)', 'rgb(0, 0, 0)', 'rgb(252, 253, 254)', 'rgb(204, 204, 204)', 'rgb(51, 204, 51)', 'rgb(226, 59, 48)', 'rgb(153, 153, 153)', 'rgb(78, 127, 168)', 'rgb(78, 127, 168)', 'rgb(255, 255, 255)', '', '', '', '', '@styleCommentContainerBackgroundColor: #fff;\r\n@styleCommentContainerBorderColor: #ccc;\r\n@styleCommentAuthorColor: #9f9f9f;\r\n@stylePaginationBorderColor: #ddd;\r\n@stylePaginationBackgroundColor: #fff;\r\n@stylePaginationActiveBackgroundColor: #F7F7F9;\r\n@stylePaginationActiveColor: #999;\r\n@stylePaginationActiveHoverBackgroundColor: #F7F7F9;\r\n@stylePaginationActiveHoverColor: #000;\r\n@styleArticleSitemapBorderColor: #ddd;\r\n@styleArticleSitemapBackgroundColor: #fff;\r\n@styleArticleSitemapActiveBackgroundColor: #F7F7F9;\r\n@styleArticleSitemapActiveColor: #999999;\r\n@styleArticleSitemapHoverColor: #000;\r\n');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_users`
--

CREATE TABLE `eqdkp22_users` (
  `user_id` smallint(5) UNSIGNED NOT NULL,
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
  `user_registered` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_active` tinyint(1) NOT NULL DEFAULT '1',
  `custom_fields` text COLLATE utf8_bin,
  `plugin_settings` text COLLATE utf8_bin,
  `country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `birthday` bigint(10) DEFAULT '0',
  `privacy_settings` text COLLATE utf8_bin,
  `rules` tinyint(3) UNSIGNED DEFAULT '0',
  `auth_account` text COLLATE utf8_bin,
  `failed_login_attempts` int(3) NOT NULL DEFAULT '0',
  `exchange_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `hide_nochar_info` tinyint(1) DEFAULT '0',
  `notifications` text COLLATE utf8_bin,
  `awaymode_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `awaymode_startdate` int(11) DEFAULT '0',
  `awaymode_enddate` int(11) DEFAULT '0',
  `awaymode_note` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eqdkp22_user_profilefields`
--

CREATE TABLE `eqdkp22_user_profilefields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `lang_var` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(30) COLLATE utf8_bin NOT NULL,
  `length` int(10) UNSIGNED NOT NULL DEFAULT '30',
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `validation` text COLLATE utf8_bin NOT NULL,
  `required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `show_on_registration` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_contact` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `contact_url` text COLLATE utf8_bin,
  `icon_or_image` text COLLATE utf8_bin,
  `bridge_field` text COLLATE utf8_bin,
  `options` text COLLATE utf8_bin,
  `editable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `eqdkp22_user_profilefields`
--

INSERT INTO `eqdkp22_user_profilefields` (`id`, `name`, `lang_var`, `type`, `length`, `minlength`, `validation`, `required`, `show_on_registration`, `enabled`, `sort_order`, `is_contact`, `contact_url`, `icon_or_image`, `bridge_field`, `options`, `editable`) VALUES
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
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `eqdkp22_adjustments`
--
ALTER TABLE `eqdkp22_adjustments`
  ADD PRIMARY KEY (`adjustment_id`);

--
-- Indizes für die Tabelle `eqdkp22_articles`
--
ALTER TABLE `eqdkp22_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `eqdkp22_article_categories`
--
ALTER TABLE `eqdkp22_article_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `eqdkp22_auth_groups`
--
ALTER TABLE `eqdkp22_auth_groups`
  ADD KEY `auth_id` (`auth_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indizes für die Tabelle `eqdkp22_auth_options`
--
ALTER TABLE `eqdkp22_auth_options`
  ADD PRIMARY KEY (`auth_id`),
  ADD KEY `auth_value` (`auth_value`);

--
-- Indizes für die Tabelle `eqdkp22_auth_users`
--
ALTER TABLE `eqdkp22_auth_users`
  ADD KEY `auth_id` (`auth_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indizes für die Tabelle `eqdkp22_calendars`
--
ALTER TABLE `eqdkp22_calendars`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `eqdkp22_calendar_events`
--
ALTER TABLE `eqdkp22_calendar_events`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `eqdkp22_calendar_raid_attendees`
--
ALTER TABLE `eqdkp22_calendar_raid_attendees`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `eqdkp22_calendar_raid_guests`
--
ALTER TABLE `eqdkp22_calendar_raid_guests`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `eqdkp22_calendar_raid_templates`
--
ALTER TABLE `eqdkp22_calendar_raid_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `eqdkp22_classcolors`
--
ALTER TABLE `eqdkp22_classcolors`
  ADD PRIMARY KEY (`class_id`,`template`);

--
-- Indizes für die Tabelle `eqdkp22_comments`
--
ALTER TABLE `eqdkp22_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `eqdkp22_config`
--
ALTER TABLE `eqdkp22_config`
  ADD PRIMARY KEY (`config_name`,`config_plugin`);

--
-- Indizes für die Tabelle `eqdkp22_events`
--
ALTER TABLE `eqdkp22_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indizes für die Tabelle `eqdkp22_groups_raid`
--
ALTER TABLE `eqdkp22_groups_raid`
  ADD PRIMARY KEY (`groups_raid_id`);

--
-- Indizes für die Tabelle `eqdkp22_groups_user`
--
ALTER TABLE `eqdkp22_groups_user`
  ADD PRIMARY KEY (`groups_user_id`);

--
-- Indizes für die Tabelle `eqdkp22_itempool`
--
ALTER TABLE `eqdkp22_itempool`
  ADD PRIMARY KEY (`itempool_id`);

--
-- Indizes für die Tabelle `eqdkp22_items`
--
ALTER TABLE `eqdkp22_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indizes für die Tabelle `eqdkp22_links`
--
ALTER TABLE `eqdkp22_links`
  ADD PRIMARY KEY (`link_id`);

--
-- Indizes für die Tabelle `eqdkp22_logs`
--
ALTER TABLE `eqdkp22_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `log_tag` (`log_tag`),
  ADD KEY `log_ipaddress` (`log_ipaddress`);

--
-- Indizes für die Tabelle `eqdkp22_members`
--
ALTER TABLE `eqdkp22_members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indizes für die Tabelle `eqdkp22_member_profilefields`
--
ALTER TABLE `eqdkp22_member_profilefields`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `eqdkp22_member_ranks`
--
ALTER TABLE `eqdkp22_member_ranks`
  ADD UNIQUE KEY `rank_id` (`rank_id`);

--
-- Indizes für die Tabelle `eqdkp22_member_user`
--
ALTER TABLE `eqdkp22_member_user`
  ADD KEY `member_id` (`member_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indizes für die Tabelle `eqdkp22_multidkp`
--
ALTER TABLE `eqdkp22_multidkp`
  ADD PRIMARY KEY (`multidkp_id`);

--
-- Indizes für die Tabelle `eqdkp22_multidkp2event`
--
ALTER TABLE `eqdkp22_multidkp2event`
  ADD PRIMARY KEY (`multidkp2event_multi_id`,`multidkp2event_event_id`);

--
-- Indizes für die Tabelle `eqdkp22_multidkp2itempool`
--
ALTER TABLE `eqdkp22_multidkp2itempool`
  ADD PRIMARY KEY (`multidkp2itempool_itempool_id`,`multidkp2itempool_multi_id`);

--
-- Indizes für die Tabelle `eqdkp22_notifications`
--
ALTER TABLE `eqdkp22_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `eqdkp22_notification_types`
--
ALTER TABLE `eqdkp22_notification_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `eqdkp22_plugins`
--
ALTER TABLE `eqdkp22_plugins`
  ADD PRIMARY KEY (`code`);

--
-- Indizes für die Tabelle `eqdkp22_portal`
--
ALTER TABLE `eqdkp22_portal`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `eqdkp22_portal_blocks`
--
ALTER TABLE `eqdkp22_portal_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `eqdkp22_portal_layouts`
--
ALTER TABLE `eqdkp22_portal_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `eqdkp22_raids`
--
ALTER TABLE `eqdkp22_raids`
  ADD PRIMARY KEY (`raid_id`);

--
-- Indizes für die Tabelle `eqdkp22_raid_attendees`
--
ALTER TABLE `eqdkp22_raid_attendees`
  ADD KEY `raid_id` (`raid_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indizes für die Tabelle `eqdkp22_repository`
--
ALTER TABLE `eqdkp22_repository`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `eqdkp22_roles`
--
ALTER TABLE `eqdkp22_roles`
  ADD PRIMARY KEY (`c_index`);

--
-- Indizes für die Tabelle `eqdkp22_sessions`
--
ALTER TABLE `eqdkp22_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `session_current` (`session_current`);

--
-- Indizes für die Tabelle `eqdkp22_styles`
--
ALTER TABLE `eqdkp22_styles`
  ADD PRIMARY KEY (`style_id`);

--
-- Indizes für die Tabelle `eqdkp22_users`
--
ALTER TABLE `eqdkp22_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indizes für die Tabelle `eqdkp22_user_profilefields`
--
ALTER TABLE `eqdkp22_user_profilefields`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `eqdkp22_adjustments`
--
ALTER TABLE `eqdkp22_adjustments`
  MODIFY `adjustment_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_articles`
--
ALTER TABLE `eqdkp22_articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_article_categories`
--
ALTER TABLE `eqdkp22_article_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_auth_options`
--
ALTER TABLE `eqdkp22_auth_options`
  MODIFY `auth_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_calendars`
--
ALTER TABLE `eqdkp22_calendars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_calendar_events`
--
ALTER TABLE `eqdkp22_calendar_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_calendar_raid_attendees`
--
ALTER TABLE `eqdkp22_calendar_raid_attendees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_calendar_raid_guests`
--
ALTER TABLE `eqdkp22_calendar_raid_guests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_calendar_raid_templates`
--
ALTER TABLE `eqdkp22_calendar_raid_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_comments`
--
ALTER TABLE `eqdkp22_comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_events`
--
ALTER TABLE `eqdkp22_events`
  MODIFY `event_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_groups_raid`
--
ALTER TABLE `eqdkp22_groups_raid`
  MODIFY `groups_raid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_groups_user`
--
ALTER TABLE `eqdkp22_groups_user`
  MODIFY `groups_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_itempool`
--
ALTER TABLE `eqdkp22_itempool`
  MODIFY `itempool_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_items`
--
ALTER TABLE `eqdkp22_items`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_links`
--
ALTER TABLE `eqdkp22_links`
  MODIFY `link_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_logs`
--
ALTER TABLE `eqdkp22_logs`
  MODIFY `log_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_members`
--
ALTER TABLE `eqdkp22_members`
  MODIFY `member_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_multidkp`
--
ALTER TABLE `eqdkp22_multidkp`
  MODIFY `multidkp_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_notifications`
--
ALTER TABLE `eqdkp22_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_portal`
--
ALTER TABLE `eqdkp22_portal`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_portal_blocks`
--
ALTER TABLE `eqdkp22_portal_blocks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_portal_layouts`
--
ALTER TABLE `eqdkp22_portal_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_raids`
--
ALTER TABLE `eqdkp22_raids`
  MODIFY `raid_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_repository`
--
ALTER TABLE `eqdkp22_repository`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_roles`
--
ALTER TABLE `eqdkp22_roles`
  MODIFY `c_index` mediumint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_styles`
--
ALTER TABLE `eqdkp22_styles`
  MODIFY `style_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_users`
--
ALTER TABLE `eqdkp22_users`
  MODIFY `user_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `eqdkp22_user_profilefields`
--
ALTER TABLE `eqdkp22_user_profilefields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
