# AMDOCS-Project

## Introduction to Project

1. This Project is basically designed for a corporate world where students can register themselves for Courses and also view some of the course details.
2. The second functionality is from admin point where he can view student Details and also add a new course in the datbase by filling up form which has course name, course description and course fees as the Input Parameters.
3. Also a feedback form is designed through which student feedback are gathered and application is always to any positive or negative feedbacks.
4. Student registration is also a key feature where student can enroll themselves with the application.

## Programming Language/Technologies Used

1. JSP- 

      A JSP (Java Server Pages) page consists of HTML tags and JSP tags. The JSP pages are easier to maintain than Servlet because we can separate designing and development. It provides some additional features such as Expression Language, Custom Tags, etc.

2. Servlet- 

      Servlets are Java classes which service HTTP requests and implement the javax.servlet.Servlet interface. These are the one that handle Web clients requests and respond them accordingl. 

3. Java-

      Java is an object-oriented programming language used in distributed environments on the internet. It is a high-level language

4. Oracle SQL Developer-

      Oracle SQL Developer is a free, integrated development environment that simplifies the development and management of Oracle Database.(Oracle Doesnt support all the feature provided by MYSQL like auto-increment keyword)

5. Eclipse IDE-

      Eclipse is an integrated development environment (IDE) used in computer programming

6. HTML-

      Hyper Text MArkup Language is used to Design the look of an application. It helps one to Build up tags in such a way that they Form up a web page together.

## Why Work With JSP 

JSP is a technology which is used to create dynamic web applications. Also it allows one to write Java code embedded within it. This flexibilty of JSP gives a bulk lot of advantage over other languages like html,javascript .

## Steps To Configure/Setup project:

1. Open the **Eclipse IDE** and create a new **Web Dynamic project**.
2. If the feature is not available in the drop down menu then, Go To **Help** -> **Install New Software** -> In the work with paste teh following link Oxygen - http://download.eclipse.org/releases/oxygen -> In The Type Filter text search for **WEB XML** -> **Finish**.
3. Once the Web Dynamic Project feature is added Build a new project and create a new project with **pom.xml**.
4. Also while creating new project add new Runtime and **Apache tomcat 9.0 or the available server** with you.
5. Add the JAR files and paste them in **Web Content/WEB-INF** folder or add them from build path.
6. Now create some packages ,in my case I have created 3 packages **com.training.controller , com.training.dao , com.training.model**.
7. The Dao package is used for data accces object in this package we write pattern usage.
8. In the Controller package we design the servlet files so as to map our url.
9. In the model package we declare the attributes its datatypes and their respective getters and setters. In our case we require two model files one for the student details and other for the course details.
10. Next we design our JSP Pages where we not only define the structure of our page but in some cases we can also embed the JDBC code inside it to establisg connection with database.
11. Now we write the sql code in oracle developer so as to store the value or check the value as provided by the user.
12. To establish a simple JDBC code we can write a very simple code as follows :

` Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");`
  
13. Design your database create table for storing Admin Login,Student Login,Course Details etc.
14. Also you can add some input validations to you registration forms so as to keep your system Robust and consistent.

## HOW THIS CODE WORKS
<img src="https://user-images.githubusercontent.com/53641559/127895085-89b5b77a-7b5a-4e36-aa2b-b628addd5afc.png" width="600" height="400" />
