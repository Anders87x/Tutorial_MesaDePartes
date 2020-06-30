<?php
  require_once("../../config/conexion.php"); 
  if(isset($_SESSION["usu_id"])){ 
?>
<!doctype html>
<html lang="en" class="no-focus">
    <head>
        <?php require_once("../MainHead/MainHead.php");?> 

        <title>Consultar Status | Mesa de Partes</title>

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
                        <div class="block-header block-header-default">
                            <h3 class="block-title">Listado de Registros <small>Mesa de Partes</small></h3>
                        </div>
                        <div class="block-content block-content-full">
                            <table id="partes_data" class="table table-bordered table-striped table-vcenter js-dataTable-full">
                                <thead>
                                    <tr>
                                        <th style="width: 10%;">Ticket</th>
                                        <th style="width: 15%;">Fecha</th>
                                        <th class="d-none d-sm-table-cell" style="width: 20%;">Asunto</th>
                                        <th class="d-none d-sm-table-cell" style="width: 65%;">Descripción</th>
                                        <th class="text-center" style="width: 15%;"></th>
                                    </tr>
                                </thead>
                                <tbody>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>
            <!-- Contenido -->

            <div id="modaldetalle" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Detalle de Documentos</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <table id="detalle_data" class="table" width="100%">
                                <thead>
                                    <tr>
                                        <th>Observación</th>
                                        <th>Archivo</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  
                                </tbody>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>

        <?php require_once("../MainFooter/MainFooter.php");?> 

        </div>

        <?php require_once("../MainJs/MainJs.php");?> 
        <script type="text/javascript" src="consultarstatus.js"></script>

    </body>
</html>
<?php
  } else {
    header("Location:".Conectar::ruta()."index.php");
  }
?>