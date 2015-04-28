<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Basic Struts 2 Application - Welcome</title>
</head>
<body>
	<h1>Welcome To Struts 2!</h1>
	<p>
		<a href="<s:url action='hello'/>">Hello World</a>
	</p>

	<s:url action="hello" var="helloLink">
		<s:param name="userName">Bruce Phillips</s:param>
	</s:url>

	<p>
		<a href="${helloLink}">Hello Bruce Phillips</a>
	</p>

	<p>Get your own personal hello by filling out and submitting this
		form.</p>

	<s:form action="hello" namespace="/">

		<s:textfield name="userName" label="Your name" />

		<s:submit value="Submit" />

	</s:form>
	<s:url action="registerInput" var="registerInputLinkEn">
		<s:param name="request_locale">en</s:param>
	</s:url>
	<s:url action="registerInput" var="registerInputLinkZh">
		<s:param name="request_locale">zh</s:param>
	</s:url>
	<p>
		<a href="${registerInputLinkEn}">Please register En</a> for our prize
		drawing.
	</p>
	<p>
		<a href="${registerInputLinkZh}">Please register Zh</a> for our prize
		drawing.
	</p>
	<hr />
	<s:text name="contact" />
	<a href="<s:url action="index" namespace="config-browser" />">Launch
		the configuration browser</a>

	<p>
		<a href='<s:url action="edit" />'>Edit your information</a>
	</p>
</body>
</html>