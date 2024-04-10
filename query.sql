--
-- Dokumentācija:
-- https://www.w3schools.com/sql/default.asp
-- vai
-- https://sqlzoo.net/wiki/SQL_Tutorial
-- Palaist kodu:
-- https://sqlfiddle.com/sqlite/online-compiler (SQLite vai MySQL)
-- or
-- https://sqlite.org/fiddle/ 
--

-- Uzdevums: uzrakstīt zemāk minētus skripts un saglabāt šajā failā

-- Izveidot tabulu atbilstoši faila books.json struktūrai (CREATE)
-- Ierakstīt 10 jebkuru grāmatu ierakstus jaunā tabulā (INSERT)
-- Atlasīt tikai grāmatu nosaukumu, ISBN un lapu skaitu (SELECT)
-- Atlasīt grāmatu ar konkrētu ISBN (SELECT, WHERE)
-- Sakārtot tabulu pēc lapu skaita, no lielāka uz mazāko (SELECT, ORDER BY)

CREATE TABLE Books(
	Title TEXT,
	ISBN TEXT,
	pageCount INTEGER,
	authors TEXT,
	publishDate TEXT,
  	description TEXT
);

INSERT INTO Books VALUES ('Flex on Java by Bernerd Allmon','1933988797', 265, 'Bernerd Allmon Jeremy Anderson','2010-10-15T00:00:00.000-0700','A beautifully written book that is a must have for every Java Developer.       Ashish Kulkarni, Technical Director, E-Business Software Solutions Ltd.');
INSERT INTO Books VALUES ('Coffeehouse','1884777384', 316, 'Levi Asher Christian Crumlish', '1997-07-01T00:00:00.000-0700','Coffeehouse is an anthology of stories, poems and essays originally published on the World Wide Web.');
INSERT INTO Books VALUES ('iBATIS in Action','1932394826',384,'Clinton Begin, Brandon Goodin, Larry Meadors', '2007-01-01T00:00:00.000-0800', 'Gets new users going and gives experienced users in-depth coverage of advanced features.       Jeff Cunningham, The Weather Channel Interactive');
INSERT INTO Books VALUES ('ASP.NET 4.0 in Practice', '1935182463', 504, 'Daniele Bochicchio, Stefano Mostarda, , Marco De Sanctis','2011-05-15T00:00:00.000-0700', 'ASP.NET 4.0 in Practice contains real world techniques from well-known professionals who have been using ASP.NET since the first previews.');
INSERT INTO Books VALUES ('Hello! Python', '1935182080', 350, 'Anthony Briggs', '2012-02-13T00:00:00.000-0800','Hello! Python fully covers the building blocks of Python programming and gives you a gentle introduction to more advanced topics such as object oriented programming, functional programming, network programming, and program design. New (or nearly new) programmers will learn most of what they need to know to start using Python immediately.');
INSERT INTO Books VALUES ('Mobile Agents','1884777368',320, 'William R. Cockayne and Michael Zyda, editors', '1997-03-01T00:00:00.000-0800', 'Mobile Agents is the first book to give the reader the ability to create and use powerful mobile agents on the Internet.');
INSERT INTO Books VALUES ('Spring Dynamic Modules in Action', '1935182307', 450, 'Arnaud Cogoluegnes, Thierry Templier, , Andy Piper','2010-09-04T00:00:00.000-0700', 'Spring Dynamic Modules in Action introduces Spring DM and OSGi to Java EE developers and architects. It presents the fundamental concepts of OSGi-based apps and maps them to the familiar ideas of the Spring framework. Then, it engages you with the techniques and concepts you ll need to develop stable, flexible enterprise apps. You ll learn how to embed a Spring container inside an OSGi bundle, and how Spring DM lets you blend Spring strengths like dependency injection with OSGi-based services. Along the way, you ll see how Spring DM handles data access and web-based components, and you ll explore topics like unit testing and configuration in an OSGi-based environment.');
INSERT INTO Books VALUES ('Seam in Action','1933988401',624, 'Dan Allen', '2008-08-01T00:00:00.000-0700', 'eam in Action goes into great detail on the ways in which Seam helps reduce the burden of integration with different technologies such as Hibernate and JSF, allowing the developer to focus on the core business objective at hand.       Shobana Jayaraman, Digital Infrastructure Analyst, University of Texas Southwestern Medical Center Library, The Tech Static');
INSERT INTO Books VALUES ('Up to Speed with Swing, Second Edition', '1884777759', 560, 'Steven Gutz', '1999-10-01T00:00:00.000-0700', 'Now in its Second Edition, Up to Speed with Swing is for you if you want to get on the fast track to Java Swing. The second edition has been extensively updated to cover Java 1.2 with additional code examples and illustrations.');
INSERT INTO Books VALUES ('Java Development with Ant', '1930110588', 672, 'Erik Hatcher, Steve Loughran', '2002-08-01T00:00:00.000-0700', 'The most widely used build tool for Java projects, Ant is cross-platform, extensible, simple, and fast. It scales from small personal projects to large, multi-team J2EE projects. And, most important, its easy to learn.');

SELECT DISTINCT Title, ISBN, pageCount FROM Books;
SELECT DISTINCT Title, ISBN, pageCount FROM Books 
WHERE ISBN = '1884777368';
SELECT * FROM Books
ORDER BY pageCount DESC;
