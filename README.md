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
5. Now create some packages ,in my case I have created 3 packages **com.training.controller , com.training.dao , com.training.model**.
6. The Dao package is used for data accces object
