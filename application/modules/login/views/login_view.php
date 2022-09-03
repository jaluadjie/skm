<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <link rel="apple-touch-icon" sizes="76x76" href="<?= base_url('assets/img/apple-icon.png'); ?>">
  <link rel="icon" type="image/png" href="<?= base_url('assets/img/favicon.png'); ?>">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Dashboard e-SKM Prov. Kalbar </title>

  <!-- Bootstrap -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">

  <!-- Custom Theme Style -->
  <link href="<?php echo base_url('assets/css/dashboard.min.css') ?>" rel="stylesheet">
</head>

<body class="login">
  <div>
    <a class="hiddenanchor" id="signin"></a>
    <div class="login_wrapper">
      <div class="animate form login_form">
        <section class="login_content">
          <div class="img-responsive text-center">
            <img src="<?= base_url('assets/img/sekam-padi.png'); ?>" alt="Sekam Padi" width="70%">
          </div>
          <?php echo form_open('login/auth'); ?>
          <h1>Silahkan Login</h1>
          <?php echo $this->session->flashdata('msg'); ?>
          <div>
            <input type="text" class="form-control" placeholder="Username" name="username" required="" />
          </div>
          <div>
            <input type="password" class="form-control" placeholder="Password" name="password" required="" />
          </div>
          <div>
            <button class="btn btn-primary submit" type="submit">Log in</button>
            <a class="reset_pass" href="#">Lost your password?</a>
          </div>

          <div class="clearfix"></div>

          <br />

          <div>
            <div class="img-responsive text-center">
              <img src="<?= base_url('assets/img/logo_pemprov_kalbar.png'); ?>" alt="Logo Pemprov" width="30%">&nbsp;&nbsp;&nbsp;&nbsp;
              <img src="<?= base_url('assets/img/ro_orgs.png'); ?>" alt="Logo Biro Organisasi" width="30%">&nbsp;&nbsp;&nbsp;&nbsp;
              <img src="<?= base_url('assets/img/berakhlak.png'); ?>" alt="Berakhlak" width="50%">&nbsp;&nbsp;&nbsp;&nbsp;
              <img src="<?= base_url('assets/img/brand-kalbar.png'); ?>" alt="Brand Kalbar" width="25%"><br><br>
            </div>
            <p></p>
            <p>&copy;<?= date('Y') ?> Biro Organisasi Setda Prov. Kalbar</p>
          </div>
      </div>
      </form>
      </section>
    </div>
  </div>
  </div>
</body>

</html>