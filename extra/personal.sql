SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS personal DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE personal;

CREATE TABLE personas (
  id int(10) UNSIGNED NOT NULL,
  name varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  surname1 varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  surname2 varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  email varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  phone varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  marital_status varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  hobbies varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO personas VALUES(1, 'david', 'cadillo', 'blas', 'cadillodavid@gmail.com', '+51969875995', 'unmarried', 'nothing');
INSERT INTO personas VALUES(2, 'Rosa ', 'Chamochumbi', 'Esquina', 'rosita67_32_tulove@hotmail.com', '+51956734393', 'single', 'sleep');
INSERT INTO personas VALUES(3, 'martha', 'torres', 'mendoza', 'marthatorrez1@gmail.com', '+51987654432', 'married', 'sex');
INSERT INTO personas VALUES(4, 'jako', 'rodriguez', 'santiesteban', 'lokito65.d@hotmail.com', '+51998334560', 'single', 'nothing');
INSERT INTO personas VALUES(5, 'Regina', 'Aráoz ', 'Suecia', 'reginaraozsuec@gmail.com', '+51976333044', 'single', 'write');
INSERT INTO personas VALUES(6, 'Melodie', 'Kaufman', 'Hull', 'congue@Suspendisse.org', '+51969385583', 'single', 'nibh');
INSERT INTO personas VALUES(7, 'Mara', 'Burks', 'Key', 'natoque.penatibus@nuncidenim.net', '+51919719823', 'Common-Law', 'ipsum nunc id enim.');
INSERT INTO personas VALUES(8, 'Nichole', 'Harrell', 'Marquez', 'tortor.Integer@ultrices.co.uk', '+51984973851', 'Single', 'In condimentum. Donec at');
INSERT INTO personas VALUES(9, 'Yen', 'Michael', 'Serrano', 'ac@pharetraQuisqueac.edu', '+51936159936', 'Married', 'a, magna. Lorem ipsum');
INSERT INTO personas VALUES(10, 'Patricia', 'Mcintosh', 'Larson', 'eu.euismod.ac@Sednulla.edu', '+51923437279', 'Divorced', 'aliquet, metus urna convallis');
INSERT INTO personas VALUES(11, 'Indira', 'Ramirez', 'Miles', 'Mauris@vitaerisusDuis.net', '+51999971643', 'Married', 'montes, nascetur ridiculus mus.');
INSERT INTO personas VALUES(12, 'Iola', 'Gross', 'Sandoval', 'Duis@elit.ca', '+51964747175', 'Single', 'neque sed dictum eleifend,');
INSERT INTO personas VALUES(13, 'Heather', 'Powers', 'Sloan', 'Duis.sit.amet@dictumplacerat.co.uk', '+51912681846', 'Divorced', 'quis, pede. Praesent eu');
INSERT INTO personas VALUES(14, 'Buffy', 'Alvarez', 'Rhodes', 'a.enim@enimconsequat.net', '+51945772553', 'Divorced', 'placerat velit. Quisque varius.');
INSERT INTO personas VALUES(15, 'Walker', 'Carver', 'Ortega', 'inceptos.hymenaeos@per.org', '+51941495939', 'Married', 'mollis non, cursus non,');
INSERT INTO personas VALUES(16, 'Nola', 'Stokes', 'Johns', 'libero.nec@dignissim.edu', '+51936114948', 'Married', 'semper egestas, urna justo');
INSERT INTO personas VALUES(17, 'Macon', 'Soto', 'Meyer', 'arcu.Vestibulum@Curabituregestas.net', '+51981581993', 'Common-Law', 'quis diam. Pellentesque habitant');
INSERT INTO personas VALUES(18, 'Cruz', 'Bradford', 'Buck', 'Vivamus.rhoncus.Donec@mollisDuissit.com', '+51978241881', 'Common-Law', 'Morbi neque tellus, imperdiet');
INSERT INTO personas VALUES(19, 'Lael', 'Benton', 'Casey', 'eget.metus.In@odio.co.uk', '+51966165391', 'Common-Law', 'pharetra sed, hendrerit a,');
INSERT INTO personas VALUES(20, 'Xenos', 'Huff', 'Deleon', 'mi.ac@ultricesVivamus.net', '+51961583527', 'Divorced', 'scelerisque dui. Suspendisse ac');
INSERT INTO personas VALUES(21, 'Jackson', 'Joseph', 'Dotson', 'tristique.neque@cursusIntegermollis.co.uk', '+51945272625', 'Single', 'Aliquam erat volutpat. Nulla');
INSERT INTO personas VALUES(22, 'Kyle', 'Freeman', 'Bradley', 'dui.Fusce.aliquam@semelit.co.uk', '+51949891455', 'Divorced', 'iaculis, lacus pede sagittis');
INSERT INTO personas VALUES(23, 'Elmo', 'Goodman', 'Boyer', 'felis@non.edu', '+51942427973', 'Married', 'et magnis dis parturient');
INSERT INTO personas VALUES(24, 'Jackson', 'Delgado', 'Daugherty', 'et.magnis@Maurisvestibulum.com', '+51915425297', 'Single', 'vitae odio sagittis semper.');
INSERT INTO personas VALUES(25, 'Jakeem', 'Garcia', 'Thornton', 'mattis.ornare@vitaesodalesat.org', '+51956635585', 'Divorced', 'nibh dolor, nonummy ac,');
INSERT INTO personas VALUES(26, 'Morgan', 'Ellis', 'Robbins', 'odio.Aliquam.vulputate@auctorvelitAliquam.com', '+51989631551', 'Common-Law', 'nibh enim, gravida sit');
INSERT INTO personas VALUES(27, 'Kiona', 'Harding', 'Kirby', 'Aliquam.rutrum@Suspendisse.ca', '+51956492882', 'Divorced', 'Nullam nisl. Maecenas malesuada');
INSERT INTO personas VALUES(28, 'Kimberly', 'Flowers', 'Bridges', 'sit@congueelitsed.com', '+51959882883', 'Married', 'elementum, dui quis accumsan');
INSERT INTO personas VALUES(29, 'Lacey', 'Pollard', 'Pierce', 'neque.non.quam@nonfeugiatnec.com', '+51997666694', 'Divorced', 'Duis ac arcu. Nunc');
INSERT INTO personas VALUES(30, 'Mia', 'Gentry', 'Cochran', 'pulvinar.arcu.et@at.edu', '+51983467122', 'Divorced', 'amet ante. Vivamus non');
INSERT INTO personas VALUES(31, 'Patience', 'Bolton', 'Pope', 'lacinia.orci@enim.com', '+51945857844', 'Common-Law', 'mollis. Phasellus libero mauris,');
INSERT INTO personas VALUES(32, 'Iris', 'Chaney', 'Larson', 'penatibus.et@Donec.org', '+51932447457', 'Common-Law', 'tincidunt pede ac urna.');
INSERT INTO personas VALUES(33, 'Martina', 'Estrada', 'Franklin', 'Vivamus@parturientmontesnascetur.co.uk', '+51987639122', 'Single', 'imperdiet, erat nonummy ultricies');
INSERT INTO personas VALUES(34, 'Tasha', 'Ortiz', 'Roth', 'ut.quam@Integertincidunt.org', '+51925613969', 'Common-Law', 'Proin vel nisl. Quisque');
INSERT INTO personas VALUES(35, 'Ulla', 'Grimes', 'Simpson', 'massa@maurisMorbinon.com', '+51951964879', 'Divorced', 'ipsum ac mi eleifend');
INSERT INTO personas VALUES(36, 'Mia', 'Potts', 'Carr', 'elit@egestas.org', '+51998665891', 'Common-Law', 'Nulla tincidunt, neque vitae');
INSERT INTO personas VALUES(37, 'Dillon', 'Baxter', 'Whitehead', 'vulputate.posuere.vulputate@loremeumetus.co.uk', '+51969959287', 'Common-Law', 'eu metus. In lorem.');
INSERT INTO personas VALUES(38, 'Orli', 'Wiley', 'Jackson', 'Cras.vulputate@Donec.co.uk', '+51917994914', 'Married', 'in, dolor. Fusce feugiat.');
INSERT INTO personas VALUES(39, 'Reese', 'Dominguez', 'Langley', 'nec.enim.Nunc@lacusQuisquepurus.edu', '+51994826733', 'Married', 'volutpat nunc sit amet');
INSERT INTO personas VALUES(40, 'Cairo', 'Wade', 'Fowler', 'parturient.montes.nascetur@nisiCumsociis.ca', '+51918443212', 'Common-Law', 'In mi pede, nonummy');
INSERT INTO personas VALUES(41, 'Joelle', 'Randall', 'Black', 'metus.Aliquam@consequatenimdiam.com', '+51961743671', 'Common-Law', 'convallis dolor. Quisque tincidunt');
INSERT INTO personas VALUES(42, 'Harriet', 'Giles', 'Holland', 'accumsan.sed.facilisis@eunulla.edu', '+51985562988', 'Single', 'Suspendisse ac metus vitae');
INSERT INTO personas VALUES(43, 'Jackson', 'Mcclain', 'Preston', 'sem.Pellentesque.ut@scelerisqueduiSuspendisse.com', '+51984789919', 'Common-Law', 'tristique aliquet. Phasellus fermentum');
INSERT INTO personas VALUES(44, 'Iris', 'Gates', 'Santos', 'nonummy.ultricies.ornare@idantedictum.net', '+51914547398', 'Common-Law', 'eu, placerat eget, venenatis');
INSERT INTO personas VALUES(45, 'Salvador', 'Pugh', 'Sanford', 'Phasellus.at.augue@infaucibusorci.org', '+51955695643', 'Married', 'euismod et, commodo at,');
INSERT INTO personas VALUES(46, 'Gabriel', 'Valenzuela', 'Castillo', 'luctus.et.ultrices@iaculisenim.edu', '+51937993543', 'Common-Law', 'non nisi. Aenean eget');
INSERT INTO personas VALUES(47, 'Alfonso', 'Kennedy', 'Hutchinson', 'fermentum.arcu.Vestibulum@posuere.org', '+51962318763', 'Single', 'interdum feugiat. Sed nec');
INSERT INTO personas VALUES(48, 'Aurelia', 'Mills', 'Alford', 'nec@faucibusorciluctus.com', '+51966559281', 'Divorced', 'pede. Nunc sed orci');
INSERT INTO personas VALUES(49, 'Channing', 'Lamb', 'Cantrell', 'Vivamus@Cumsociisnatoque.edu', '+51972137884', 'Divorced', 'lorem fringilla ornare placerat,');
INSERT INTO personas VALUES(50, 'Elliott', 'Wyatt', 'Contreras', 'sit.amet.consectetuer@nisiAenean.org', '+51995119133', 'Common-Law', 'Praesent interdum ligula eu');
INSERT INTO personas VALUES(51, 'Samson', 'Bender', 'Paul', 'feugiat@sapien.ca', '+51974474249', 'Single', 'faucibus orci luctus et');
INSERT INTO personas VALUES(52, 'Darius', 'Pace', 'Aguirre', 'cursus.a@Nullam.co.uk', '+51958676832', 'Divorced', 'Nam consequat dolor vitae');
INSERT INTO personas VALUES(53, 'Amal', 'Conner', 'Ruiz', 'elit@sapiencursus.com', '+51996812173', 'Single', 'neque. Sed eget lacus.');
INSERT INTO personas VALUES(54, 'Nero', 'Keller', 'Dickerson', 'sed@tristiqueneque.org', '+51941674797', 'Divorced', 'nec, malesuada ut, sem.');
INSERT INTO personas VALUES(55, 'Hanna', 'Head', 'Hart', 'imperdiet.erat@sodales.net', '+51975132236', 'Married', 'eu elit. Nulla facilisi.');
INSERT INTO personas VALUES(56, 'Susan', 'Odonnell', 'Foley', 'lobortis@enimSednulla.ca', '+51994191639', 'Common-Law', 'lobortis risus. In mi');
INSERT INTO personas VALUES(57, 'Georgia', 'Burgess', 'Blake', 'magnis@nonjustoProin.co.uk', '+51935644588', 'Common-Law', 'In at pede. Cras');
INSERT INTO personas VALUES(58, 'Yuli', 'Odom', 'Pace', 'Nullam@Duisa.com', '+51984761696', 'Common-Law', 'enim. Curabitur massa. Vestibulum');
INSERT INTO personas VALUES(59, 'Beatrice', 'Bright', 'Mcleod', 'vitae.sodales.nisi@convallisconvallisdolor.net', '+51918396896', 'Married', 'cursus. Nunc mauris elit,');
INSERT INTO personas VALUES(60, 'Amir', 'Roberson', 'Edwards', 'pharetra.sed@tristique.net', '+51965248535', 'Common-Law', 'placerat velit. Quisque varius.');
INSERT INTO personas VALUES(61, 'Dai', 'Potts', 'Edwards', 'fringilla@Mauris.org', '+51968661187', 'Married', 'magnis dis parturient montes,');
INSERT INTO personas VALUES(62, 'Kellie', 'Owen', 'Salas', 'vitae.purus.gravida@liberoDonec.com', '+51966349528', 'Single', 'Aenean eget magna. Suspendisse');
INSERT INTO personas VALUES(63, 'Leonard', 'Barnes', 'Horn', 'rutrum@ullamcorper.com', '+51955452491', 'Single', 'quam, elementum at, egestas');
INSERT INTO personas VALUES(64, 'Colorado', 'Osborne', 'Flowers', 'volutpat.nunc@arcuacorci.edu', '+51912957794', 'Single', 'convallis convallis dolor. Quisque');
INSERT INTO personas VALUES(65, 'Sierra', 'Cannon', 'Salinas', 'Nulla.tincidunt@liberoMorbi.net', '+51968715417', 'Divorced', 'Nullam lobortis quam a');
INSERT INTO personas VALUES(66, 'Rafael', 'Morrison', 'Garza', 'elit.Aliquam@Utsagittis.co.uk', '+51992512894', 'Divorced', 'Proin vel arcu eu');
INSERT INTO personas VALUES(67, 'Irma', 'Avila', 'Gates', 'nulla.In.tincidunt@ligulaNullam.org', '+51952882774', 'Married', 'Nam interdum enim non');
INSERT INTO personas VALUES(68, 'Daquan', 'Gomez', 'Frazier', 'est.vitae@neceuismodin.com', '+51949478474', 'Common-Law', 'ligula consectetuer rhoncus. Nullam');
INSERT INTO personas VALUES(69, 'Holmes', 'Douglas', 'Hamilton', 'luctus.lobortis.Class@Loremipsum.edu', '+51946867817', 'Divorced', 'arcu. Morbi sit amet');
INSERT INTO personas VALUES(70, 'Nissim', 'Castro', 'Russell', 'sodales@Crasdictumultricies.org', '+51942196495', 'Common-Law', 'turpis non enim. Mauris');
INSERT INTO personas VALUES(71, 'Sydney', 'Golden', 'Mcmahon', 'neque.Nullam.nisl@nunc.co.uk', '+51928576443', 'Married', 'sagittis felis. Donec tempor,');
INSERT INTO personas VALUES(72, 'Melvin', 'Montgomery', 'Hale', 'Sed.congue.elit@consectetuereuismod.org', '+51978157317', 'Divorced', 'Quisque porttitor eros nec');
INSERT INTO personas VALUES(73, 'Phoebe', 'Fuller', 'Lane', 'ullamcorper.magna@vestibulum.ca', '+51912387919', 'Divorced', 'Nam ligula elit, pretium');
INSERT INTO personas VALUES(74, 'Callie', 'Ortega', 'Lane', 'quis.pede@diamDuismi.ca', '+51925352779', 'Single', 'Class aptent taciti sociosqu');
INSERT INTO personas VALUES(75, 'Emi', 'Stephenson', 'Guthrie', 'ac.mattis@Donecluctusaliquet.ca', '+51988983377', 'Married', 'feugiat non, lobortis quis,');
INSERT INTO personas VALUES(76, 'Ria', 'Oneal', 'Bray', 'et.rutrum.non@dictum.ca', '+51971964945', 'Married', 'felis purus ac tellus.');
INSERT INTO personas VALUES(77, 'Hammett', 'Golden', 'Hays', 'erat.semper@Nullam.net', '+51934417281', 'Common-Law', 'lacus. Etiam bibendum fermentum');
INSERT INTO personas VALUES(78, 'Eden', 'George', 'Daugherty', 'Morbi.metus@Phasellusdolorelit.edu', '+51936711146', 'Divorced', 'penatibus et magnis dis');
INSERT INTO personas VALUES(79, 'Kathleen', 'Barlow', 'Slater', 'augue@miac.co.uk', '+51998213782', 'Single', 'senectus et netus et');
INSERT INTO personas VALUES(80, 'Yoshi', 'Lane', 'Oneill', 'vitae.odio.sagittis@nullaInteger.ca', '+51992155355', 'Divorced', 'natoque penatibus et magnis');
INSERT INTO personas VALUES(81, 'Fallon', 'Bowen', 'Sullivan', 'amet.ornare.lectus@ipsumleo.co.uk', '+51951629695', 'Common-Law', 'erat volutpat. Nulla facilisis.');
INSERT INTO personas VALUES(82, 'Heidi', 'Burris', 'Oneil', 'malesuada@Mauris.co.uk', '+51971881668', 'Common-Law', 'molestie orci tincidunt adipiscing.');
INSERT INTO personas VALUES(83, 'Alexis', 'Maldonado', 'Hayden', 'lobortis.quam.a@montes.org', '+51993122838', 'Common-Law', 'neque non quam. Pellentesque');
INSERT INTO personas VALUES(84, 'Zoe', 'Hutchinson', 'Bridges', 'lobortis.mauris@mollis.org', '+51981656421', 'Married', 'Sed congue, elit sed');
INSERT INTO personas VALUES(85, 'James', 'Cruz', 'Benson', 'felis@Mauris.co.uk', '+51914784955', 'Married', 'rutrum magna. Cras convallis');
INSERT INTO personas VALUES(86, 'MacKensie', 'Travis', 'Frederick', 'vel.turpis@liberoettristique.net', '+51973997898', 'Common-Law', 'interdum ligula eu enim.');
INSERT INTO personas VALUES(87, 'Kevyn', 'Love', 'Torres', 'magna.a.tortor@duiCum.ca', '+51939221471', 'Married', 'Sed et libero. Proin');
INSERT INTO personas VALUES(88, 'Basia', 'Yates', 'Thompson', 'tellus.Suspendisse.sed@Integermollis.com', '+51964573648', 'Single', 'id, erat. Etiam vestibulum');
INSERT INTO personas VALUES(89, 'Paloma', 'Kane', 'Bean', 'tellus@telluseu.org', '+51968915972', 'Single', 'enim. Mauris quis turpis');
INSERT INTO personas VALUES(90, 'Germane', 'Harding', 'Salas', 'a.scelerisque.sed@pede.com', '+51922313249', 'Single', 'vulputate dui, nec tempus');
INSERT INTO personas VALUES(91, 'Justine', 'Castillo', 'Rollins', 'aliquam.eros.turpis@orci.ca', '+51946885561', 'Married', 'vitae semper egestas, urna');
INSERT INTO personas VALUES(92, 'Erica', 'Mathis', 'Briggs', 'magna.nec.quam@ametorci.net', '+51915771568', 'Married', 'aliquet diam. Sed diam');
INSERT INTO personas VALUES(93, 'Ursa', 'Robles', 'Phelps', 'ornare@rutrum.org', '+51974896798', 'Single', 'tristique pharetra. Quisque ac');
INSERT INTO personas VALUES(94, 'Tate', 'Lott', 'Erickson', 'urna@diamSed.net', '+51934989967', 'Single', 'In faucibus. Morbi vehicula.');
INSERT INTO personas VALUES(95, 'Jakeem', 'Best', 'Marquez', 'Morbi.vehicula.Pellentesque@tinciduntDonec.net', '+51949168118', 'Divorced', 'amet ultricies sem magna');
INSERT INTO personas VALUES(96, 'Ignatius', 'William', 'Harrell', 'pede@non.com', '+51976559966', 'Married', 'Maecenas mi felis, adipiscing');
INSERT INTO personas VALUES(97, 'Marcia', 'Crane', 'Hampton', 'at.lacus@accumsannequeet.org', '+51934392457', 'Married', 'id, blandit at, nisi.');
INSERT INTO personas VALUES(98, 'Dane', 'Alston', 'Giles', 'justo@dignissim.org', '+51971219989', 'Single', 'turpis non enim. Mauris');
INSERT INTO personas VALUES(99, 'Reuben', 'Brady', 'Payne', 'elit@quam.edu', '+51981841266', 'Single', 'dignissim lacus. Aliquam rutrum');
INSERT INTO personas VALUES(100, 'Caryn', 'Gregory', 'Mcclain', 'laoreet.libero@ridiculusmusAenean.net', '+51975181934', 'Married', 'Phasellus ornare. Fusce mollis.');
INSERT INTO personas VALUES(101, 'Lana', 'Morales', 'Mcconnell', 'consequat@felisadipiscingfringilla.com', '+51945633698', 'Common-Law', 'Quisque purus sapien, gravida');
INSERT INTO personas VALUES(102, 'Venus', 'Macdonald', 'Bernard', 'mattis.ornare@mauris.org', '+51958136126', 'Married', 'sagittis semper. Nam tempor');
INSERT INTO personas VALUES(103, 'Ursula', 'Compton', 'Pugh', 'Praesent@enimdiamvel.com', '+51978345715', 'Common-Law', 'Curabitur egestas nunc sed');
INSERT INTO personas VALUES(104, 'Kato', 'Marks', 'Mitchell', 'id.sapien@metus.com', '+51911464274', 'Common-Law', 'sed tortor. Integer aliquam');
INSERT INTO personas VALUES(105, 'Tatum', 'Massey', 'Warner', 'dignissim.pharetra.Nam@vel.co.uk', '+51943757591', 'Married', 'Nulla eu neque pellentesque');
INSERT INTO personas VALUES(106, 'Ivan', 'Sawyer', 'Saunders', 'aliquam.eu.accumsan@dapibusgravidaAliquam.co.uk', '+51989239125', 'Married', 'rutrum lorem ac risus.');
INSERT INTO personas VALUES(107, 'Piper', 'Salas', 'Holden', 'Duis.cursus.diam@ligulaAenean.co.uk', '+51969621585', 'single', 'ornare. Fusce');
INSERT INTO personas VALUES(110, 'Armand', 'Kirby', 'Flynn', 'dolor.Donec@tinciduntpede.ca', '+51926118145', 'Common-Law', 'Nullam ut nisi a');
INSERT INTO personas VALUES(111, 'Vielka', 'Huelva', 'Kirby', 'tellus.Phasellus.elit@et.edu', '+51947516726', 'Married', 'eget, volutpat ornare, facilisis');


ALTER TABLE personas
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY uk_email (email);


ALTER TABLE personas
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
