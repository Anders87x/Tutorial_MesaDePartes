<header id="page-header">
    <div class="content-header">
        <div class="content-header-section">
            <button type="button" class="btn btn-circle btn-dual-secondary" data-toggle="layout" data-action="sidebar_toggle">
                <i class="fa fa-navicon"></i>
            </button>
        </div>

        <div class="content-header-section">
            <input type="hidden" id="useridx" class="form-control" value=<?php echo $_SESSION["usu_id"]?>><!-- ID del Usuario useridx-->
            <input type="hidden" id="usernomx" class="form-control" value=<?php echo $_SESSION["usu_nom"]?>><!-- NOM del Usuario useridx-->
            <input type="hidden" id="userapex" class="form-control" value=<?php echo $_SESSION["usu_ape"]?>><!-- APE del Usuario useridx-->
            <div class="btn-group" role="group">
                <button type="button" class="btn btn-rounded btn-dual-secondary" id="page-header-user-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <?php echo $_SESSION["usu_nom"] ." ". $_SESSION["usu_ape"]?><i class="fa fa-angle-down ml-5"></i>
                </button>
                <div class="dropdown-menu dropdown-menu-right min-width-150" aria-labelledby="page-header-user-dropdown">
                    <a class="dropdown-item" href="be_pages_generic_profile.html">
                        <i class="si si-user mr-5"></i> Perfil
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="../Logout/logout.php">
                        <i class="si si-logout mr-5"></i> Cerrar Sesion
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div id="page-header-loader" class="overlay-header bg-primary">
        <div class="content-header content-header-fullrow text-center">
            <div class="content-header-item">
                <i class="fa fa-sun-o fa-spin text-white"></i>
            </div>
        </div>
    </div>
</header>