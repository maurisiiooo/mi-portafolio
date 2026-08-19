<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Portafolio Web</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome Íconos -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body class="bg-light">

    <!-- Navegación -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand fw-bold" href="#"><i class="fa-solid fa-code me-2"></i>MiPortafolio</a>
            <div class="navbar-nav ms-auto">
                <a class="nav-link" href="#proyectos">Proyectos</a>
                <a class="nav-link" href="#habilidades">Habilidades</a>
                <a class="nav-link" href="#contacto">Contacto</a>
            </div>
        </div>
    </nav>

    <!-- Hero / Encabezado Azul -->
    <header class="bg-primary text-white text-center py-5">
        <div class="container py-4">
            <h1 class="display-4 fw-bold">Desarrollador Web N-Capas</h1>
            <p class="lead mb-4">Especializado en arquitectura de software, maquetación HTML5, Bootstrap 5 y persistencia con MySQL.</p>
            <a href="#contacto" class="btn btn-light btn-lg px-4 fs-6 fw-semibold">Contáctame</a>
        </div>
    </header>

    <main class="container my-5">
        
        <!-- Sección Proyectos Destacados -->
        <section id="proyectos" class="mb-5 text-center">
            <h2 class="fw-bold mb-4">Proyectos Destacados</h2>
            <div class="row g-4 justify-content-center">
                <%
                    String url = "jdbc:mysql://localhost:3306/portafolio_db?useSSL=false&serverTimezone=UTC";
                    String user = "root";
                    String pass = "Admin123";
                    boolean conexionExitosa = false;

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        try (Connection conn = DriverManager.getConnection(url, user, pass);
                             Statement stmt = conn.createStatement();
                             ResultSet rs = stmt.executeQuery("SELECT * FROM proyectos")) {

                            while (rs.next()) {
                                conexionExitosa = true;
                %>
                                <div class="col-md-4">
                                    <div class="card h-100 shadow-sm border-0">
                                        <div class="card-body text-start">
                                            <h5 class="card-title fw-bold"><i class="fa-solid fa-folder-open me-2 text-primary"></i><%= rs.getString("titulo") %></h5>
                                            <p class="card-text text-muted"><%= rs.getString("descripcion") %></p>
                                        </div>
                                    </div>
                                </div>
                <%
                            }
                        }
                    } catch (Exception e) {
                        conexionExitosa = false;
                    }

                    // Si no hay datos en MySQL, muestra proyectos estáticos de respaldo
                    if (!conexionExitosa) {
                %>
                        <div class="col-md-4">
                            <div class="card h-100 shadow-sm border-0">
                                <div class="card-body text-start">
                                    <h5 class="card-title fw-bold"><i class="fa-solid fa-layer-group me-2 text-primary"></i>Sistema Web N-Capas</h5>
                                    <p class="card-text text-muted">Aplicación JSP estructurada en capas DAO, Modelo y Servlets con arquitectura limpia.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card h-100 shadow-sm border-0">
                                <div class="card-body text-start">
                                    <h5 class="card-title fw-bold"><i class="fa-solid fa-database me-2 text-primary"></i>Gestión JDBC MySQL</h5>
                                    <p class="card-text text-muted">Módulo de integración para persistencia de datos relacional y consultas SQL preparadas.</p>
                                </div>
                            </div>
                        </div>
                <%
                    }
                %>
            </div>
        </section>

        <!-- Sección Habilidades Técnicas (Con Gráficos/Barras) -->
        <section id="habilidades" class="mb-5 text-center">
            <h2 class="fw-bold mb-4">Habilidades Técnicas</h2>
            <div class="row g-4 justify-content-center text-start">
                
                <div class="col-md-6">
                    <div class="p-3 bg-white shadow-sm rounded">
                        <div class="d-flex justify-content-between mb-1">
                            <span class="fw-semibold"><i class="fa-brands fa-java text-danger me-2"></i>Java / JSP</span>
                            <span class="text-muted fw-bold">85%</span>
                        </div>
                        <div class="progress" style="height: 12px;">
                            <div class="progress-bar bg-primary" role="progressbar" style="width: 85%;"></div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="p-3 bg-white shadow-sm rounded">
                        <div class="d-flex justify-content-between mb-1">
                            <span class="fw-semibold"><i class="fa-solid fa-database text-warning me-2"></i>MySQL / JDBC</span>
                            <span class="text-muted fw-bold">80%</span>
                        </div>
                        <div class="progress" style="height: 12px;">
                            <div class="progress-bar bg-primary" role="progressbar" style="width: 80%;"></div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="p-3 bg-white shadow-sm rounded">
                        <div class="d-flex justify-content-between mb-1">
                            <span class="fw-semibold"><i class="fa-brands fa-bootstrap text-purple me-2" style="color: #6f42c1;"></i>Bootstrap 5 & HTML5</span>
                            <span class="text-muted fw-bold">90%</span>
                        </div>
                        <div class="progress" style="height: 12px;">
                            <div class="progress-bar bg-primary" role="progressbar" style="width: 90%;"></div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="p-3 bg-white shadow-sm rounded">
                        <div class="d-flex justify-content-between mb-1">
                            <span class="fw-semibold"><i class="fa-solid fa-server text-success me-2"></i>Apache Tomcat</span>
                            <span class="text-muted fw-bold">75%</span>
                        </div>
                        <div class="progress" style="height: 12px;">
                            <div class="progress-bar bg-primary" role="progressbar" style="width: 75%;"></div>
                        </div>
                    </div>
                </div>

            </div>
        </section>

        <!-- Sección Formulario de Contacto -->
        <section id="contacto" class="row justify-content-center pt-3">
            <div class="col-md-6 col-lg-5">
                <div class="card shadow-sm border-0 p-4">
                    <h3 class="fw-bold text-center mb-4">Enviar Mensaje</h3>
                    <form action="index.jsp" method="POST">
                        <div class="mb-3 text-start">
                            <label for="nombre" class="form-label small text-muted fw-semibold">Nombre Completo</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ej: Juan Pérez" required>
                        </div>
                        <div class="mb-3 text-start">
                            <label for="email" class="form-label small text-muted fw-semibold">Correo Electrónico</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="correo@ejemplo.com" required>
                        </div>
                        <div class="mb-3 text-start">
                            <label for="mensaje" class="form-label small text-muted fw-semibold">Mensaje</label>
                            <textarea class="form-control" id="mensaje" name="mensaje" rows="4" placeholder="Escribe tu mensaje aquí..." required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary w-100 fw-semibold">Enviar Mensaje</button>
                    </form>
                </div>
            </div>
        </section>

    </main>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3 mt-5">
        <p class="mb-0 small">&copy; 2026 Portafolio Web - Modelo N Capas. Todos los derechos reservados.</p>
    </footer>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>