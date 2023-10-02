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
							<h3>Manajemen Akun</h3>
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
							<a href="<?= base_url() ?>user/tambah" class="btn icon icon-left btn-primary">
								<i class="bi bi-plus-circle-fill"></i> Tambah
							</a>
						</div>

						<div class="card-body">
							<table class="table table-light" id="table1">
								<thead>
									<tr>
										<th>No.</th>
										<th>Nama</th>
										<th>Username</th>
										<th>Password</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<?php $no = 1;
									foreach ($data as $key) : ?>
										<tr>
											<td> <?= $no++; ?> </td>
											<td> <?= $key['nama_user']; ?> </td>
											<td> <?= $key['username']; ?> </td>
											<td> <?= $key['password']; ?> </td>
											<td>
												<a href="<?= base_url() ?>user/edit/<?= $key['id_user']; ?>" class="btn icon btn-success"><i class="bi bi-pencil-square"></i></a>
												<a href="<?= base_url() ?>user/hapus/<?= $key['id_user']; ?>" onclick="return confirm('Apakah Anda ingin menghapus akun?');" class="btn icon btn-danger" data-popup="tooltip" data-placement="top" title="Hapus Data"><i class="bi bi-trash-fill"></i></a>
											</td>
										</tr>
									<?php endforeach; ?>
								</tbody>
							</table>
						</div>

					</div>
				</section>
			</div>

			<?php $this->load->view("templates/footer.php") ?>
		</div>

	</div>

	<?php $this->load->view("templates/js.php") ?>

	<script>
		// Simple Datatable
		let table1 = document.querySelector('#table1');
		let dataTable = new simpleDatatables.DataTable(table1);
	</script>

</body>

</html>