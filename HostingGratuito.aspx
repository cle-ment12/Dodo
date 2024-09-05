<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" MaintainScrollPositionOnPostBack="true" CodeBehind="HostingGratuito.aspx.cs" Inherits="SGC_UTNA.HostingGratuito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Registrar Macroprocesos</title>
  <!--aqui-->
  <link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
  <link rel="stylesheet" type="text/css" media="screen" href="css/grid_12.css">
  <link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/util.css">
  <link rel="stylesheet" type="text/css" href="css/main1.css">
  <!--===============================================================================================-->
  <script src="js/jquery-1.7.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/tms-0.4.1.js"></script>
  <script src="js/cufon-yui.js"></script>
  <script src="js/cufon-replace.js"></script>
  <script src="js/Kozuka_L_300.font.js"></script>
  <script src="js/Kozuka_B_700.font.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  onLoad="cargardatos()" runat="server" >

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .navbar {
            padding: 10px 20px; /* Ajusta el espacio alrededor de la barra de navegación */
        }

        .navbar-nav .nav-link {
            font-size: 20px; /* Aumenta el tamaño de la fuente de los enlaces */
        }

        .navbar-nav .nav-item .nav-link:hover {
    color: #8bc34a !important; /* Usar !important para asegurar que esta regla se aplique */
               }

        .navbar-collapse {
            justify-content: center; /* Centra los elementos de la barra de navegación */
        }

        .navbar-form {
            margin-left: auto; /* Centra el formulario de búsqueda a la derecha */
        }

        .form-control {
            width: 300px; /* Aumenta el ancho del campo de búsqueda */
            font-size: 16px; /* Aumenta el tamaño de la fuente del campo de búsqueda */
        }
        .macroproceso-container {
        margin: 20px 0;
        padding: 15px;
        border: 1px solid #ccc;
        border-radius: 8px;
        background-color: #f9f9f9;
    }

    .macroproceso-table {
        width: 100%;
        border-collapse: collapse;
    }

    .macroproceso-label {
        width: 40%;
        padding: 10px;
        font-weight: bold;
        color: #333;
    }

    .macroproceso-input {
        width: 60%;
        padding: 10px;
    }

    .text-box {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        background-color: #fff;
        transition: border-color 0.3s;
    }

    .text-box:focus {
        border-color: lightgreen; /* Cambia esto al color de hover que prefieres */
        outline: none;
    }
    .documento-container {
        margin: 15px 0;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 8px;
        background-color: #f9f9f9;
        text-align: center;
    }

    .documento-title {
        font-size: 1em;
        font-weight: bold;
        color: #333;
    }

    .documento-table {
        width: 100%;
        margin-bottom: 10px;
    }

    .documento-options-table {
        width: 100%;
        border-collapse: collapse;
    }

    .documento-option {
        width: 50%;
        padding: 5px;
        text-align: center;
        font-size: 0.9em;
    }

    .documento-option input {
        margin-right: 5px;
    }
    .documento-container {
        margin: 15px 0;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 8px;
        background-color: #f9f9f9;
        text-align: center;
    }

    .documento-title {
        font-size: 1em;
        font-weight: bold;
        color: #333;
    }

    .documento-table {
        width: 100%;
        margin-bottom: 10px;
    }

    .documento-options-table {
        width: 100%;
        border-collapse: collapse;
    }

    .documento-option {
        width: 50%;
        padding: 5px;
        text-align: center;
        font-size: 0.9em;
    }

    .documento-option input {
        margin-right: 5px;
    }
    .documento-container {
        margin: 15px 0;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 8px;
        background-color: #f9f9f9;
        text-align: center;
    }

    .documento-title {
        font-size: 1em;
        font-weight: bold;
        color: #333;
    }

    .documento-table {
        width: 100%;
        border-collapse: collapse;
    }

    .file-upload {
        margin-left: 10px; /* Espacio entre el texto y el control de carga */
    }
    .agregar-documento-container {
            margin: 15px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .documento-table {
            width: 100%;
            border-collapse: collapse;
        }

        .button-agregar-documento {
            background-color: #283E51;
            border-radius: 10px;
            height: 30px;
            width: 160px;
            color: #fff;
            font-size: 16px;
            font-family: Poppins-Regular;
            border: none;
            cursor: pointer;
        }
         .documento-input-container {
        margin: 15px 0;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 8px;
        background-color: #f9f9f9;
    }

    .documento-table {
        width: 100%;
        border-collapse: collapse;
    }

    .input-text {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        background-color: #fff;
        transition: border-color 0.3s;
    }

    .input-text:focus {
        border-color: lightgreen; /* Color de enfoque */
        outline: none;
    }

    .input-dropdown {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        background-color: #fff;
    }
    .documento-search-container {
        margin: 15px 0;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 8px;
        background-color: #f9f9f9;
    }

    .documento-title {
        font-size: 1em;
        font-weight: bold;
        color: #333;
    }

    .input-text {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        background-color: #fff;
        transition: border-color 0.3s;
    }

    .input-text:focus {
        border-color: lightgreen; /* Color de enfoque */
        outline: none;
    }

    .search-button {
        width: 20px;
        height: 20px;
        margin-left: 5px; 
    }
    .documento-selected-container {
        margin: 15px 0;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 8px;
        background-color: #f9f9f9;
    }

    .label-inputdocument {
        font-size: 1em;
        font-weight: bold;
        color: #333;
        display: block; /* Para que ocupe toda la línea */
        margin-bottom: 10px; /* Espacio entre el label y la tabla */
    }

    .selected-label {
        color: red; /* Color del texto */
        font-weight: bold;
    }

    .selected-image {
        width: 30px;
        height: 30px;
        user-select: none;
        -moz-user-select: none;
        -webkit-user-drag: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }
     .modal {
    display: none; 
    position: fixed; 
    z-index: 1000; 
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; 
    background-color: rgba(0,0,0,0.4); 
    padding: 20px;
}

.modal-content {
    background-color: #fefefe;
    margin: 5% auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%; 
}
.grid-container {
        margin: 15px 0;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 8px;
        background-color: #f9f9f9;
    }

    .grid-label-container {
        margin-bottom: 10px; /* Espacio debajo de la etiqueta */
    }

    .label-inputdocument {
        font-size: 1em;
        font-weight: bold;
        color: #333;
    }

.grid-view {
    width: 100%; /* O un ancho fijo como 800px */
    min-width: 600px; /* Ajusta según tus necesidades */
}

    .grid-view th {
        background-color: #e9ecef; /* Color del encabezado */
        color: #333;
        font-weight: bold;
        padding: 8px;
    }

    .grid-view td {
        padding: 8px;
        border-bottom: 1px solid #ccc; /* Líneas entre filas */
    }

    .grid-view tr:hover {
        background-color: #f1f1f1; /* Color de fondo al pasar el ratón */
    }
    .grid-pager {
    padding: 10px;
    text-align: center;
}

.grid-pager a {
    margin: 0 5px;
    text-decoration: none;
    color: #007BFF; /* Color del enlace */
}

.grid-pager a:hover {
    text-decoration: underline;
}

#iframeDocumento {
    width: 100%;
    height: 400px;
    border: none;
}
    </style>

 <header>
         
    </header>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">      

        <div class="container">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                            DODO
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                            DODO
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                            DODO
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                            DODO
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                            DODO
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                            DODO
                        </a>
                    </li>                   
                </ul>
            </div>
        </div>
    </nav>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>



  <div  style="  width: 100%;  min-height: 100vh;display: -webkit-box; display: -webkit-flex; display: -moz-box;display: -ms-flexbox;display: flex;flex-wrap: wrap; justify-content: center; align-items: center; padding: 15px;">
   
       <div class="wrap-document">


      <div class="document-form-title" style="background-image: url(imagenes/f_1.jpg);">
        <span class="login100-form-title-1">
          ACTIVIDAD: SITIO WEB
        </span>
      </div>

     <div class="" aria-expanded="false">

<div class="macroproceso-container" data-validate="datos requeridos">
    <table class="macroproceso-table">
        <tr>
            <td class="macroproceso-label">
                <span>¿Qué es una Arquitectura?</span>
            </td>           
        </tr>
    </table>   
</div>

<div class="macroproceso-container" data-validate="datos requeridos">
    <table class="macroproceso-table">
        <tr>
            <td class="macroproceso-label">
                <span>Arquitectura es el diseño estructural y organizativo de un sistema o entidad, que define cómo sus componentes se disponen e interactúan para cumplir con ciertos objetivos y requisitos.</span>
            </td>           
        </tr>
    </table>   
</div>

<div class="macroproceso-container" data-validate="datos requeridos">
    <table class="macroproceso-table">
        <tr>
            <td class="macroproceso-label">
                <span>¿Qué es una Arquitectura de Software?</span>
            </td>           
        </tr>
    </table>   
</div>

<div class="macroproceso-container" data-validate="datos requeridos">
    <table class="macroproceso-table">
        <tr>
            <td class="macroproceso-label">
                <span>La arquitectura de software es el diseño estructural de un sistema de software que define sus componentes, sus interacciones y cómo estos cumplen con los requisitos funcionales y no funcionales. Proporciona un marco para la construcción y evolución del sistema, asegurando eficiencia, escalabilidad y mantenibilidad.</span>
            </td>           
        </tr>
    </table>   
</div>

<div class="macroproceso-container" data-validate="datos requeridos">
    <table class="macroproceso-table">
        <tr>
            <td class="macroproceso-label">
                <span>Bibliografias</span>
            </td>           
        </tr>
    </table>   
</div>

<div class="macroproceso-container" data-validate="datos requeridos">
    <table class="macroproceso-table">
        <tr>
            <td class="macroproceso-label">
                <span>Ching, F. D. K. (2015). Form, Space, and Order. Wiley.</span>
                <span>Bass, L., Clements, P., & Kazman, R. (2012). Software Architecture in Practice (3rd ed.). Addison-Wesley.</span>
            </td>           
        </tr>
    </table>   
</div>

         

<style>
    .macroproceso-container {
    display: flex;
    justify-content: center;
    align-items: center;
}

.macroproceso-table {
    width: 100%; /* Ajusta el ancho de la tabla si es necesario */
    border-collapse: collapse; /* Asegura que no haya espacios entre las celdas */
}

.macroproceso-label {
    text-align: center; /* Centra el texto horizontalmente */
    vertical-align: middle; /* Centra el texto verticalmente */
}
</style>

<hr style="background-color:gray;"/>
     
        </div>
      </div>
    </div>


 
   <footer class="footer" style="position:relative;">
      
      </footer>
<!--==============================footer=================================-->
<script>Cufon.now();</script>
    



   


<style>html,
  body {
      height: 80%;
      margin: 0;
      padding: 0;
      display: flex;
      flex-direction: column;
  }
  a{
      color: black;

  }
  .btnlarge {
      width: 95%; 
      height: 100%;
  }
  .p1 {
      text-align: center;
      color: black;
      vertical-align: middle;
      font-size: 135%;
  }
  li {
      list-style-type: none;
  }
</style>

    </asp:Content>



