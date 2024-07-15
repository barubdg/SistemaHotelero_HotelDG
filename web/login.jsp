<%@ taglib uri="http://xmlns.jcp.org/jsf/html" prefix="h" %>
<%@ taglib uri="http://xmlns.jcp.org/jsf/core" prefix="f" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:h="http://xmlns.jcp.org/jsf/html">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/style_login.css" />
        <title>Sistema Hotelero DG</title>
    </head>
    <body>
        <h:form>
            <div class="container">
                <div class="forms-container">
                    <div class="signin-signup">
                        <h:form class="sign-in-form">
                            <h2 class="title">Iniciar Sesión</h2>
                            <div class="input-field">
                                <i class="fas fa-user"></i>
                                <h:inputText value="#{loginBean.email}" placeholder="Email" />
                            </div>
                            <div class="input-field">
                                <i class="fas fa-lock"></i>
                                <h:inputSecret value="#{loginBean.password}" placeholder="Password" />
                            </div>
                            <h:commandButton value="Acceder" action="#{loginBean.login}" styleClass="btn solid" />
                            <p class="social-text">Visita nuestras plataformas</p>
                            <div class="social-media">
                                <a href="#" class="social-icon">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a href="#" class="social-icon">
                                    <i class="fab fa-twitter"></i>
                                </a>
                                <a href="#" class="social-icon">
                                    <i class="fab fa-google"></i>
                                </a>
                                <a href="#" class="social-icon">
                                    <i class="fab fa-linkedin-in"></i>
                                </a>
                            </div>
                        </h:form>
                    </div>
                </div>
                <div class="panels-container">
                    <div class="panel left-panel">
                    </div>
                    <div class="panel right-panel">
                        <div class="content">
                            <h3>Hotel DG</h3>
                            <p>
                                Bienvenido, administrador. Si tienes una cuenta puedes iniciar sesión.
                            </p>
                            <button class="btn transparent" id="sign-in-btn">
                                Iniciar Sesión
                            </button>
                        </div>
                        <img src="image/register.svg" class="image" alt="" />
                    </div>
                </div>
            </div>
        </h:form>
        <script src="js/js_login.js"></script>
    </body>
</html>
