<%-- 
    Document   : ElementaryGrade
    Created on : Nov 15, 2019, 5:58:15 PM
    Author     : Nitro5
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Categories List</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <style>
            .page    { display: none; padding: 0 0.5em; }
            /*        .page h1 { font-size: 2em; line-height: 1em; margin-top: 1.1em; font-weight: bold; }
            .page p  { font-size: 1.5em; line-height: 1.275em; margin-top: 0.15em; }*/

            #loading {
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                z-index: 100;
                width: 100vw;
                height: 100vh;
                background-color: #92b9a2;
                background-image: url(images/onload.gif);
                background-repeat: no-repeat;
                background-position: center;
            }

        </style>
        <script>
            function onReady(callback) {
                var intervalId = window.setInterval(function () {
                    if (document.getElementsByTagName('body')[0] !== undefined) {
                        window.clearInterval(intervalId);
                        callback.call(this);
                    }
                }, 650);
            }

            function setVisible(selector, visible) {
                document.querySelector(selector).style.display = visible ? 'block' : 'none';
            }

            onReady(function () {
                setVisible('.container', true);
                setVisible('#loading', false);
            });
        </script>
    </head>
    <body>

        <div class="container">
            <h2>Elementary Grade</h2>
            <p>For Grade : 1 - 3 They can be done online or printed out for home or classroom use!</p>
            ${admin.name}
            <table class="table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Grade</th>
                        <th>Icon</th>
                        <th>Icon</th>
                    </tr>
                </thead>
                <tbody>   
                    <c:forEach items="${cate}" var="c">
                        <tr>
                            <td>${c.catName}</td>
                            <td>${c.grade}</td>   
                            <td><a href="Question?catid=${c.catId}">DoExam</a></td>
                        </tr>
                    </c:forEach>


                </tbody>
            </table>
        </div>

    </body>
</html>
<div id="loading"></div>

