# RDMS PostgreSQL JDBC #

## JSP Sayfalarına giriş İlk Uygulama oluşturma. ##

JSP, Html sayfaları içerisinde JAVA kodları çalıştırdığımız sayfalardır. Sadece Htlm kullanılacak diye bir şart yok. Bu örneğimizde biraz Bootstrap kodlarından da yardım alıcaz.
Öncelikle sayfanın en üstüne karakter sorunu yaşamamak için

	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
kodu yazmamız gerekli.Java kütüphaneleri için de

	<%@ page import="java.util.*"%>
	<%@ page import="java.sql.*"%>

başlangıç örneği için yeterli olacaktır. Sayfada gerekli olan Frameworkları maven yardımı ile projemize dahil etmemiz lazım. Bunun için pom.xml içerisinde 
	
	<!--Servlet Kütüphanesi için -->
	<dependency>
	    <groupId>javax.servlet</groupId>
	    <artifactId>javax.servlet-api</artifactId>
	    <version>3.1.0</version>
	    <scope>provided</scope>
	</dependency>

Bağımlılıklar (dependencies) alanı içerisine eklemeliyiz. Daha sonra projemizde PostgreSQL veritanını kullancağımız için;

	<!--PostgreSQL Kütüphanesi için -->
	<dependency>
	    <groupId>org.postgresql</groupId>
	    <artifactId>postgresql</artifactId>
	    <version>42.3.1</version>
	</dependency>
	
JDBC Driver' ı da eklenir. Başlangıç İşlemlerimizi tamamladığımıza göre Başlayalım. Sonrası sadece java ve html bilgisimize kalmış.
java kodlarını her zaman 

	<% out.println("Hello World..."); %>
	
şeklinde yazıyoruz.Doğrudan ekrana yazdırmak istersek
	<%=statement.getString(""mov); %>


# Lisance #
[MIT](https://choosealicense.com/licenses/mit/)
