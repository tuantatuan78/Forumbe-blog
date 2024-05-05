-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: khoaluan
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

CREATE DATABASE khoaluan;

USE khoaluan;

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (12,'CSS'),(11,'HTML'),(1,'Java'),(2,'JavaScript'),(4,'Python'),(6,'Ruby');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codes`
--

DROP TABLE IF EXISTS `codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `id_post` int DEFAULT NULL,
  `language` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_post_id_Code` (`id_post`),
  CONSTRAINT `FK_post_id_Code` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codes`
--

LOCK TABLES `codes` WRITE;
/*!40000 ALTER TABLE `codes` DISABLE KEYS */;
INSERT INTO `codes` VALUES (3,'System.out.println()','<p><span>B&ecirc;n trong phương&nbsp;</span><code class=\"w3-codespan\">main()</code><span>thức, ch&uacute;ng ta c&oacute; thể sử dụng&nbsp;</span><code class=\"w3-codespan\">println()</code><span>phương thức để in một d&ograve;ng văn bản ra m&agrave;n h&igrave;nh:</span></p>','public class Main {\r\n  public static void main(String[] args) {\r\n    System.out.println(\"Hello World\");\r\n  }\r\n}',3,'java'),(4,'Cú pháp Java','<p><span>Trong chương trước, ch&uacute;ng ta đ&atilde; tạo một tệp Java c&oacute; t&ecirc;n&nbsp;</span><code class=\"w3-codespan\">Main.java</code><span>, v&agrave; ch&uacute;ng ta đ&atilde; sử dụng đoạn m&atilde; sau để in \"Hello World\" ra m&agrave;n h&igrave;nh:</span></p>','public class Main {\r\n  public static void main(String[] args) {\r\n    System.out.println(\"Hello World\");\r\n  }\r\n}',3,'java'),(5,'In văn bản','<p><span>Bạn đ&atilde; học từ chương trước rằng bạn c&oacute; thể sử dụng&nbsp;</span><code class=\"w3-codespan\">println()</code><span>phương thức n&agrave;y để xuất gi&aacute; trị hoặc in văn bản trong Java:</span></p>','\n    public class Main {  \n      public static void main(String[] args) {\n        System.out.println(\"Hello World!\");\n        System.out.println(\"I am learning Java.\");\n        System.out.println(\"It is awesome!\");\n      }\n    }',5,'java'),(6,'Dấu ngoặc kép','<p><span>Khi bạn l&agrave;m việc với văn bản, n&oacute; phải được đặt trong dấu ngoặc k&eacute;p&nbsp;</span><code class=\"w3-codespan\">\"\"</code><span>.</span></p>\n<p><span>Nếu bạn qu&ecirc;n dấu ngoặc k&eacute;p th&igrave; sẽ xảy ra lỗi:</span></p>','\n    public class Main {  \n      public static void main(String[] args) {\n        System.out.println(This sentence will produce an error);\n      }\n    }',5,'java'),(7,'Phương thức Print()','<p><span>Ngo&agrave;i ra c&ograve;n c&oacute; một&nbsp;</span><code class=\"w3-codespan\">print()</code><span>phương thức tương tự như&nbsp;</span><code class=\"w3-codespan\">println()</code><span>.</span></p>\n<p><span>Điểm kh&aacute;c biệt duy nhất l&agrave; n&oacute; kh&ocirc;ng ch&egrave;n d&ograve;ng mới v&agrave;o cuối đầu ra:</span></p>','\n    public class Main {  \n      public static void main(String[] args) {\n        System.out.print(\"Hello World! \");\nSystem.out.print(\"I will print on the same line.\");  \n      }\n    }',5,'java'),(8,'Nhận xét một dòng','<p><span>Nhận x&eacute;t một d&ograve;ng bắt đầu bằng hai dấu gạch ch&eacute;o l&ecirc;n (&nbsp;</span><code class=\"w3-codespan\">//</code><span>).</span></p>\n<p><span>Bất kỳ văn bản n&agrave;o ở giữa&nbsp;</span><code class=\"w3-codespan\">//</code><span>v&agrave; cuối d&ograve;ng đều bị Java bỏ qua (sẽ kh&ocirc;ng được thực thi).</span></p>\n<p><span>V&iacute; dụ n&agrave;y sử dụng nhận x&eacute;t một d&ograve;ng trước một d&ograve;ng m&atilde;:</span></p>','\n    public class Main {  \n      public static void main(String[] args) {\n        // This is a comment\n        System.out.println(\"Hello World\"); \n        System.out.println(\"Hello World\"); // This is a comment\n      }\n    }',6,'java'),(9,'Nhận xét nhiều dòng Java','<p><span>Nhận x&eacute;t nhiều d&ograve;ng bắt đầu bằng&nbsp;</span><code class=\"w3-codespan\">/*</code><span>v&agrave; kết th&uacute;c bằng&nbsp;</span><code class=\"w3-codespan\">*/</code><span>.</span></p>\n<p><span>Bất kỳ văn bản n&agrave;o ở giữa&nbsp;</span><code class=\"w3-codespan\">/*</code><span>v&agrave;&nbsp;</span><code class=\"w3-codespan\">*/</code><span>sẽ bị Java bỏ qua.</span></p>\n<p><span>V&iacute; dụ n&agrave;y sử dụng nhận x&eacute;t nhiều d&ograve;ng (khối nhận x&eacute;t) để giải th&iacute;ch m&atilde;:</span></p>','\n    public class Main {  \n      public static void main(String[] args) {\n        /* The code below will print the words Hello World\n        to the screen, and it is amazing */\n        System.out.println(\"Hello World\"); \n      }\n    }',6,'java'),(10,'JavaScript có thể thay đổi nội dung HTML','<p>One of many JavaScript HTML methods is&nbsp;<span style=\"color: rgb(224, 62, 45);\"><code class=\"w3-codespan\">getElementById()</code></span>.</p>\n<p>The example below \"finds\" an HTML element (with id=\"demo\"), and changes the element content (innerHTML) to \"Hello JavaScript\":</p>','<!DOCTYPE html>\n<html>\n<body>\n\n<h2>What Can JavaScript Do?</h2>\n\n<p id=\"demo\">JavaScript can change HTML content.</p>\n\n<button onclick=\'document.getElementById(\"demo\").innerHTML = \"Hello JavaScript!\"\'>Click Me!</button>\n\n</body>\n</html>',9,'html'),(11,'Tại sao nên sử dụng CSS?','<p>CSS được sử dụng để x&aacute;c định kiểu cho c&aacute;c trang web của bạn, bao gồm thiết kế, bố cục v&agrave; c&aacute;c biến thể hiển thị cho c&aacute;c thiết bị v&agrave; k&iacute;ch thước m&agrave;n h&igrave;nh kh&aacute;c nhau.</p>','<!DOCTYPE html>\n<html>\n<head>\n<style>\nbody {\n  background-color: lightblue;\n}\n\nh1 {\n  color: white;\n  text-align: center;\n}\n\np {\n  font-family: verdana;\n  font-size: 20px;\n}\n</style>\n</head>\n<body>\n\n<h1>My First CSS Example</h1>\n<p>This is a paragraph.</p>\n\n</body>\n</html>\n\n\n',10,'html'),(12,'Biến Java','<p>Where&nbsp;<em>type</em>&nbsp;is one of Java\'s types (such as&nbsp;<code class=\"w3-codespan\">int</code>&nbsp;or&nbsp;<code class=\"w3-codespan\">String</code>), and&nbsp;<em>variableName</em>&nbsp;is the name of the variable (such as&nbsp;<strong>x</strong>&nbsp;or&nbsp;<strong>name</strong>). The&nbsp;<strong>equal sign</strong>&nbsp;is used to assign values to the variable.</p>\n<p>To create a variable that should store text, look at the following example:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		String name = \"John\";\n		System.out.println(name);\n	}\n}\n',11,'java'),(13,'Biến số','<p>To create a variable that should store a number, look at the following example:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		int myNum = 15;\n		System.out.println(myNum);\n	}\n}\n',11,'java'),(14,NULL,'<p>You can also declare a variable without assigning the value, and assign the value later:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		int myNum;\n		myNum = 15;\n		System.out.println(myNum);\n	}\n}\n',11,'java'),(15,'','<p>Note that if you assign a new value to an existing variable, it will overwrite the previous value:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		int myNum = 15;\n		myNum = 20;  // myNum is now 20\n		System.out.println(myNum);\n	}\n}\n',11,'java'),(16,'Hằng số','<p>If you don\'t want others (or yourself) to overwrite existing values, use the&nbsp;<code class=\"w3-codespan\">final</code>&nbsp;keyword (this will declare the variable as \"final\" or \"constant\", which means unchangeable and read-only):</p>','\npublic class Main {\n	public static void main(String[] args) {\n		final int myNum = 15;\n		myNum = 20;  // will generate an error: cannot assign a value to a final variable\n	}\n}\n',11,'java'),(17,'Các kiểu khác','<p>A demonstration of how to declare variables of other types:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		int myNum = 5;\n		float myFloatNum = 5.99f;\n		char myLetter = \'D\';\n		boolean myBool = true;\n		String myText = \"Hello\";\n	}\n}\n',11,'java'),(18,'Java Data Types','<p>As explained in the previous chapter, a&nbsp;<a href=\"https://www.w3schools.com/java/java_variables.asp\">variable</a>&nbsp;in Java must be a specified data type:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		int myNum = 5;               // Integer (whole number)\n		float myFloatNum = 5.99f;    // Floating point number\n		char myLetter = \'D\';         // Character\n		boolean myBool = true;       // Boolean\n		String myText = \"Hello\";     // String\n	}\n}\n',12,'java'),(19,'Widening Casting','<p>Widening casting is done automatically when passing a smaller size type to a larger size type:</p>','public class Main {\n  public static void main(String[] args) {\n    int myInt = 9;\n    double myDouble = myInt; // Automatic casting: int to double\n\n    System.out.println(myInt);      // Outputs 9\n    System.out.println(myDouble);   // Outputs 9.0\n  }\n}',13,'java'),(20,'Narrowing Casting','<p>Narrowing casting must be done manually by placing the type in parentheses in front of the value:</p>','public class Main {\n  public static void main(String[] args) {\n    double myDouble = 9.78d;\n    int myInt = (int) myDouble; // Manual casting: double to int\n\n    System.out.println(myDouble);   // Outputs 9.78\n    System.out.println(myInt);      // Outputs 9\n  }\n}\n',13,'java'),(21,'Java Operators','<p>Operators are used to perform operations on variables and values.</p>\n<p>In the example below, we use the&nbsp;<code class=\"w3-codespan\">+</code>&nbsp;<strong>operator</strong>&nbsp;to add together two values:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		int x = 100 + 50;\n	}\n}\n',14,'java'),(22,NULL,'<p>Although the&nbsp;<code class=\"w3-codespan\">+</code>&nbsp;operator is often used to add together two values, like in the example above, it can also be used to add together a variable and a value, or a variable and another variable:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		int sum1 = 100 + 50;        // 150 (100 + 50)\n		int sum2 = sum1 + 250;      // 400 (150 + 250)\n		int sum3 = sum2 + sum2;     // 800 (400 + 400)\n	}\n}\n',14,'java'),(23,'Java Assignment Operators','<p>Assignment operators are used to assign values to variables.</p>\n<p>In the example below, we use the&nbsp;<strong>assignment</strong>&nbsp;operator (<code class=\"w3-codespan\">=</code>) to assign the value&nbsp;<strong>10</strong>&nbsp;to a variable called&nbsp;<strong>x</strong>:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		int x = 10;\n	}\n}\n',14,'java'),(24,NULL,'<p>The&nbsp;<strong>addition assignment</strong>&nbsp;operator (<code class=\"w3-codespan\">+=</code>) adds a value to a variable:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		int x = 10;\n		x += 5;\n	}\n}\n',14,'java'),(25,'Java Strings','<p>Strings are used for storing text.</p>\n<p>A&nbsp;<code class=\"w3-codespan\">String</code>&nbsp;variable contains a collection of characters surrounded by double quotes:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		String greeting = \"Hello\";\n	}\n}\n',15,'java'),(26,'String Length','<p>A String in Java is actually an object, which contain methods that can perform certain operations on strings. For example, the length of a string can be found with the&nbsp;<code class=\"w3-codespan\">length()</code>&nbsp;method:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		String txt = \"ABCDEFGHIJKLMNOPQRSTUVWXYZ\";\n		System.out.println(\"The length of the txt string is: \" + txt.length());\n	}\n}\n',15,'java'),(27,'More String Methods','<p>There are many string methods available, for example&nbsp;<code class=\"w3-codespan\">toUpperCase()</code>&nbsp;and&nbsp;<code class=\"w3-codespan\">toLowerCase()</code>:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		String txt = \"Hello World\";\n		System.out.println(txt.toUpperCase());   // Outputs \"HELLO WORLD\"\n		System.out.println(txt.toLowerCase());   // Outputs \"hello world\"\n	}\n}\n',15,'java'),(28,'Finding a Character in a String','<p>The&nbsp;<code class=\"w3-codespan\">indexOf()</code>&nbsp;method returns the&nbsp;<strong>index</strong>&nbsp;(the position) of the first occurrence of a specified text in a string (including whitespace):</p>','\npublic class Main {\n	public static void main(String[] args) {\n		String txt = \"Please locate where \'locate\' occurs!\";\n		System.out.println(txt.indexOf(\"locate\")); // Outputs 7\n	}\n}\n',15,'java'),(29,'Math.max(x,y)','<p>The&nbsp;<code class=\"w3-codespan\">Math.max(<em>x</em>,<em>y</em>)</code>&nbsp;method can be used to find the highest value of&nbsp;<em>x</em>&nbsp;and&nbsp;<em>y</em>:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		Math.max(5, 10);\n	}\n}\n',16,'java'),(30,'Math.min(x,y)','<p>The&nbsp;<code class=\"w3-codespan\">Math.min(<em>x</em>,<em>y</em>)</code>&nbsp;method can be used to find the lowest value of&nbsp;<em>x</em>&nbsp;and&nbsp;<em>y</em>:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		Math.min(5, 10);\n	}\n}\n',16,'java'),(31,'Math.sqrt(x)','<p>The&nbsp;<code class=\"w3-codespan\">Math.sqrt(<em>x</em>)</code>&nbsp;method returns the square root of&nbsp;<em>x</em>:</p>','public class Main {\n  public static void main(String[] args) {\n    System.out.println(Math.sqrt(64));  \n  }\n}\n',16,'java'),(32,'Math.abs(x)','<p>The&nbsp;<code class=\"w3-codespan\">Math.abs(<em>x</em>)</code>&nbsp;method returns the absolute (positive) value of&nbsp;<em>x</em>:</p>','public class Main {\n  public static void main(String[] args) {\n    System.out.println(Math.abs(-4.7));  \n  }\n}\n',16,'java'),(33,'Random Numbers','<p><code class=\"w3-codespan\">Math.random()</code>&nbsp;returns a random number between 0.0 (inclusive), and 1.0 (exclusive):</p>','public class Main {\n  public static void main(String[] args) {\n    System.out.println(Math.random());  \n  }\n}\n',16,'java'),(34,NULL,'<p>To get more control over the random number, for example, if you only want a random number between 0 and 100, you can use the following formula:</p>','public class Main {\n  public static void main(String[] args) {\n    int randomNum = (int)(Math.random() * 101);  // 0 to 100\n    System.out.println(randomNum);\n  }\n}\n',16,'java'),(35,'Boolean Values','<p>A boolean type is declared with the&nbsp;<code class=\"w3-codespan\">boolean</code>&nbsp;keyword and can only take the values&nbsp;<code class=\"w3-codespan\">true</code>&nbsp;or&nbsp;<code class=\"w3-codespan\">false</code>:</p>','\npublic class Main {\n	public static void main(String[] args) {\n		boolean isJavaFun = true;\n		boolean isFishTasty = false;\n		System.out.println(isJavaFun);     // Outputs true\n		System.out.println(isFishTasty);   // Outputs false\n	}\n}\n',17,'java'),(36,'Boolean Expression','<p>A Boolean expression returns a boolean value:&nbsp;<code class=\"w3-codespan\">true</code>&nbsp;or&nbsp;<code class=\"w3-codespan\">false</code>.</p>\n<p>This is useful to build logic, and find answers.</p>\n<p>For example, you can use a&nbsp;<a href=\"https://www.w3schools.com/java/java_operators.asp\">comparison operator</a>, such as the&nbsp;<strong>greater than</strong>&nbsp;(<code class=\"w3-codespan\">&gt;</code>) operator, to find out if an expression (or a variable) is true or false:</p>','public class Main {\n  public static void main(String[] args) {\n    int x = 10;\n    int y = 9;\n    System.out.println(x > y); // returns true, because 10 is higher than 9  \n  }\n}\n',17,'java'),(37,'Real Life Example','<p>Let\'s think of a \"real life example\" where we need to find out if a person is old enough to vote.</p>\n<p>In the example below, we use the&nbsp;<code class=\"w3-codespan\">&gt;=</code>&nbsp;comparison operator to find out if the age (<code class=\"w3-codespan\">25</code>) is&nbsp;<strong>greater than</strong>&nbsp;OR&nbsp;<strong>equal to</strong>&nbsp;the voting age limit, which is set to&nbsp;<code class=\"w3-codespan\">18</code>:</p>','public class Main {\n  public static void main(String[] args) {\n    int myAge = 25;\n    int votingAge = 18;\n    System.out.println(myAge >= votingAge);\n  }\n}\n',17,'java'),(38,'','<p>Cool, right? An even better approach (since we are on a roll now), would be to wrap the code above in an&nbsp;<code class=\"w3-codespan\">if...else</code>&nbsp;statement, so we can perform different actions depending on the result:</p>','public class Main {\n  public static void main(String[] args) {\n    int myAge = 25;\n    int votingAge = 18;\n\n    if (myAge >= votingAge) {\n      System.out.println(\"Old enough to vote!\");\n    } else {\n      System.out.println(\"Not old enough to vote.\");\n    }\n  }\n}\n',17,'java'),(39,'The if Statement','<p>Use the&nbsp;<code class=\"w3-codespan\">if</code>&nbsp;statement to specify a block of Java code to be executed if a condition is&nbsp;<code class=\"w3-codespan\">true</code>.</p>','public class Main {\n  public static void main(String[] args) {\n    if (20 > 18) {\n      System.out.println(\"20 is greater than 18\"); // obviously\n    }  \n  }\n}',18,'java'),(40,'','<p>We can also test variables:</p>','public class Main {\n  public static void main(String[] args) {\n    int x = 20;\n    int y = 18;\n    if (x > y) {\n      System.out.println(\"x is greater than y\");\n    }\n  }\n}',18,'java'),(41,'The else Statement','<p>Use the&nbsp;<code class=\"w3-codespan\">else</code>&nbsp;statement to specify a block of code to be executed if the condition is&nbsp;<code class=\"w3-codespan\">false</code>.</p>','public class Main {\n  public static void main(String[] args) {\n    int time = 20;\n    if (time < 18) {\n      System.out.println(\"Good day.\");\n    } else {\n      System.out.println(\"Good evening.\");\n    }\n    // Outputs \"Good evening.\"\n  }\n}',18,'java'),(42,'The else if Statement','<p>Use the&nbsp;<code class=\"w3-codespan\">else if</code>&nbsp;statement to specify a new condition if the first condition is&nbsp;<code class=\"w3-codespan\">false</code>.</p>','public class Main {\n  public static void main(String[] args) {\n    int time = 22;\n    if (time < 10) {\n      System.out.println(\"Good morning.\");\n    } else if (time < 18) {\n      System.out.println(\"Good day.\");\n    } else {\n      System.out.println(\"Good evening.\");\n    }\n    // Outputs \"Good evening.\"\n  }\n}',18,'java'),(43,'Java Switch Statements','<p>Instead of writing&nbsp;<strong>many</strong>&nbsp;<code class=\"w3-codespan\">if..else</code>&nbsp;statements, you can use the&nbsp;<code class=\"w3-codespan\">switch</code>&nbsp;statement.</p>\n<p>The&nbsp;<code class=\"w3-codespan\">switch</code>&nbsp;statement selects one of many code blocks to be executed:</p>\n<p>This is how it works:</p>\n<ul>\n<li>The&nbsp;<code class=\"w3-codespan\">switch</code>&nbsp;expression is evaluated once.</li>\n<li>The value of the expression is compared with the values of each&nbsp;<code class=\"w3-codespan\">case</code>.</li>\n<li>If there is a match, the associated block of code is executed.</li>\n<li>The&nbsp;<code class=\"w3-codespan\">break</code>&nbsp;and&nbsp;<code class=\"w3-codespan\">default</code>&nbsp;keywords are optional, and will be described later in this chapter</li>\n</ul>\n<p>The example below uses the weekday number to calculate the weekday name:</p>','public class Main {\n  public static void main(String[] args) {\n    int day = 4;\n    switch (day) {\n      case 1:\n        System.out.println(\"Monday\");\n        break;\n      case 2:\n        System.out.println(\"Tuesday\");\n        break;\n      case 3:\n        System.out.println(\"Wednesday\");\n        break;\n      case 4:\n        System.out.println(\"Thursday\");\n        break;\n      case 5:\n        System.out.println(\"Friday\");\n        break;\n      case 6:\n        System.out.println(\"Saturday\");\n        break;\n      case 7:\n        System.out.println(\"Sunday\");\n        break;\n    }\n  }\n}\n',19,'java'),(44,'The default Keyword','<p>The&nbsp;<code class=\"w3-codespan\">default</code>&nbsp;keyword specifies some code to run if there is no case match:</p>','public class Main {\n  public static void main(String[] args) {\n    int day = 4;\n    switch (day) {\n      case 6:\n        System.out.println(\"Today is Saturday\");\n        break;\n      case 7:\n        System.out.println(\"Today is Sunday\");\n        break;\n      default:\n        System.out.println(\"Looking forward to the Weekend\");\n    }    \n  }\n}\n',19,'java'),(45,'Java While Loop','<p>The&nbsp;<code class=\"w3-codespan\">while</code>&nbsp;loop loops through a block of code as long as a specified condition is&nbsp;<code class=\"w3-codespan\">true</code>:</p>\n<p>In the example below, the code in the loop will run, over and over again, as long as a variable (i) is less than 5:</p>','public class Main {\n  public static void main(String[] args) {\n    int i = 0;\n    while (i < 5) {\n      System.out.println(i);\n      i++;\n    }  \n  }\n}\n',20,'java'),(46,'The Do/While Loop','<p>The&nbsp;<code class=\"w3-codespan\">do/while</code>&nbsp;loop is a variant of the&nbsp;<code class=\"w3-codespan\">while</code>&nbsp;loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true.</p>\n<p>The example below uses a&nbsp;<code class=\"w3-codespan\">do/while</code>&nbsp;loop. The loop will always be executed at least once, even if the condition is false, because the code block is executed before the condition is tested:</p>','public class Main {\n  public static void main(String[] args) {\n    int i = 0;\n    do {\n      System.out.println(i);\n      i++;\n    }\n    while (i < 5);  \n  }\n}\n',20,'java'),(47,'Java For Loop','<p>When you know exactly how many times you want to loop through a block of code, use the&nbsp;<code class=\"w3-codespan\">for</code>&nbsp;loop instead of a&nbsp;<code class=\"w3-codespan\">while</code>&nbsp;loop:</p>\n<p><strong>Statement 1</strong>&nbsp;is executed (one time) before the execution of the code block.</p>\n<p><strong>Statement 2</strong>&nbsp;defines the condition for executing the code block.</p>\n<p><strong>Statement 3</strong>&nbsp;is executed (every time) after the code block has been executed.</p>\n<p>The example below will print the numbers 0 to 4:</p>\n<div class=\"w3-example\">&nbsp;</div>','public class Main {\n  public static void main(String[] args) {\n    for (int i = 0; i < 5; i++) {\n      System.out.println(i);\n    }  \n  }\n}\n',21,'java'),(48,'Another Example','<p>This example will only print even values between 0 and 10:</p>','public class Main {\n  public static void main(String[] args) {\n    for (int i = 0; i <= 10; i = i + 2) {\n      System.out.println(i);\n    }\n  }\n}\n',21,'java'),(49,'Nested Loops','<p>It is also possible to place a loop inside another loop. This is called a&nbsp;<strong>nested loop</strong>.</p>\n<p>The \"inner loop\" will be executed one time for each iteration of the \"outer loop\":</p>','public class Main {\n  public static void main(String[] args) {\n    // Outer loop.\n    for (int i = 1; i <= 2; i++) {\n      System.out.println(\"Outer: \" + i); // Executes 2 times\n      \n      // Inner loop\n      for (int j = 1; j <= 3; j++) {\n        System.out.println(\" Inner: \" + j); // Executes 6 times (2 * 3)\n      }\n    } \n  }\n}\n',21,'java'),(50,'For-Each Loop','<p>There is also a \"<strong>for-each</strong>\" loop, which is used exclusively to loop through elements in an&nbsp;<a href=\"https://www.w3schools.com/java/java_arrays.asp\"><strong>array</strong></a>:</p>\n<p>The following example outputs all elements in the&nbsp;<strong>cars</strong>&nbsp;array, using a \"<strong>for-each</strong>\" loop:</p>','public class Main {\n  public static void main(String[] args) {\n    String[] cars = {\"Volvo\", \"BMW\", \"Ford\", \"Mazda\"};\n    for (String i : cars) {\n      System.out.println(i);\n    }    \n  }\n}\n',21,'java'),(51,'Java Break','<p>You have already seen the&nbsp;<code class=\"w3-codespan\">break</code>&nbsp;statement used in an earlier chapter of this tutorial. It was used to \"jump out\" of a&nbsp;<code class=\"w3-codespan\">switch</code>&nbsp;statement.</p>\n<p>The&nbsp;<code class=\"w3-codespan\">break</code>&nbsp;statement can also be used to jump out of a&nbsp;<strong>loop</strong>.</p>\n<p>This example stops the loop when i is equal to 4:</p>','public class Main {\n  public static void main(String[] args) {\n    for (int i = 0; i < 10; i++) {\n      if (i == 4) {\n        break;\n      }\n      System.out.println(i);\n    }  \n  }\n}\n',22,'java'),(52,'Java Continue','<p>The&nbsp;<code class=\"w3-codespan\">continue</code>&nbsp;statement breaks one iteration (in the loop), if a specified condition occurs, and continues with the next iteration in the loop.</p>\n<p>This example skips the value of 4:</p>','public class Main {\n  public static void main(String[] args) {\n    for (int i = 0; i < 10; i++) {\n      if (i == 4) {\n        continue;\n      }\n      System.out.println(i);\n    } \n  }\n}\n',22,'java'),(53,'Break and Continue in While Loop','<p>You can also use&nbsp;<code class=\"w3-codespan\">break</code>&nbsp;and&nbsp;<code class=\"w3-codespan\">continue</code>&nbsp;in while loops:</p>','public class Main {\n  public static void main(String[] args) {\n    int i = 0;\n    while (i < 10) {\n      System.out.println(i);\n      i++;\n      if (i == 4) {\n        break;\n      }\n    }  \n  }\n}\n',22,'java'),(54,NULL,'','public class Main {\n  public static void main(String[] args) {\n    int i = 0;\n    while (i < 10) {\n      if (i == 4) {\n        i++;\n        continue;\n      }\n      System.out.println(i);\n      i++;\n    }  \n  }\n}\n',22,'java');
/*!40000 ALTER TABLE `codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_detail`
--

DROP TABLE IF EXISTS `course_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `id_course` int DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_course_id_Course` (`id_course`),
  CONSTRAINT `FK_course_id_Course` FOREIGN KEY (`id_course`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_detail`
--

LOCK TABLES `course_detail` WRITE;
/*!40000 ALTER TABLE `course_detail` DISABLE KEYS */;
INSERT INTO `course_detail` VALUES (4,50,31,'2024-10-13 21:57:55'),(5,50,16,'2024-10-13 21:57:55'),(7,50,42,'2024-10-13 21:57:55'),(8,1,28,'2024-10-13 21:57:55'),(9,1,42,'2024-10-17 22:18:39');
/*!40000 ALTER TABLE `course_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_teacher` int DEFAULT NULL,
  `id_category` int NOT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(255) DEFAULT NULL,
  `free` tinyint(1) DEFAULT '0',
  `limit_time` float DEFAULT '6',
  PRIMARY KEY (`id`),
  KEY `FK_user_id_Course` (`id_teacher`),
  KEY `FK_category_id_Courses` (`id_category`),
  CONSTRAINT `FK_category_id_Courses` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_user_id_Course` FOREIGN KEY (`id_teacher`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Lập Trình Java Cơ Bản',399000,0,'<b>Học Java cơ bản phù hợp cho người chưa từng học lập trình. Với hơn 100 bài học và có bài tập thực hành sau mỗi bài học.</b> chứng chỉ khóa học do F8 cấp\r\n','images/f3c6aac6-7211-405f-95fa-1877d9183337',1,2,'2024-03-24 22:04:52','lap-trinh-java-co-ban',0,6),(2,'Lập Trình JavaScript Cơ Bản',399000,10,'Học Java cơ bản phù hợp cho người chưa từng học lập trình. Với hơn 100 bài học và có bài tập thực hành sau mỗi bài học.\r\nBạn sẽ học được gì?\r\nHiểu chi tiết về các khái niệm cơ bản trong JS\r\nXây dựng được website đầu tiên kết hợp với JS\r\nTự tin khi phỏng vấn với kiến thức vững chắc\r\nCó nền tảng để học các thư viện và framework Java\r\nNắm chắc các tính năng trong phiên bản Java17 \r\nGhi nhớ các khái niệm nhờ bài tập trắc nghiệm\r\nNâng cao tư duy với các bài kiểm tra với testcases\r\nCác bài thực hành như Tabs, Music Player\r\nNhận chứng chỉ khóa học do F8 cấp\r\n','images/2526fb19-942d-4ee8-bc2b-778c0963c3ea',2,2,'2024-03-24 22:04:40','lap-trinh-javascript-co-ban',1,6),(16,'IT Fundamentals 123',0,0,'\r\nCông nghệ Thông tin là xu hướng phát triển của xã hội, mang đến sự thay đổi tích cực trên toàn diện các lĩnh vực: kinh tế, giáo dục, y tế. Tại Việt Nam, ngành công nghệ thông tin xuất khẩu mang lại khoảng 5 tỷ USD mỗi năm với hơn 430,000 kỹ sư làm việc trong lĩnh vực này. Với sự tăng tốc của cuộc cách mạng công nghệ, nhu cầu nhân sự CNTT đang tăng lên nhanh chóng, tuy nhiên số lượng sinh viên chuyên ngành CNTT có thể đáp ứng nhu cầu của doanh nghiệp chỉ đáp ứng được 30%, dẫn đến sự thiếu hụt trầm trọng về nhân lực.\r\n\r\nCác vị trí như lập trình viên (developer), kiểm thử phần mềm (tester), QA, BA…. luôn được các doanh nghiệp công nghệ săn tìm và tuyển dụng với mức thu nhập vô cùng hấp dẫn. Nếu bạn đang tìm kiếm một nghề nghiệp không giới hạn về cơ hội phát triển, năng động, sáng tạo, linh động về thời gian, địa điểm thì ngành Công nghệ thông tin (IT) chính là sự lựa chọn hàng đầu dành cho bạn. Đặc biệt, sau đại dịch Covid-19, ngành CNTT đang tăng tốc với cấp số nhân, mở ra vô vàn cơ hội cho các bạn muốn theo đuổi IT.\r\n\r\nTuy nhiên, để bắt đầu học và làm việc với ngành IT không phải đơn giản. Nếu bạn chưa có kiến thức căn bản về IT hoặc đang là sinh viên ngành CNTT nhưng mất gốc, thiếu nền tảng lập trình căn bản, bạn sẽ dễ mất định hướng khi có quá nhiều kiến thức mới lạ. Một lộ trình đào tạo bài bản, đi sâu vào kiến thức cốt lõi để định hình về tư duy lập trình, các kiến thức và kĩ năng nển tảng về IT chính là bước đầu vững chắc cho bất cứ ai muốn tiến xa với nghề CNTT.\r\n\r\nĐIỂM NỔI BẬT CỦA KHÓA HỌC\r\nĐào tạo từ đầu cho Non-IT: khóa học được thiết kế phù hợp cho bất kì ai. Khóa học không yêu cầu đầu vào và không giới hạn độ tuổi. Người học có thể là học sinh phổ thông, sinh viên, người đi làm ở lĩnh vực khác.\r\nLộ trình đào tạo rõ ràng, bài bản, đi sâu vào các kiến thức cốt lõi về IT, từ đó học viên dễ dàng tiếp thu các kiến thức nâng cao về sau. (Xem chi tiết chuẩn đầu ra)\r\nHình thức đào tạo linh hoạt phù hợp với người học: kết hợp học offline tại Trung tâm và online tại nhà (Blended Learning[1]).\r\nTăng cường thực hành với hệ thống bài Test/Quiz được cập nhật thường xuyên và gần 40 bài thực hành Lab/Assignment sau mỗi buổi học lý thuyết.\r\nTrainer, Mentor, Admin giàu kinh nghiệm hỗ trợ trong và ngoài giờ học.\r\nCải thiện Kỹ năng mềm: học viên được trau dồi đầy đủ các kĩ năng mềm phục vụ công việc thông qua hoạt động đào tạo: kĩ năng trình bày (Presentation skill), kĩ năng viết mail (Email Writing), kĩ năng tạo CV (CV Writing), Kĩ năng trả lời phỏng vấn (Interview skill), Làm việc nhóm (Teamwork), cách đặt câu hỏi, báo cáo công việc.\r\nCác công nghệ trong chương trình đào tạo:\r\nOperating System: MS Windows 10.\r\nCác ngôn ngữ: HTML/CSS, Ngôn ngữ lập trình (Java), SQL\r\nTools: Visual Studio Code, Eclipse, SQL Management Studio, Azure Data Studio\r\nKHÓA HỌC NÀY DÀNH CHO AI?\r\nKhóa học IT Fundamental phù hợp với những bạn học viên muốn bắt đầu học Công nghệ thông tin để trở thành lập trình viên chuyên nghiệp (C/C++, Java, NET, FrontEnd, Automation Test, Manual Test, BA, QA, …).\r\nNgười đi làm hoặc sinh viên ngành khác (Non-IT) muốn chuyển sang ngành CNTT.\r\nBất kỳ ai không chuyên về CNTT (Non-IT) nhưng làm việc trong môi trường CNTT hoặc cần giao tiếp với chuyên gia, muốn củng cố kiến thức/thuật ngữ/khái niệm để phục phụ cho công việc.\r\nDành cho những người yêu thích, đam mê và muốn tìm hiểu về lập trình.\r\nMỤC TIÊU CỦA CHƯƠNG TRÌNH\r\nSau khi hoàn thành khóa học bạn có thể:\r\n\r\na. Về kiến thức:\r\n\r\nCó những kiến thức cơ bản trong lĩnh vực CNTT, biết các thành phần trong hệ thống máy tính\r\nThành thạo sử dụng máy tính, mạng máy tính, các phần mềm thông dụng trong công việc và đời sống, phục những sự cố thường gặp trên máy tính\r\nCó vốn từ vựng tiếng Anh chuyên ngành thường gặp trong ngành Công nghệ thông tin\r\nNắm được kiến thức về web front-end gồm HTML và CSS\r\nCó kiến thức về ngôn ngữ lập trình và các cú pháp thường sử dụng trong lập trình (sử dụng ngôn ngữ lập trình Java)\r\nBiết các cấu trúc dữ liệu thường: array, stack, queue, linked list\r\nNắm được các thành phần trong cơ sở dữ liệu quan hệ\r\nHiểu biết về cú pháp các câu lệnh DDL, DML\r\nb. Về kỹ năng:\r\n\r\nTạo các thành phần trên trang web như menu, header, product card, footer, …\r\nTạo trang web bằng cách tạo trang HTML và sử dụng CSS để style cho trang web\r\nTạo các trang web như blog cá nhân, web giới thiệu sản phẩm, dịch vụ,…\r\nThực hiện các phân tích logic để đưa ra các bước lập trình\r\nViết chương trình phần mềm để thực hiện thuật toán như: giải phương trình bậc nhất, phương trình bậc 2, tính giai thừa, tìm ước chung lớn nhất của hai số, …\r\nThực hiện thao tác trên array: max, min, count, sum, average, sort, search,…\r\nThực hiện các thuật toán sắp xếp, tìm kiếm\r\nPhân tích vấn đề, phân tích dữ liệu, đưa ra thuật toán\r\nĐịnh hướng và nên tảng kiến thức cơ bản để tiếp tục học chuyên sâu về CNTT, trở thành lập trình viên chuyên nghiệp.\r\nThực hiện tạo database, table, column, …\r\nThực hiện truy vấn bằng các câu lệnh INSERT, UPDATE, DELETE, SELECT\r\nSử dụng các options của câu lệnh SELECT, GROUP BY','images/48790a7d-b116-4474-9dd3-1032c721aea2',49,1,'2024-04-19 15:23:23','it-fundamentals-123',1,6),(25,'Bootstrap AZ - Xây dựng giao diện website chuẩn, nhanh chóng, chuyên nghiệp với Bootstrap',1860000,50,'<h3>Bạn nhận được gì</h3><ul><li>Bạn làm chủ Framework Frontend hàng đầu thế giới giúp xây dựng giao diện chuẩn, nhanh gấp 10 lần so với thông thường</li><li>Tạo&nbsp;bố cục&nbsp;website nhanh chóng vững vàng và tương thích đa thiết bị với hệ thống Grid&nbsp;</li><li>Tùy chỉnh hiển thị các đối tượng text, khối trên giao diện với mạng lưới các class tối ưu</li><li>Nắm được hệ thống tiện ích nâng cao để hiển thị giao diện web đa dạng, phong phú</li><li>Chương trình học bao gồm Lý Thuyết - Thực Hành&nbsp;- Đồ Án - Reviews Góp ý đến hoàn thiện</li><li>Bạn được tham gia nhóm kín hỗ trợ 24/24 qua Facebook Messenger và kết nối học hỏi những người đang tham dự</li><li>Được hỏi bài - Giải đáp thắc mắc bất kỳ lúc nào + Trao đổi trực tiếp với Chuyên gia</li><li>Có hướng dẫn làm đồ án để áp dụng Bootstrap vào thực tế - Kỹ năng quan trọng để đi làm</li></ul><h3>Tại sao bạn cần tham gia chương trình này?</h3><p>Khi tìm đến với khóa học này chắc bạn đã biết giao diện website xây dựng nên với Html, Css, Jquery... tuy nhiên trong quá trình code xây dựng giao diện website chúng ta thường gặp rào cản không biết làm thế nào để xây dựng giao diện cho chuẩn, dễ nhìn và hiển thị đẹp.&nbsp;</p><p>Chính vì điều đó Bootstrap ra đời và nó được xem là một bộ khung chuẩn trên thế giới giúp những người xây dựng giao diện website có thể sử dụng những tính năng hiển thị, xử lý đã được nghiên cứu phù hợp với phần đa dự án. Việc của chúng ta chỉ cần họ nó để xây dựng giao diện website nhanh hơn thông qua việc khai báo đúng cú pháp mà Bootstrap hỗ trợ.&nbsp;</p><p>Đến với chương trình Bootstrap Az bạn không những được học những tính năng hỗ trợ mà còn được tư vấn tư duy, cách sử dụng nó linh hoạt vào dự án để giúp bạn xây dựng website nhanh gấp ít nhất 10 lần và chuyên nghiệp.&nbsp;</p><p>Đây cũng là một chương trình đã được các học viên cũ của Unitop đề xuất thực hiện và nó là một kỹ năng mà gần như 100% các công ty tuyển dụng xây dựng giao diện web yêu cầu khi xin việc. Nếu bạn có nó bạn sẽ gia tăng sự tự tin và được đánh giá cao hơn.&nbsp;</p><p>Nếu bạn là người đang học để xây dựng dự án phục vụ kinh doanh thì đây là chương trình giúp bạn tạo giao diện nhanh đến không ngờ. Bạn có thể tạo ra website, landing page tùy biến cho những ý tưởng dự án của mình.&nbsp;</p><p>Để đảm bảo bạn học và áp dụng tốt trong chương trình có hệ thống bài tập áp dụng và đồ án thực tế để giúp bạn làm chủ kỹ năng của mình. Ngoài ra nhóm hỗ trợ luôn tương tác hàng ngày giúp bạn luôn tập trung vào mục tiêu và gỡ rối những vướng mắc trong suốt quá trình học.&nbsp;</p><p>Mọi thứ nó thực sự rất tuyệt, hãy bắt đầu thôi. Một khoản đầu tư nhỏ có thể giúp bạn gia tăng \"sức mạnh\" rút ngắn thời gian và tự tin khi đi tuyển dụng và xây dựng dự án cho riêng mình.&nbsp;</p><p>Bạn click nút đăng ký để bắt đầu ngay. Hẹn gặp bạn trong chương trình!&nbsp;</p><h3>Chế độ hỗ trợ đặc biệt</h3><ul><li>Những kiến thức trong chương trình đều kết hợp Lý thuyết gốc vững - Bài tập - Đồ án&nbsp;</li><li>Tất cả những câu hỏi đều được hỗ trợ nhanh chóng qua nhóm kín</li><li>Được tư vấn tương tác trực tiếp với anh Phan Văn Cương và đội ngũ hỗ trợ để đạt kiết quả tốt</li><li>Bạn được hướng dẫn - phân tích làm đồ án&nbsp;để áp dụng vào công việc thực tế tại các công ty</li></ul><h3>Điều kiện tham gia chương trình</h3><ul><li>Bạn cần có kiến thức Html, Css, Query nền tảng. Nếu không khi đến Bootstrap bạn sẽ không nắm được bản chất của nó dẫn đến mơ hồ</li><li>Bạn không cần phải biết Bootstrap trước đó, tất cả mọi thứ đều được hướng dẫn từng bước</li><li>Có đam mê, thích tối ưu giao diện và có mục tiêu trở thành người xây dựng giao diện website chuyên nghiệp - chuẩn quốc tế</li></ul>','images/9bc635d6-ee46-4a3c-99c5-f3ec81747898',1,2,'2024-03-24 22:00:51','bootstrap-az---xay-dung-giao-dien-website-chuan-nhanh-chong-chuyen-nghiep-voi-bootstrap',0,3.5),(28,'Lập trình BackEnd JAVA Web chuyên nghiệp CyberSoft',5000000,10,'<h3 class=\"wp-block-heading\"><strong>Bạn Sẽ Học Được G&igrave; Từ kh&oacute;a Lập tr&igrave;nh BackEnd JAVA Web chuy&ecirc;n nghiệp CyberSoft!</strong></h3>\r\n<ul>\r\n<li>Đạt đến cảnh giới về java =]]]</li>\r\n<li>Kết nối với c&aacute;c c&ocirc;ng ty v&agrave; doanh nghiệ nước ngo&agrave;i</li>\r\n<li>Tự m&igrave;nh tạo ra sản qham chất lượng</li>\r\n<li>Đ&aacute;q ứng nhu cầu về java backend tại c&aacute;c c&ocirc;ng ty lớn</li>\r\n<li>X&acirc;y dựng v&agrave; triển khai được c&aacute;c dự &aacute;n thực tế li&ecirc;n quan đến Java Web chuy&ecirc;n s&acirc;u</li>\r\n</ul>\r\n<figure class=\"wp-block-image size-large\"><img class=\"wp-image-7702\" src=\"https://tainguyenmienphi.com/wp-content/uploads/2024/03/image-191-1024x365.png\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"https://tainguyenmienphi.com/wp-content/uploads/2024/03/image-191-1024x365.png 1024w, https://tainguyenmienphi.com/wp-content/uploads/2024/03/image-191-300x107.png 300w, https://tainguyenmienphi.com/wp-content/uploads/2024/03/image-191-768x274.png 768w, https://tainguyenmienphi.com/wp-content/uploads/2024/03/image-191-750x268.png 750w, https://tainguyenmienphi.com/wp-content/uploads/2024/03/image-191-1140x407.png 1140w, https://tainguyenmienphi.com/wp-content/uploads/2024/03/image-191.png 1284w\" alt=\"Lập tr&igrave;nh BackEnd JAVA Web chuy&ecirc;n nghiệp CyberSoft\" width=\"1024\" height=\"365\" data-pin-no-hover=\"true\"></figure>\r\n<p><strong>Ai n&ecirc;n học kho&aacute; BackEnd JAVA n&agrave;y ?</strong></p>\r\n<ul>\r\n<li>Những bạn học sinh sinh vi&ecirc;n BackEnd JAVA</li>\r\n<li>Những người đi l&agrave;m muốn học th&ecirc;m kiến thức</li>\r\n<li>Những Bạn học tr&aacute;i ng&agrave;nh</li>\r\n<li>Những người đam m&ecirc; về c&ocirc;ng nghệ</li>\r\n<li>Bạn muốn tận dụng giờ rảnh học th&ecirc;m nghề, th&ecirc;m skill để kiếm th&ecirc;m thu nhập, việc l&agrave;m freelancer</li>\r\n</ul>','images/a218ce7b-47cd-4159-8216-52c7a85eb4e7',1,1,'2024-03-24 22:00:10','lap-trinh-backend-java-web-chuyen-nghiep-cybersoft',0,6),(31,'Khóa học lập trình Java OOP từ cơ bản đến nâng cao',500000,0,'<h2 class=\"wp-block-heading\"><span style=\"font-size: 24pt; font-family: \'trebuchet ms\', geneva, sans-serif;\">Nội Dung Kh&oacute;a học lập tr&igrave;nh Java OOP</span></h2>\r\n<ol>\r\n<li>Nội dung đầy đủ v&agrave; chi tiết.</li>\r\n<li>H&agrave;ng trăm video l&yacute; thuyết + minh họa + lời giải + thủ thuật hay ho.</li>\r\n<li>H&agrave;ng trăm b&agrave;i tập từ đơn giản đến phức tạp gi&uacute;p bạn n&acirc;ng cao tr&igrave;nh độ tư duy.</li>\r\n<li>Kiến thức cập nhật li&ecirc;n tục.</li>\r\n<li>Sử dụng c&ocirc;ng cụ hiện đại.</li>\r\n<li>Kh&ocirc;ng giới hạn thời gian học trong ng&agrave;y.</li>\r\n<li>Kh&ocirc;ng giới hạn địa điểm học.</li>\r\n<li>Nắm vững nền tảng ng&ocirc;n ngữ Java.</li>\r\n<li>C&oacute; thể tự tin đi ứng tuyển mảng Java Core.</li>\r\n<li>Bạn c&oacute; 3 lần k&iacute;ch hoạt kh&oacute;a học, mỗi lần sử dụng trong 21 tuần.</li>\r\n<li>Thời gian k&iacute;ch hoạt t&ugrave;y &yacute; bạn.</li>\r\n<li>Kh&ocirc;ng phải ra đường h&iacute;t bụi.</li>\r\n<li>Kh&ocirc;ng tốn tiền xăng xe, dầm mưa nắng.</li>\r\n<li>C&aacute;c b&agrave;i tập đa dạng v&agrave; đầy đủ lời giải.</li>\r\n<li>C&aacute;c b&agrave;i kiểm tra trắc nghiệm đầy đủ v&agrave; bao qu&aacute;t.</li>\r\n<li>Dự &aacute;n tốt nghiệp cuối kh&oacute;a si&ecirc;u khoai, đầy thử th&aacute;ch.</li>\r\n<li>Tự tin trong c&aacute;c b&agrave;i kiểm tra ở trường.</li>\r\n<li>Chỉ đ&agrave;o tạo chuẩn lập tr&igrave;nh vi&ecirc;n KH&Ocirc;NG đ&agrave;o tạo thợ code(coder).</li>\r\n<li>Cập nhật những kiến thức kĩ năng thường gặp khi đi l&agrave;m thực tế.</li>\r\n<li>Giới thiệu việc l&agrave;m sau khi ho&agrave;n th&agrave;nh kh&oacute;a học.</li>\r\n</ol>','images/e61c909b-7bd8-4f0e-80fa-548a25580b01',1,1,'2024-04-13 21:46:05','khoa-hoc-lap-trinh-java-oop-tu-co-ban-en-nang-cao',0,12),(42,' 100 ngày viết mã: Bootcamp Python Pro hoàn chỉnh',5000000,5,'<div class=\"component-margin\">\r\n<h2 class=\"ud-heading-xl requirements--title--eo3-L\" data-purpose=\"requirements-title\">Requirements</h2>\r\n<ul class=\"ud-unstyled-list ud-block-list\">\r\n<li>\r\n<div class=\"ud-block-list-item ud-block-list-item-small ud-block-list-item-tight ud-block-list-item-neutral ud-text-sm\">\r\n<div class=\"ud-block-list-item-content\">No programming experience needed - I\'ll teach you everything you need to know</div>\r\n</div>\r\n</li>\r\n<li>\r\n<div class=\"ud-block-list-item ud-block-list-item-small ud-block-list-item-tight ud-block-list-item-neutral ud-text-sm\">\r\n<div class=\"ud-block-list-item-content\">A Mac or PC computer with access to the internet</div>\r\n</div>\r\n</li>\r\n<li>\r\n<div class=\"ud-block-list-item ud-block-list-item-small ud-block-list-item-tight ud-block-list-item-neutral ud-text-sm\">\r\n<div class=\"ud-block-list-item-content\">No paid software required - I\'ll teach you how to use PyCharm, Jupyter Notebooks and Google Colab</div>\r\n</div>\r\n</li>\r\n<li>\r\n<div class=\"ud-block-list-item ud-block-list-item-small ud-block-list-item-tight ud-block-list-item-neutral ud-text-sm\">\r\n<div class=\"ud-block-list-item-content\">I\'ll walk you through, step-by-step how to get all the software installed and set up</div>\r\n</div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"ud-text-sm component-margin styles--description--AfVWV\" data-purpose=\"course-description\">\r\n<h2 class=\"ud-heading-xl styles--description__header--kcQ3V\" data-purpose=\"description-title\">Description</h2>\r\n<div class=\"show-more-module--container--teP7C\">\r\n<div class=\"show-more-module--content--Rw-xr show-more-module--with-gradient--f4HoJ\">\r\n<div tabindex=\"0\">\r\n<div data-purpose=\"safely-set-inner-html:description:description\">\r\n<p>Welcome to the 100 Days of Code - The Complete Python Pro Bootcamp,<strong>&nbsp;the only course you need</strong>&nbsp;to learn to code with Python. With over 500,000&nbsp;<strong>5 STAR reviews</strong>&nbsp;and a 4.8 average, my courses are some of the HIGHEST&nbsp;RATED courses in the history of Udemy!&nbsp;&nbsp;</p>\r\n<p><strong>100 days, 1 hour per day, learn to build 1 project per day, this is how you master Python.</strong></p>\r\n<p>At 60+ hours, this Python course is without a doubt the&nbsp;<strong>most comprehensive&nbsp;</strong>Python course available anywhere online. Even if you have&nbsp;<strong>zero</strong>&nbsp;programming experience, this course will take you from&nbsp;<strong>beginner to professional</strong>. Here\'s why:</p>\r\n<ul>\r\n<li>\r\n<p>The course is taught by the&nbsp;<strong>lead instructor</strong>&nbsp;at the App Brewery, London\'s&nbsp;<strong>best in-person programming Bootcamp</strong>.</p>\r\n</li>\r\n<li>\r\n<p>The course has been updated and you\'ll be learning the latest tools and technologies used at large companies such as Apple, Google and Netflix.</p>\r\n</li>\r\n<li>\r\n<p>This course doesn\'t cut any corners, there are beautiful&nbsp;<strong>animated explanation videos</strong>&nbsp;and tens of&nbsp;<strong>real-world projects</strong>&nbsp;which you will get to build. e.g. Tinder auto swiper, Snake game, Blog Website, LinkedIn Auto Submit Job Application</p>\r\n</li>\r\n<li>\r\n<p>The curriculum was developed over a period of<strong>&nbsp;2 years</strong>, with comprehensive student testing and feedback.</p>\r\n</li>\r\n<li>\r\n<p>We\'ve taught over 600,000 students how to code and many have gone on to&nbsp;<strong>change their lives&nbsp;</strong>by becoming professional developers or starting their own tech startup.</p>\r\n</li>\r\n<li>\r\n<p>You\'ll save yourself&nbsp;<strong>over $12,000&nbsp;</strong>by enrolling, and still get access to the same teaching materials and learn from the same instructor and curriculum as our in-person programming Bootcamp.</p>\r\n</li>\r\n<li>\r\n<p>The course is&nbsp;<strong>constantly updated</strong>&nbsp;with new content, with new projects and modules determined by students - that\'s you!</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>We\'ll take you&nbsp;<strong>step-by-step</strong>&nbsp;through engaging video tutorials and teach you everything you need to know to succeed as a Python developer.</p>\r\n<p>The course includes over&nbsp;<strong>65 hours</strong>&nbsp;of HD video tutorials and builds your programming knowledge while making real-world Python projects.</p>\r\n<p>&nbsp;</p>\r\n<p>Throughout this comprehensive course, we cover a massive amount of tools and technologies, including:</p>\r\n<ul>\r\n<li>\r\n<p>Python 3 - the latest version of Python</p>\r\n</li>\r\n<li>\r\n<p>PyCharm, Jupyter Notebook, Google Colab</p>\r\n</li>\r\n<li>\r\n<p>Python&nbsp;Scripting and Automation</p>\r\n</li>\r\n<li>\r\n<p>Python Game Development</p>\r\n</li>\r\n<li>\r\n<p>Web Scraping</p>\r\n</li>\r\n<li>\r\n<p>Beautiful Soup</p>\r\n</li>\r\n<li>\r\n<p><strong>Selenium</strong>&nbsp;Web Driver</p>\r\n</li>\r\n<li>\r\n<p>Request</p>\r\n</li>\r\n<li>\r\n<p>WTForms</p>\r\n</li>\r\n<li>\r\n<p>Data Science</p>\r\n</li>\r\n<li>\r\n<p>Pandas</p>\r\n</li>\r\n<li>\r\n<p><strong>NumPy</strong></p>\r\n</li>\r\n<li>\r\n<p>Matplotlib</p>\r\n</li>\r\n<li>\r\n<p><strong>Plotly</strong></p>\r\n</li>\r\n<li>\r\n<p>Scikit learn</p>\r\n</li>\r\n<li>\r\n<p>Seaborn</p>\r\n</li>\r\n<li>\r\n<p>Turtle</p>\r\n</li>\r\n<li>\r\n<p>Python GUI Desktop App Development</p>\r\n</li>\r\n<li>\r\n<p><strong>Tkinter</strong></p>\r\n</li>\r\n<li>\r\n<p>Front-End Web Development</p>\r\n</li>\r\n<li>\r\n<p>HTML 5</p>\r\n</li>\r\n<li>\r\n<p>CSS 3</p>\r\n</li>\r\n<li>\r\n<p>Bootstrap 4</p>\r\n</li>\r\n<li>\r\n<p>Bash Command Line</p>\r\n</li>\r\n<li>\r\n<p>Git,&nbsp;<strong>GitHub</strong>&nbsp;and Version Control</p>\r\n</li>\r\n<li>\r\n<p>Backend Web Development</p>\r\n</li>\r\n<li>\r\n<p><strong>Flask</strong></p>\r\n</li>\r\n<li>\r\n<p>REST</p>\r\n</li>\r\n<li>\r\n<p><strong>APIs</strong></p>\r\n</li>\r\n<li>\r\n<p>Databases</p>\r\n</li>\r\n<li>\r\n<p>SQL</p>\r\n</li>\r\n<li>\r\n<p><strong>SQLite</strong></p>\r\n</li>\r\n<li>\r\n<p>PostgreSQL</p>\r\n</li>\r\n<li>\r\n<p>Authentication</p>\r\n</li>\r\n<li>\r\n<p>Web Design</p>\r\n</li>\r\n<li>\r\n<p>Deployment with GitHub Pages, Heroku and GUnicorn</p>\r\n</li>\r\n<li>\r\n<p>and much much more!</p>\r\n</li>\r\n</ul>\r\n<p>By the end of this course, you will be&nbsp;<strong>fluently</strong>&nbsp;programming&nbsp;in Python and you\'ll be so good at Python that you can get a job or use the language professionally.</p>\r\n<p>You\'ll also build a&nbsp;<strong>portfolio</strong>&nbsp;of&nbsp;<strong>100 projects</strong>&nbsp;that you can show off to any potential employer. Including:</p>\r\n<ul>\r\n<li>\r\n<p>Blackjack</p>\r\n</li>\r\n<li>\r\n<p>Snake Game</p>\r\n</li>\r\n<li>\r\n<p>Pong Game</p>\r\n</li>\r\n<li>\r\n<p>Auto Swipe on Tinder</p>\r\n</li>\r\n<li>\r\n<p>Auto Job Applications on LinkedIn</p>\r\n</li>\r\n<li>\r\n<p>Automate Birthday Emails/SMS</p>\r\n</li>\r\n<li>\r\n<p>Fully Fledged Blog Website</p>\r\n</li>\r\n<li>\r\n<p>Build Your Own Public API</p>\r\n</li>\r\n<li>\r\n<p>Data Science with Google Trends</p>\r\n</li>\r\n<li>\r\n<p>Analysing Lego Datasets</p>\r\n</li>\r\n<li>\r\n<p>Google App Store Analysis</p>\r\n</li>\r\n<li>\r\n<p>and much much more!</p>\r\n</li>\r\n</ul>\r\n<p><strong>Sign up today, and look forward to:</strong></p>\r\n<ul>\r\n<li>\r\n<p>Video Lectures</p>\r\n</li>\r\n<li>\r\n<p>Code Challenges and Exercises</p>\r\n</li>\r\n<li>\r\n<p>Fully Fledged Projects</p>\r\n</li>\r\n<li>\r\n<p>Quizzes</p>\r\n</li>\r\n<li>\r\n<p>Programming Resources and Cheatsheets</p>\r\n</li>\r\n<li>\r\n<p>Downloads</p>\r\n</li>\r\n<li>\r\n<p>Our best selling 12 Rules to Learn to Code eBook</p>\r\n</li>\r\n<li>\r\n<p>$12,000+&nbsp;Python Pro Bootcamp&nbsp;course materials and curriculum</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>Don\'t just take my word for it, check out what existing students have to say about my courses:</p>\r\n<p>\"Angela is just incredible, awesome and just fantastic in this course. I\'ve never had such an instructor;&nbsp;<strong>detailed</strong>&nbsp;in every aspect of the course, gives precise explanations, gives you the anxiety to learn etc. She\'s got that ability to make fun while explaining things for better understanding. I really love this course.\" - Ekeu MonkamUlrich</p>\r\n<p>\"Angela is very thorough without ever being boring. I\'ve taken MANY online courses in my life including my Bachelors and Masters degrees. She is by far the best instructor I\'ve ever had. This course is&nbsp;<strong>packed with thousands of dollars worth of great instruction</strong>, and paced well enough for anyone to pick coding up and run with it- Thank you!\" - J Carlucci</p>\r\n<p>\"Love the way Angela explains things. Easy to follow and full of logic. I can say she must spend a lot of energy creating this great course. Thank you and I recommend it to all who\'s interested in coding!\" - Yiqing Zheng</p>\r\n<p>\"So far (on my third day) this course has taught me&nbsp;<strong>more than I was able to learn in multiple other programming courses</strong>. This course is clearly outlined and builds upon itself gradually in an easy to understand way.\" - Normal Ramsey</p>\r\n<p>\"It\'s a different approach to teaching Web Development. I like that you are&nbsp;<strong>given everything possible to succeed</strong>&nbsp;from the onset.\" - Ronick Thomas</p>\r\n<p>The tutor is simply AMAZING, by far the best tutor I have ever had. I would give her 10 stars out of 5. She is not just punching the code and talking to herself, but she is actually explaining things. She keeps on giving really useful hints and she will give you a great load of other references. I always knew what I was doing and why I was doing it. All the extra challenges have just made me remember and understand things better. - Peter Dlugos</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>REMEMBER&hellip; I\'m so confident that you\'ll love this course that&nbsp;we\'re offering a FULL money-back guarantee for&nbsp;30 days! So it\'s a complete no-brainer, sign up today with ZERO&nbsp;risk and EVERYTHING to gain.</strong></p>\r\n<p>So what are you waiting for?&nbsp;Click the buy now button and join the world\'s highest-rated development course.</p>\r\n</div>\r\n<div class=\"styles--audience--a977-\" data-purpose=\"target-audience\">\r\n<h2 class=\"ud-heading-xl styles--audience__title--lQoa5\">Who this course is for:</h2>\r\n<ul class=\"styles--audience__list----YbP\">\r\n<li>If you want to learn to code from scratch through building fun and useful projects, then take this course.</li>\r\n<li>If you want to start your own startup by building your own websites and web apps.</li>\r\n<li>If you are a complete beginner then this course will be everything you need to become a Python professional</li>\r\n<li>If you are a seasoned programmer wanting to switch to Python then this is the quickest way. Learn through coding projects.</li>\r\n<li>If you are an intermediate Python programmer then you know 100 days of code challenges will help you level up.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','images/c31c9e63-a913-47fd-80db-8917475e06da',2,4,'2024-04-11 16:58:24','100-ngay-viet-ma-bootcamp-python-pro-hoan-chinh',0,6);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `id_course` int DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_course_id_Lesson` (`id_course`),
  CONSTRAINT `FK_course_id_Lesson` FOREIGN KEY (`id_course`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (19,'Bài học 1','aac1057e-1e7f-4b40-811f-c14e81cd63eb.mp4',2,'2024-03-22 10:46:23'),(22,'Bài số 2','7ac9496f-0544-4bce-93ce-2ff8927f24ff.mp4',31,'2024-03-24 10:46:23'),(29,'Bài số 3','26fd8e10-4fe6-4102-92e0-4206cbf16ed9.mp4',31,'2024-03-27 23:56:49'),(30,'Cú pháp Java','8d393e85-7dd5-43ff-8b0a-e2a6081ce87d.mp4',31,'2024-04-13 15:06:52'),(31,'Bài số 1','af18a4a6-9657-49fb-b59a-e3f5a59eed2b.mp4',28,'2024-04-17 22:12:44'),(32,'Bài số 2','2ac22b91-e1cc-4c64-9c35-cdeaaa5f2c51.mp4',28,'2024-04-17 22:12:52'),(33,'Bài số 1: HTLM','dfa41cf2-c259-4fbf-b6e0-6244b17a5d21.mp4',42,'2024-04-17 22:17:01'),(34,'Bài số 2: CSS','c0b41d77-1f96-4b96-9537-2c8c4935f6bf.mp4',42,'2024-04-17 22:17:13'),(35,'Bài số 1','c5df17fa-b646-475e-be18-8160e0e97235.mp4',16,'2024-04-19 15:28:13');
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id_order` int NOT NULL,
  `id_course` int NOT NULL,
  `price` int DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_order`,`id_course`),
  KEY `FK_course_id_Order_detail` (`id_course`),
  CONSTRAINT `FK_course_id_Order_detail` FOREIGN KEY (`id_course`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_order_id_Order_detail` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (44,31,108000,'2024-04-11 09:16:55','Khóa học lập trình Java OOP từ cơ bản đến nâng cao'),(45,16,5560000,'2024-04-11 09:23:12','IT Fundamentals'),(46,31,108000,'2024-04-11 10:09:21','Khóa học lập trình Java OOP từ cơ bản đến nâng cao'),(51,25,930000,'2024-04-13 14:58:47','Bootstrap AZ - Xây dựng giao diện website chuẩn, nhanh chóng, chuyên nghiệp với Bootstrap'),(52,28,4500000,'2024-04-13 21:56:56','Lập trình BackEnd JAVA Web chuyên nghiệp CyberSoft'),(53,42,4750000,'2024-04-17 22:17:56',' 100 ngày viết mã: Bootcamp Python Pro hoàn chỉnh');
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '0',
  `total_cost` int DEFAULT NULL,
  `vnp_bank_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_user_id_Order` (`id_user`),
  CONSTRAINT `FK_user_id_Order` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (44,50,'2024-04-11 09:17:39',1,108000,'NCB'),(45,45,'2024-04-11 09:23:41',1,5560000,'NCB'),(46,45,'2024-04-11 10:10:15',1,108000,'NCB'),(51,50,'2024-04-13 14:58:46',0,930000,NULL),(52,1,'2024-04-13 21:57:55',1,4500000,'NCB'),(53,1,'2024-04-17 22:18:39',1,4750000,'NCB');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_category` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_category_id_Posts` (`id_category`),
  CONSTRAINT `FK_category_id_Posts` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (3,'Cú pháp Java','Cú pháp của ngôn ngữ lập trình Java là tập các quy tắc để xác định các viết và diễn giải một chương trình Java.','2024-04-06 11:25:05',1),(5,'Đầu ra/In Java','Đầu ra hoặc in trong ngữ cảnh của một chương trình máy tính thông thường là dữ liệu hoặc thông tin được xuất ra từ chương trình sau khi nó đã thực thi. Điều này có thể bao gồm mọi thứ từ văn bản, số, đồ họa, đến âm thanh hoặc bất kỳ loại dữ liệu nào khác mà chương trình có thể tạo ra hoặc xử lý. Trong Java, việc in ra thông tin thông qua câu lệnh System.out.println() thường được gọi là \"đầu ra\" hoặc \"in\". Điều này có nghĩa là dữ liệu sẽ được ghi ra màn hình console hoặc một luồng dữ liệu xuất khác mà chương trình đang giao tiếp với.','2024-04-06 16:44:38',1),(6,'Bình luận Java','Các chú thích có thể được sử dụng để giải thích mã Java và làm cho nó dễ đọc hơn. Nó cũng có thể được sử dụng để ngăn việc thực thi khi kiểm tra mã thay thế.','2024-04-06 16:54:26',1),(9,' Giới thiệu JavaScript','JavaScript, theo phiên bản hiện hành, là một ngôn ngữ lập trình được phát triển từ các ý niệm nguyên mẫu. Ngôn ngữ này được dùng rộng rãi cho các trang web (phía người dùng) cũng như phía máy chủ (với Nodejs). Nó vốn được phát triển bởi Brendan Eich tại Hãng truyền thông Netscape với cái tên đầu tiên Mocha, rồi sau đó đổi tên thành LiveScript, và cuối cùng thành JavaScript. Giống Java, JavaScript có cú pháp tương tự C, nhưng nó gần với Self hơn Java. .js là phần mở rộng thường được dùng cho tập tin mã nguồn JavaScript.','2024-04-14 23:15:36',2),(10,'CSS Introduction','Trong môn tin học, các tập tin định kiểu theo tầng – dịch từ tiếng Anh là Cascading Style Sheets (CSS) – được dùng để miêu tả cách trình bày các tài liệu viết bằng ngôn ngữ HTML và XHTML.[1] Ngoài ra ngôn ngữ định kiểu theo tầng cũng có thể dùng cho XML, SVG, XUL. Các đặc điểm kỹ thuật của CSS được duy trì bởi World Wide Web Consortium (W3C). Thay vì đặt các thẻ quy định kiểu dáng cho văn bản HTML (hoặc XHTML) ngay trong nội dung của nó, bạn nên sử dụng CSS.','2024-04-14 23:26:48',12),(11,'Biến Java','Trong java, biến là tên của vùng nhớ. Có 3 kiểu biến trong java, bao gồm biến local (biến địa phương), biến instance (biến toàn cục) và biến static.','2024-04-19 15:48:25',1),(12,'Các kiểu dữ liệu Java','Biến trên thực tế là bộ nhớ để lưu một giá trị nào đó. Khi khai báo biến tức là ta đang khai báo với hệ thống dành riêng không gian trong bộ nhớ. Dựa trên kiểu dữ liệu của một biến, hệ điều hành cấp phát bộ nhớ và quyết định cái gì có thể được lưu giữ trong bộ nhớ dành riêng đó.','2024-04-19 16:07:37',1),(13,'Truyền kiểu Java','Type casting is when you assign a value of one primitive data type to another type.','2024-04-19 16:09:52',1),(14,'Toán tử Java','Operators are used to perform operations on variables and values.','2024-04-19 16:12:19',1),(15,'Java Strings','Strings are used for storing text.','2024-04-19 16:15:08',1),(16,'Java Math','The Java Math class has many methods that allows you to perform mathematical tasks on numbers.','2024-04-19 16:18:03',1),(17,'Java Booleans','Java has a boolean data type, which can store true or false values.','2024-04-19 16:22:28',1),(18,'Java If ... Else','You can use these conditions to perform different actions for different decisions.','2024-04-19 16:26:22',1),(19,'Java Switch','Instead of writing many if..else statements, you can use the switch statement.','2024-04-19 16:29:43',1),(20,'Java While Loop','Loops can execute a block of code as long as a specified condition is reached.\n\nLoops are handy because they save time, reduce errors, and they make code more readable.\n\n','2024-04-19 16:32:02',1),(21,'Java For Loop','When you know exactly how many times you want to loop through a block of code, use the for loop instead of a while loop:','2024-04-19 16:34:15',1),(22,'Java Break and Continue','You have already seen the break statement used in an earlier chapter of this tutorial. It was used to \"jump out\" of a switch statement.','2024-04-19 16:37:54',1);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_course`
--

DROP TABLE IF EXISTS `rating_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating_course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `rate_point` float DEFAULT NULL,
  `id_course` int DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_user_id_Rating_course` (`id_user`),
  KEY `FK_course_id_Rating_course` (`id_course`),
  CONSTRAINT `FK_course_id_Rating_course` FOREIGN KEY (`id_course`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_user_id_Rating_course` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_course`
--

LOCK TABLES `rating_course` WRITE;
/*!40000 ALTER TABLE `rating_course` DISABLE KEYS */;
INSERT INTO `rating_course` VALUES (9,36,'Ổn',3,16,'2024-03-13 13:38:12'),(12,2,'Rất tốt',5,16,'2024-03-14 09:25:13'),(15,50,'Ổn',3,28,'2024-03-14 09:25:13'),(16,50,'Ổn',3,42,'2024-03-14 09:25:13'),(17,1,'Ổn\n123\n',3.5,42,'2024-04-19 14:39:22');
/*!40000 ALTER TABLE `rating_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN'),(3,'ROLE_TEACHER'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_role` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_user_id_User` (`id_user`),
  KEY `FK_role_id_Role` (`id_role`),
  CONSTRAINT `FK_role_id_Role` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_user_id_User` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (13,2,2),(14,3,2),(18,2,46),(22,2,44),(23,1,45),(24,3,45),(32,3,36),(33,2,36),(56,1,1),(57,2,1),(58,3,1),(61,2,50),(62,3,49),(69,2,60);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `active` tinyint DEFAULT NULL,
  `otp` varchar(100) DEFAULT NULL,
  `otp_generated_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nguyenvana@gmail.com','$2a$12$hAELW3/OfcHo0giiKf2.q.xZCJiXqgLWYoGg1UmODWaquCGEqksQa','Lê Văn Minh','Hà Giang','images/c1427189-cc04-4bf2-a813-62c7e0e7aa0f',1,NULL,NULL),(2,'nguyenvanc@gmail.com','$2a$12$hAELW3/OfcHo0giiKf2.q.xZCJiXqgLWYoGg1UmODWaquCGEqksQa','Nguyen Van C','Hà Nội',NULL,1,NULL,NULL),(36,'ndchinh@gmail.com','$2a$10$0hpr28z8Hx0vB4AacBQJM.3fv3lfjpjwfTulW4XlqjTkNR.t31AdG','Nguyễn Đức Chính','Hà Nội',NULL,1,NULL,NULL),(44,'vanan@gmail.com','$2a$10$ah.jvKhA22/YZbPTjNXmiOvKyNZCcdqmV89azzfLV6dVIuD1V5qqK','Nguyễn Đình Thuận','Hà Giang',NULL,1,NULL,NULL),(45,'anhnguyen@gmail.com','$2a$10$OpgXL3/8r4OPGLHgiE7IHeDDv/OluU8BVs8fvs/vzUAYeaMnw98jW','Nguyễn Tuấn Anh','Bắc Giang',NULL,1,NULL,NULL),(46,'binhnguyen@gmail.com','$2a$10$S1c8Bd2pXu75KGzuQ.LLP.1c0zew3FZgyFfYqJxOJUMrZVMXSGgbi','Nguyễn Thanh Bình','Hưng Yên',NULL,1,NULL,NULL),(49,'ggg@gmail.com','$2a$10$0hpr28z8Hx0vB4AacBQJM.3fv3lfjpjwfTulW4XlqjTkNR.t31AdG','ggg','ggh','images/ce062cef-367a-4565-8705-642179af6a29',1,NULL,NULL),(50,'dinhvan2205@gmail.com','$2a$10$XyWNZAHkllVLmCAq.hT3eO9bj8QeEsjl2IcNYAm3nxJ7ZHfaQ7Z/a','Nguyễn Văn Sơn','sdhfshdf','images/400edfef-2a73-4575-8263-bee7882e869c',0,NULL,NULL),(60,'khongten315315@gmail.com','$2a$10$BJEiaDI99VRlRF2SBjfrXeQhyTPBrVEHvyI/9RkLacD0Z2ChGfrfi','Nguyễn Đức Tuấn','Hải Phòng',NULL,1,'544439','2024-04-23 09:39:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'khoaluan'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-23 10:23:27
