<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<!-- <link href="/css/Sample.css" rel="stylesheet" >  -->
<c:url value="/css/styles.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" > 
<style>
/* <c:url value="/ssm.jpg" var="jst" /> */

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${errorKey}

<!-- Page Header-->
        <header class="masthead" style="background-image: url('/images/${singleBlogkey.blogImage}');">
            <div class="container position-relative px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="post-heading">
                            <h1>${singleBlogkey.blogTitle}</h1>
                            <span class="meta">
                                Posted by
                                <a href="#!">${singleBlogkey.blogAuthor}</a>
                                on ${singleBlogkey.blogDate}
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    
    
<!-- Post Content-->
        <article class="mb-4">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <p>${singleBlogkey.blogContent}</p>
                    </div>
                </div>
            </div>
        </article>
	

<a href="home"><button>Back</button></a>
</body>
</html>