<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <title>Principal Tan Fresco </title>
    </head>
    <body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Sistema de ventas Tan Fresco</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link">Nosotros<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Productos&accion=Listar" target="miContenedor">Productos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Empleados&accion=Listar" target="miContenedor">Empleados</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Clientes" target="miContenedor">Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?menu=Ventas&accion=default" target="miContenedor">Ventas</a>
                    </li>
                </ul>
                <div class="btn-group">
                    <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        ${usuario.getNombre()}
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#"><i class="fas fa-user"></i></a>
                        <a class="dropdown-item" href="#">${usuario.getDocumento()}</a>
                        <a class="dropdown-item" href="#">${usuario.getCorreo()}</a>
                        <div class="dropdown-divider"></div>
                        <form class="dropdown-item" method="POST" action="Validar">
                            <button class="btn btn-danger center-block" type="submit" name="accion" value="Salir">Cerrar Sesion</button>
                        </form>
                    </div>
                </div>
            </div>
    </nav>

    <div class="container">
        <style> 
            body {
                margin-top: 10px;
                margin-bottom: 100px;
                margin-right: 150px;
                margin-left: 80px;
            }
            container{
                justify-content: center;
            }
            img{                
                  width: 400px;
                  height: 300px;               
            }
            section{                
                background-image: url("background-verduras-100.jpg");
                padding-bottom: 80px;
                padding-top: 80px;
                padding-left: 100px;
                padding-right: 100px;
                
            }            
            p{                
                font-family: Arial, Helvetica, sans-serif;
                text-align: center; 
                font-size: large;
                color: white;
            }           
            h1{                
                font-family: Verdana;
                font-family: 'PT Sans';
                text-align: center;
                color: white;
            }
            .tienda{
                
                background-image: url("background-frutas-100.jpg");
                
            }
                       
        </style>
        
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
                <center><img src="almendra.png" alt="almendra"></center>
            </div>
            <div class="carousel-item">
                <center><img src="mandarina.png" alt="mandarina"></center>
            </div>
            <div class="carousel-item">
                <center><img src="tomates.png" alt="tomates"></center>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
    </div>
        <div class="row">
            <div class="col-md-3">
                <form action="Controlador?menu=Productos" method="POST">
                    <div class="form-group">
                        <label>Nombre de producto</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="txtNombreProducto" value="${producto.getNombreProducto()}">
                    </div>
                    <div class="form-group">
                        <label>Descripcion producto</label>
                        <input type="text" class="form-control" name="txtDescripcion" value="${producto.getDescripcion()}">
                    </div>
                    <div class="form-group">
                        <label>Unidad</label>
                        <input type="text" class="form-control" name="txtUnidad" value="${producto.getUnidad()}">
                    </div>
                    <div class="form-group">
                        <label>Precio</label>
                        <input type="text" class="form-control" name="txtPrecio" value="${producto.getPrecio()}">
                    </div>


                    <button type="submit" class="btn btn-primary" name="accion" value="Agregar">Guardar</button>
                </form>
            </div>
            <div class="col-md-8">
                <table class="table table-striped">
                    <thead>
                           <tr>
                            <th scope="col">Codigo</th>
                            <th scope="col">Nombre producto</th>
                            <th scope="col">Descripcion</th>
                            <th scope="col">Unidad</th>
                            <th scope="col">Precio</th>
                            <th scope="col">Acciones</th>
                             </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="producto" items="${productos}">
                        <tr>
                            <th scope="row">${producto.getCodigo()}</th>
                            <td>${producto.getNombreProducto()}</td>
                            <td>${producto.getDescripcion()}</td>
                            <td>${producto.getUnidad()}</td>
                            <td>${producto.getPrecio()}</td>
                            <td>
                                <a class="btn btn-warning" href="Controlador?menu=Productos&accion=Cargar&id=${producto.getCodigo()}">Actualizar</a>
                                <a class="btn btn-danger"><i class="fas fa-trash-alt"></i><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-archive-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M12.643 15C13.979 15 15 13.845 15 12.5V5H1v7.5C1 13.845 2.021 15 3.357 15h9.286zM5.5 7a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zM.8 1a.8.8 0 0 0-.8.8V3a.8.8 0 0 0 .8.8h14.4A.8.8 0 0 0 16 3V1.8a.8.8 0 0 0-.8-.8H.8z"/>
</svg></a>
                            </td>
                           </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

        </div>
                 
                    
<footer class="text-center bg-body-tertiary">
  <!-- Grid container -->
            <div class="container pt-4">
              <!-- Section: Social media -->
              <section class="mb-4">
                <!-- Facebook -->
                <a
                  data-mdb-ripple-init
                  class="btn btn-link btn-floating btn-lg text-body m-1"
                  href="#!"
                  role="button"
                  data-mdb-ripple-color="dark"
                  ><i class="fab fa-facebook-f"></i>
                </a>

              <!-- Twitter -->
              <a
                data-mdb-ripple-init
                class="btn btn-link btn-floating btn-lg text-body m-1"
                href="#!"
                role="button"
                data-mdb-ripple-color="dark"
                ><i class="fab fa-twitter"></i>
              </a>

              <!-- Google -->
              <a
                data-mdb-ripple-init
                class="btn btn-link btn-floating btn-lg text-body m-1"
                href="#!"
                role="button"
                data-mdb-ripple-color="dark"
                ><i class="fab fa-google"></i>
              </a>

              <!-- Instagram -->
              <a
                data-mdb-ripple-init
                class="btn btn-link btn-floating btn-lg text-body m-1"
                href="#!"
                role="button"
                data-mdb-ripple-color="dark"
                ><i class="fab fa-instagram"></i>
              </a>

              <!-- Linkedin -->
              <a
                data-mdb-ripple-init
                class="btn btn-link btn-floating btn-lg text-body m-1"
                href="#!"
                role="button"
                data-mdb-ripple-color="dark"
                ><i class="fab fa-linkedin"></i>
              </a>
              <!-- Github -->
              <a
                data-mdb-ripple-init
                class="btn btn-link btn-floating btn-lg text-body m-1"
                href="#!"
                role="button"
                data-mdb-ripple-color="dark"
                ><i class="fab fa-github"></i>
              </a>
            </section>
            <!-- Section: Social media -->
          </div>
          <!-- Grid container -->

          <!-- Copyright -->
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.05);">
              © 2020 Copyright:
              <a class="text-body" href="https://mdbootstrap.com/">MDBootstrap.com</a>
            </div>
  <!-- Copyright -->
</footer> 
                    
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
                          
</body>
        

 
</html>