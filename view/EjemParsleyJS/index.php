<?php
  require_once("../../config/conexion.php"); 
  if(isset($_SESSION["usu_id"])){ 
?>
<!doctype html>
<html lang="es" class="no-focus">
    <head>
        <?php require_once("../MainHead/MainHead.php");?> 

        <title>CRUD | Mesa de Partes</title>

    </head>
    <body>
        <div id="page-container" class="sidebar-o side-scroll page-header-modern main-content-boxed  sidebar-inverse">
            <aside id="side-overlay">
                <div id="side-overlay-scroll">
                    <div class="content-header content-header-fullrow">
                        <div class="content-header-section align-parent">
                            <button type="button" class="btn btn-circle btn-dual-secondary align-v-r" data-toggle="layout" data-action="side_overlay_close">
                                <i class="fa fa-times text-danger"></i>
                            </button>

                            <div class="content-header-item">
                                <a class="img-link mr-5" href="be_pages_generic_profile.html">
                                    <img class="img-avatar img-avatar32" src="../../public/assets/img/avatars/avatar15.jpg" alt="">
                                </a>
                                <a class="align-middle link-effect text-primary-dark font-w600" href="be_pages_generic_profile.html">John Smith</a>
                            </div>
                        </div>
                    </div>
                </div>

            </aside>

            <nav id="sidebar">
                <div id="sidebar-scroll">
                    <div class="sidebar-content">
                        <?php require_once("../MainSidebar/MainSidebar.php");?> 
                        
                        <?php require_once("../MainMenu/MainMenu.php");?> 
                    </div>

                </div>
            </nav>

            <?php require_once("../MainHeader/MainHeader.php");?> 

            <!--Contenido -->
            <main id="main-container">
                <div class="content">
                    <div class="block">
                        <div class="block-content block-content-full">

                            <form method="post" id="menu_form">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="titulo_crud">CRUD</h5>
                                    </div>
                                    <div class="modal-body">
   
                                        <div class="form-group row">
                                            <label class="col-12" for="men_ruta">Ingresa Numeros</label>
                                            <div class="col-md-12">
                                                <input type="text" class="form-control" id="men_ruta" name="men_ruta" data-parsley-type="number" data-parsley-error-message="Error Ingresa Numero por favor"  placeholder="Ingrese Numeros" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-12" for="men_icon">Ingresa Texto</label>
                                            <div class="col-md-12">
                                                <input type="text" class="form-control" id="men_icon" name="men_icon" data-parsley-type="alphanum" data-parsley-error-message="Error Ingresa Texto por favor no caracteres especiales"  placeholder="Ingrese Letras" required>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" name="action" id="#" value="add" class="btn btn-primary">Guardar</button>
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </main>

            <?php require_once("../MainFooter/MainFooter.php");?> 

        </div>

        <?php require_once("../MainJs/MainJs.php");?> 
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <script src="../../public/assets/js/plugins/select2/select2.full.min.js"></script>
        <script src="../../public/assets/js/plugins/parsley/parsley.js"></script>
        <script type="text/javascript" src="EjemParsleyJS.js"></script>

    </body>
</html>
<?php
  } else {
    header("Location:".Conectar::ruta()."index.php");
  }
?>