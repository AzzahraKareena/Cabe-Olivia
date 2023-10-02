<!DOCTYPE html>
<html lang="en" data-bs-theme="light">

<head>
    <?php $this->load->view("templates/head.php") ?>
    <link rel="stylesheet" href="<?php echo base_url('assets/css/pages/auth.css') ?>">
</head>

<body data-new-gr-c-s-check-loaded="14.1110.0" data-gr-ext-installed="">
    <div id="auth">
        <div class="row h-100">
            <div class="col-lg-5 col-12">
                <div id="auth-left">
                    <div class="auth-logo">
                        <img src="<?php echo base_url('assets/images/logo/logo.png"') ?>" alt="Logo" srcset="">
                    </div>

                    <form method="post" action="">

                        <?php if ($this->session->flashdata('gagal') == TRUE) : ?>
                            <?= $this->session->flashdata('message'); ?>
                            <h6 class="category text-center text-danger">
                                <i class="material-icons">warning</i> Username atau Password Salah!
                            </h6>
                        <?php else : ?>
                            <h1 class="auth-title">Log in.</h1>
                        <?php endif ?>
                        <br>

                        <div class="form-group">
                            <input autofocus="autofocus" value="<?= set_value('username'); ?>" type="text" name="username" class="form-control form-control-user" placeholder="Username">
                            <?= form_error('username', '<small class="text-danger">', '</small>'); ?>
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" class="form-control form-control-user" placeholder="Password">
                            <?= form_error('password', '<small class="text-danger">', '</small>'); ?>
                        </div>

                        <button type="submit" class="btn btn-success btn-block">
                            Login
                        </button>

                    </form>
                </div>
            </div>
            <div class="col-lg-7 d-none d-lg-block">
                <div id="auth-right"></div>
            </div>
        </div>
    </div>

</body>

</html>