<?php
include('inc/Db.php');
// suppression
if (isset($_POST['save']))
{
  $conn = new Db();
  $sql  = "INSERT INTO `absence`(`Id_absence`,`date_Debut`,`date_fin`,`Justification`,`Cin_stg`) VALUES({$_POST['Id_absence']},'{$_POST['date_Debut']}','{$_POST['date_fin']}','{$_POST['Justification']}','{$_POST['Cin_stg']}')";
  $conn->query($sql);
   header( 'Location: ../geststagiaire/list-absence.php');
                    break;
  
}
///////////////////////////////////

?>
<!DOCTYPE html>
<html>
<head>
	<title>Liste d'absence'</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./style/css/style.css">
	<script type="text/javascript" src="./style/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="./style/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="logo-home" ><a href="index.php"><span><img src="logo1.png"> </span></a></div>
        <h1 id="Wilaya">Wilaya De La Région De Marrakech-Safi<br>
        Préfecture De Marrakech </h1>

        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3><i class="glyphicon glyphicon-folder-open"></i> </h3>
                    <strong><i class="glyphicon glyphicon-folder-open"></i></span></strong>
                </div>

                <ul class="list-unstyled components">
                    <li class="active">
                        <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">
                            <i class="glyphicon glyphicon-user"></i>
                            Profile
                        </a>
                        <ul class="collapse list-unstyled" id="homeSubmenu">                            <li><a href="list-utilisatuers.php"><i class="glyphicon glyphicon-pencil"></i>Modifier utilisateur</a></li>
                        </ul>
                    </li>
                     <li class="">
                        <a href="#Stgmenu" data-toggle="collapse" aria-expanded="false">
                            <i class="glyphicon glyphicon-th-list"></i>
                            Stagiaire
                        </a>
                        <ul class="collapse list-unstyled" id="Stgmenu">
                            
                            <li><a href="ajouter-stagiaire.php"><i class="glyphicon glyphicon-plus"></i>Ajouter stagiaire </a></li>
                            <li><a href="list-stagiaire.php"><i class="glyphicon glyphicon-list-alt"></i>Liste Stagiaires</a></li>
                            
                            <li><a href="liste_NonAff.php"><i class="glyphicon glyphicon-list-alt"></i>Stagiaire non affecté </a></li>
                            <li><a href="liste_encour.php"><i class="glyphicon glyphicon-list-alt"></i>Stagiaire en cours </a></li>
                            <li><a href="liste_archiver.php"><i class="glyphicon glyphicon-list-alt"></i>Stagiaire en archive </a></li>
                        </ul>
                    </li>
                    <li class="">
                        <a href="#AbsenceMenu" data-toggle="collapse" aria-expanded="false">
                            <i class="glyphicon glyphicon-th-list"></i>
                            Absence
                        </a>
                        <ul class="collapse list-unstyled" id="AbsenceMenu">
                            <li><a href="ajouter-absence.php"><i class="glyphicon glyphicon-plus"></i>Marquer l'absence</a></li>
                            <li><a href="list-absence.php"><i class="glyphicon glyphicon-list-alt"></i>Liste des absences </a></li>
                            
                        </ul>
                    </li>
                    <li class="">
                        <a href="#EncadMenu" data-toggle="collapse" aria-expanded="false">
                            <i class="glyphicon glyphicon-th-list"></i>
                            Encadrant
                        </a>
                        <ul class="collapse list-unstyled" id="EncadMenu">
                            <li><a href="ajouter-encadrant.php"><i class="glyphicon glyphicon-plus"></i>Ajouter un Encadrant </a></li>
                            <li><a href="list-encadrant.php"><i class="glyphicon glyphicon-list-alt"></i>Liste Encadrants </a></li>
                            
                            
                        </ul>
                    </li>
                    <li class="">
                        <a href="#StageMenu" data-toggle="collapse" aria-expanded="false">
                            <i class="glyphicon glyphicon-th-list"></i>
                            Stage
                        </a>
                        <ul class="collapse list-unstyled" id="StageMenu">
                            <li><a href="ajouter-stage.php"><i class="glyphicon glyphicon-plus"></i>Ajouter un Stage</a></li>
                            <li><a href="list-stage.php"><i class="glyphicon glyphicon-list-alt"></i>Liste Stages </a></li>
                            
                            
                        </ul>
                    </li>
                    <li>
                        <li class="">
                        <a href="#RechecheMenu" data-toggle="collapse" aria-expanded="false">
                            <i class="glyphicon glyphicon-search"></i>
                            Recherche
                        </a>
                        <ul class="collapse list-unstyled" id="RechecheMenu">
                            <li><a href="recherche-stagiaire.php"><i class="glyphicon glyphicon-search"></i>Par Stagiaire </a></li>
                            <li><a href="recherche-encadrant.php"><i class="glyphicon glyphicon-search"></i>Par Encadrant</a></li>
                            <li><a href="recherche-filiere.php"><i class="glyphicon glyphicon-search"></i>Par Filiere</a></li>
                            
                        </ul>
                    </li>
                    <li>
                        <a href="stagiaire_cer.php">
                            <i class="  glyphicon glyphicon-print"></i>
                            Certificat Stage
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="glyphicon glyphicon-briefcase"></i>
                            About
                        </a>
                    </li>
                </ul>
            </nav>

            <!-- Page Content Holder -->
            <div id="content">

                <nav id="navbtn" class="navbar navbar-default">
                    <div class="container-fluid">

                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                                
                            </button>
                        </div>

            
                    </div>
                </nav>

            </div>
            <div class="bcg">
                <h1>Ajouter : absence</h1>
<div style="height: 900px; width: 800px; margin-left: 50px; margin-top: 100px">
<form method="post">
  <div style="float: left">
  <div class="form-group">
    <label >Id_absence</label>
    <input type="text" name="Id_absence" class="form-control">
  </div >
  <div class="form-group">
    <label>date_Debut</label>
    <input type="text" name="date_Debut" placeholder="AAAA/MM/JJ" class="form-control">
  </div>
  <div class="form-group">
    <label>date_fin</label>
    <input type="text" name="date_fin"  placeholder="AAAA/MM/JJ" class="form-control">
  </div>
</div>

<div style="float: right;">
  <div class="form-group">
    <label>Justification</label>
    <select name="Justification" class="form-control">
            <option >Justifier</option>

      <option value="oui">Oui</option>
      <option value="non">Non</option>
    </select>
  </div>
  <div class="form-group">
    <label>Cin_stg  </label>
    <input type="text" name="Cin_stg" class="form-control">
  </div>
  

</div>
<button type="submit" name="save" class="btn btn-success" style="margin-left: 40px;margin-top: 50%;">Marquer</button>
</form>
</div>
            </div>
        </div>
         <!-- jQuery CDN -->
         <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

         <script type="text/javascript">
             $(document).ready(function () {
                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar').toggleClass('active');
                 });
             });
         </script>

</body>
</html>