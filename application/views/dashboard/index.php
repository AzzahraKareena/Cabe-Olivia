<!DOCTYPE html>
<html lang="en" data-bs-theme="light">

<head>
  <?php $this->load->view("templates/head.php") ?>
</head>

<body class="light">
  <div id="app">
    <?php $this->load->view("templates/sidebar.php") ?>

    <div id="main">
      <header class="mb-3">
        <a href="#" class="burger-btn d-block d-xl-none">
          <i class="bi bi-justify fs-3"></i>
        </a>
      </header>

      <div class="page-heading">
        <h3>Dashboard</h3>
      </div>

      <div class="page-content">
        <section class="row">
          <div class="col-12 col-lg-12">

            <!-- Info Card -->
            <div class="row">

              <div class="col-6 col-lg-6 col-md-6">
                <div class="card">
                  <div class="card-body px-3 py-4-5">
                    <div class="row">
                      <div class="col-md-4">
                        <div class="stats-icon purple">
                          <i class="iconly-boldShow"></i>
                        </div>
                      </div>
                      <div class="col-md-8">
                        <h6 class="text-muted font-semibold">Total Data Training</h6>
                        <h6 class="font-extrabold mb-0"><?= $this->db->get('data_training')->num_rows(); ?></h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="col-6 col-lg-6 col-md-6">
                <div class="card">
                  <div class="card-body px-3 py-4-5">
                    <div class="row">
                      <div class="col-md-4">
                        <div class="stats-icon red">
                          <i class="iconly-boldBookmark"></i>
                        </div>
                      </div>
                      <div class="col-md-8">
                        <h6 class="text-muted font-semibold">Total Akun</h6>
                        <h6 class="font-extrabold mb-0"><?= $this->db->get('user')->num_rows(); ?></h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

            </div>
            <!-- End Info Card -->



          </div>
        </section>
      </div>

      <?php $this->load->view("templates/footer.php") ?>
    </div>
  </div>

  <?php $this->load->view("templates/js.php") ?>

</body>

</html>