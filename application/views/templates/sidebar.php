<div id="sidebar" class="active">
  <div class="sidebar-wrapper active">

    <div class="sidebar-header">
      <div class="d-flex justify-content-between">
        <div class="logo">
          <a href="<?php echo site_url('dashboard') ?>"><img src="<?php echo base_url('assets/images/logo/logo.png"') ?>" height="70px" alt="Logo" srcset=""></a>
        </div>
        <div class="toggler">
          <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
        </div>
      </div>
    </div>


    <div class="sidebar-menu">
      <ul class="menu">

        <?php if ($this->session->userdata('id_user') == TRUE) : ?>

          <!-- <div class="card-body"> -->
          <div class="d-flex align-items-center ms-3">
            <div class="avatar avatar-lg">
              <img src="<?= base_url() ?>/assets/user.jpg" alt="Face 1">
            </div>
            <div class="ms-3 name">
              <h5 class="font-bold">
                <?php
                $data = $this->db->get_where('user', ['id_user' => $this->session->userdata('id_user')])->row_array();
                ?>
                <?= ucfirst($data['nama_user']); ?>
              </h5>
            </div>
          </div>
          <!-- </div> -->

        <?php endif; ?>

        <li class="sidebar-title">Menu</li>

        <li class="sidebar-item <?php if ($title == 'Dashboard') : ?><?= 'active'; ?><?php endif; ?>">
          <a class='sidebar-link' href="<?= base_url('dashboard') ?>">
            <i class="bi bi-grid-fill"></i>
            <span>Dashboard</span>
          </a>
        </li>

        <li class="sidebar-item <?php if ($title == 'List Training') : ?><?= 'active'; ?><?php endif; ?>">
          <a class='sidebar-link' href="<?= base_url('training') ?>">
            <i class="bi bi-file-spreadsheet-fill"></i>
            <span>Data Training</span>
          </a>
        </li>

        <li class="sidebar-item <?php if ($title == 'Hasil Training') : ?><?= 'active'; ?><?php endif; ?>">
          <a class='sidebar-link' href="<?= base_url('hasil') ?>">
            <i class="bi bi-bug-fill"></i>
            <span>Prediksi Hama</span>
          </a>
        </li>

        <li class="sidebar-item <?php if ($title == 'Manajemen Akun') : ?><?= 'active'; ?><?php endif; ?>">
          <a class='sidebar-link' href="<?= base_url('user') ?>">
            <i class="bi bi-person-badge-fill"></i>
            <span>Manajemen Akun</span>
          </a>
        </li>

        <?php if ($this->session->userdata('id_user') == TRUE) : ?>
          <li class="sidebar-item">
            <a class='sidebar-link' href="<?= base_url() ?>logout">
              <i class="bi bi-box-arrow-left"></i>
              <span>Logout</span>
            </a>
          </li>

        <?php else : ?>

          <li class="sidebar-item">
            <a class='sidebar-link' href="<?= base_url() ?>auth/login">
              <i class="bi bi-box-arrow-left"></i>
              <span>Login</span>
            </a>
          </li>
        <?php endif; ?>

      </ul>
    </div>
    <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
  </div>
</div>