<!DOCTYPE html>
<html lang="en" data-bs-theme="light">

<head>
	<?php $this->load->view("templates/head.php") ?>
</head>

<body class="light">
	<div id="app">
		<?php $this->load->view("templates/sidebar.php") ?>

		<div id="main">
			<!-- Muncul saat tampilan diperkecil -->
			<header class="mb-3">
				<a href="#" class="burger-btn d-block d-xl-none">
					<i class="bi bi-justify fs-3"></i>
				</a>
			</header>
			<!-- End Header -->

			<div class="page-heading">
				<div class="page-title">
					<div class="row">
						<div class="col-12 col-md-6 order-md-1 order-last">
							<h3>Tambah Akun Admin</h3>
							<p class="text-subtitle text-muted">Mensortir data administrator</p>
						</div>
						<div class="col-12 col-md-6 order-md-2 order-first">
							<nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="<?= base_url('dashboard') ?>">Dashboard</a></li>
									<li class="breadcrumb-item active" aria-current="page">Manajemen Akun</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>

				<?php if ($this->session->flashdata('success') == TRUE) : ?>
					<div class="alert alert-secondary alert-dismissible show fade">
						<?= $this->session->flashdata('success'); ?>
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>
				<?php endif; ?>

				<section class="section">
					<div class="card">
						<div class="card-header">
							<a href="<?= base_url('user') ?>" class="btn icon icon-left btn-primary">
								<i class="bi bi-arrow-left-circle-fill"></i> Back
							</a>
						</div>

						<div class="card-body">
							<?php echo form_open_multipart(); ?>
							<div class="row">

								<div class="col-lg-6 mb-2">
									<h6 for="nama_user">Nama Admin</h6>
									<div class="input-group mb-3">
										<input class="form-control" type="text" name="nama_user" min="0" placeholder="Masukkan Nama" required />
									</div>
									<?= form_error('nama_user', '<div class="text-danger">', '</div>'); ?>
								</div>

								<div class="col-lg-6 mb-2">
									<h6 for="username">Username</h6>
									<div class="input-group mb-3">
										<input class="form-control" type="text" name="username" min="0" placeholder="Username" required />
									</div>
									<?= form_error('username', '<div class="text-danger">', '</div>'); ?>
								</div>

								<div class="col-lg-6 mb-2">
									<h6 for="password">Password</h6>
									<div class="input-group mb-3">
										<input class="form-control" type="text" name="password" min="0" placeholder="Password" required />
									</div>
									<?= form_error('password', '<div class="text-danger">', '</div>'); ?>
								</div>

								<div class="col-sm-12 d-flex justify-content-end">
									<button type="submit" name="btn" class="btn btn-success me-1 mb-1">
										Simpan
									</button>
								</div>
								<!-- <input class="btn btn-success" type="submit" name="btn" value="Save" /> -->

							</div>
							<?php echo form_close(); ?>
						</div>

					</div>

				</section>
			</div>

			<?php $this->load->view("templates/footer.php") ?>
		</div>

	</div>

	<?php $this->load->view("templates/js.php") ?>

</body>

</html>