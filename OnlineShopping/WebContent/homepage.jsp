<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
  <link rel="shortcut icon" type="image/png" href="data:image/png;base64,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">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Sasta Amazon</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

	<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://assets.myntassets.com/w_980,c_limit,fl_progressive,dpr_2.0/assets/images/banners/2019/9/10/b8b51d4b-a56f-4d23-adb1-7886c8293dac1568134611454-Ruosh_Desk_Banner.jpg" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://assets.myntassets.com/w_980,c_limit,fl_progressive,dpr_2.0/assets/images/banners/2019/9/10/00a7b40d-32a4-4315-a658-99a2cbe98ece1568134611360-desktop-banner.jpG" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://assets.myntassets.com/w_980,c_limit,fl_progressive,dpr_2.0/assets/images/banners/2019/9/10/0a06a5bb-7381-4caa-a777-aaa95324f1831568134611438-GAP_Desk_Banner.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>