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
              <h3>Prediksi Hama</h3>
              <p class="text-subtitle text-muted">Prediksi hama berdasarkan data training</p>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
              <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="<?= base_url('dashboard') ?>">Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Data Prediksi</li>
                </ol>
              </nav>
            </div>
          </div>
        </div>

        <section class="section" id="hidden">
          <div class="card">

            <div class="card-body">
              <table class="table table-light" id="table1">
                <thead>
                  <tr>
                    <th width="80px">No.</th>
                    <th>Bulan</th>
                    <th width="240px">Wilayah</th>
                    <th width="150px">Curah Hujan</th>
                    <th>Hama</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no = 1;
                  foreach ($data as $key) : ?>
                    <tr>
                      <td> <?= $no++; ?> </td>
                      <td> <?= $key['bulan']; ?> </td>
                      <td> <?= $key['wilayah']; ?> </td>
                      <td> <?= $key['curah_hujan']; ?> mm </td>
                      <td> <?= $key['hama']; ?> </td>
                    </tr>
                  <?php endforeach; ?>
                </tbody>
              </table>
            </div>
          </div>
        </section>

        <section class="section">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Prediksi</h3>
            </div>

            <div class="card-body">
              <div class="row">

                <div class="col-lg-12 mb-2">
                  <h6>Curah Hujan</h6>
                  <div class="input-group mb-3">
                    <select class="form-control" id="form-prediksi">
                      <option value="">-- Pilih Curah Hujan</option>
                      <option value="ST">Sangat Tinggi</option>
                      <option value="T">Tinggi</option>
                      <option value="M">Menengah</option>
                      <option value="R">Rendah</option>
                    </select>
                  </div>
                </div>

                <div class="col-lg-6 mb-2">
                  <label for="start_month" class="form-label">Start Month</label>
                  <input type="month" class="form-control" id="start_month">
                </div>
                <div class="col-lg-6 mb-2">
                  <label for="end_month" class="form-label">End Month</label>
                  <input type="month" class="form-control" id="end_month">
                </div>

              </div>
              <div class="col-lg-6 mb-2">
                <button type="button" id="btn-lihat-opt" class="btn btn-primary">Lihat OPT</button>
              </div>
            </div>
          </div>

        </section>

        <section class="section">
          <div class="card">

            <div class="card-body">
              <table class="table table-light" id="table2">
                <thead>
                  <tr>
                    <th>No.</th>
                    <th>Awal Bulan</th>
                    <th>Akhir Bulan</th>
                    <th>Curah Hujan</th>
                    <th>List Hama</th>
                    <th>Penanggulangan</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no = 1;
                  foreach ($hasil as $key) : ?>
                    <tr>
                      <td width="65px"> <?= $no++; ?> </td>
                      <td> <?= $key['bulan_awal']; ?> </td>
                      <td> <?= $key['bulan_akhir']; ?> </td>
                      <td> <?= $key['tipe_ch']; ?> </td>
                      <td> <?= $key['daftar_hama']; ?> </td>
                      <td>
                        <button class="btn btn-primary btn-show-control" data-hama="<?= $key['daftar_hama']; ?>">Tampilkan</button>
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
    let curah_hujan = ["ST", "T", "M", "R"]

    document.getElementById("btn-lihat-opt").addEventListener("click", getOPT);

    //MEMPREDIKSI CURAH HUJAN
    function getOPT() {
      let input = document.getElementById("form-prediksi").value;
      let data = <?= json_encode($data) ?>;
      let data_opt = [...new Set(data.map(item => item.hama))]

      let startMonth = document.getElementById("start_month").value;
      let endMonth = document.getElementById("end_month").value;

      // VALIDATION
      if (input == "" || startMonth == "" || endMonth == "") {
        alert("Pilih Curah Hujan, Start Month, dan End Month Terlebih Dahulu!");
        return;
      }

      // Filter data based on startMonth and endMonth
      let filteredData = data.filter(d => {
        let dataMonth = d.bulan;
        return dataMonth >= startMonth && dataMonth <= endMonth;
      });

      //transformasi curah hujan
      let new_data = filteredData.map(d => {
        return Object.assign({}, d, {
          curah_hujan: get_curah_hujan(d.curah_hujan)
        })
      });

      //transformasi data frequensi curah hujan
      let new_data_opt = [];
      data_opt.map(dp => {
        new_data_opt = new_data_opt.concat([get_y_n(dp, new_data)])
      });

      //predictor probability
      let new_data_opt2 = [];
      new_data_opt.map(dp => {
        new_data_opt2 = new_data_opt2.concat([get_pred_probability(dp)])
      });

      //per kelas
      let new_data_opt3 = [];
      new_data_opt.map(dp => {
        new_data_opt3 = new_data_opt3.concat([get_per_kelas(dp)])
      });

      //result
      let results = [];
      new_data_opt.map((dp, idx) => {
        results = results.concat([get_result(dp, new_data_opt2[idx], new_data_opt3[idx])])
      });

      //GET RESULTS OPT
      let idx = curah_hujan.indexOf(input.toString());
      let opt_results = [];
      data_opt.map((op, i) => {
        if (results[i][idx].res_y >= 0.5) {
          opt_results = opt_results.concat([op])
        }
      });

      // SIMPAN KE DATABASE
      if (opt_results.length === 0) {
        alert("Tidak ada hama yang sesuai dengan pilihan curah hujan.")
      } else {
        let bulan_awal = startMonth;
        let bulan_akhir = endMonth;
        let tipe_ch = input;
        let daftar_hama = opt_results.join(", ");

        // Kirim permintaan AJAX ke server untuk menyimpan hasil prediksi ke database
        let formData = new FormData();
        formData.append('bulan_awal', bulan_awal);
        formData.append('bulan_akhir', bulan_akhir);
        formData.append('tipe_ch', tipe_ch);
        formData.append('daftar_hama', daftar_hama);

        fetch('<?= base_url('hasil/save_prediction') ?>', {
            method: 'POST',
            body: formData
          })
          .then(response => {
            if (response.ok) {
              return response.json();
            } else {
              throw new Error('Error saving prediction');
            }
          })
          .then(data => {
            alert("Hasil prediksi berhasil tersimpan.");
          })
          .catch(error => {
            console.error(error);
            alert("Hasil prediksi berhasil tersimpan.");
          });
      }
    }


    //MENDAPATKAN CURAH HUJAN
    function get_curah_hujan(ch) {
      let ch_st = 500;
      let ch_t = 300;
      let ch_m = 100;

      if (ch >= ch_st) {
        return "ST"
      } else if (ch >= ch_t) {
        return "T"
      } else if (ch >= ch_m) {
        return "M"
      } else {
        return "R"
      }
    }

    //FUNCTION FREQUENSI
    function get_y_n(item, data) {
      let freq = []
      curah_hujan.map(ch => {
        let jml_y = data.filter(df => {
          return (df.hama.toString() == item.toString() && df.curah_hujan.toString() == ch.toString())
        })
        let jml_n = 0

        freq = freq.concat([{
          jml_y: jml_y.length,
          jml_n: jml_n,
          jml_total: jml_y.length + jml_n
        }])
      })

      let total_y = 0
      let total_n = 0
      let total = 0
      freq.map(fq => {
        total_y += fq.jml_y
        total_n += fq.jml_n
        total += (fq.jml_y + fq.jml_n)
      })

      return {
        total_y: total_y,
        total_n: total_n,
        total: total,
        data: freq
      }
    }

    //FUNCTION PREDICTOR PROBABILITY
    function get_pred_probability(item) {
      let prob = []
      item.data.map(dp => {
        prob = prob.concat([{
          prob: dp.jml_total / prevent_zero(item.total)
        }])
      })

      //prior probability
      y_prior = item.total_y / prevent_zero(item.total)
      n_prior = item.total_n / prevent_zero(item.total)

      return {
        y_prior: y_prior,
        n_prior: n_prior,
        data: prob
      }
    }

    //FUNCTION PER KELAS
    function get_per_kelas(item) {
      let kelas = item.data.map(dp => {
        return {
          kelas_y: dp.jml_y / prevent_zero(item.total_y),
          kelas_n: dp.jml_n / prevent_zero(item.total_n)
        }
      })

      return kelas
    }

    //FUNCTION RESULT
    function get_result(item, item_prob, item_kelas) {
      let result = []
      item.data.map((dp, idx) => {
        result = result.concat([{
          res_y: (item_kelas[idx].kelas_y * item_prob.y_prior) / prevent_zero(item_prob.data[idx].prob),
          res_n: (item_kelas[idx].kelas_n * item_prob.n_prior) / prevent_zero(item_prob.data[idx].prob)
        }])
      })

      return result
    }

    //PREVENT ZERO
    function prevent_zero(num) {
      let number = Number(num)

      if (number == 0) {
        return 1
      }
      return number
    }

// Add this JavaScript code to your existing script block

// Handle click event to display control methods
document.addEventListener('click', function (event) {
  if (event.target.classList.contains('btn-show-control')) {
    const hama = event.target.getAttribute('data-hama');
    displayControlMethods(hama);
  }
});

// Function to fetch and display control methods based on hama
function displayControlMethods(hama) {
  // You should have a JSON data structure containing hama and corresponding control methods
  const controlMethodsData = {
    "hama1": "Penanggulangan hama 1: Cara 1, Cara 2, Cara 3",
    "hama2": "Penanggulangan hama 2: Cara 4, Cara 5",
    // Add more hama and control methods as needed
  };

  // Check if the hama exists in the data
  if (controlMethodsData.hasOwnProperty(hama)) {
    const controlMethods = controlMethodsData[hama];
    alert(`Penanggulangan untuk hama ${hama}: \n${controlMethods}`);
  } else {
    alert(`Tidak ada informasi penanggulangan untuk hama ${hama}`);
  }
}

  </script>

  <script>
    // Simple Datatable
    let table2 = document.querySelector('#table2');
    let dataTable2 = new simpleDatatables.DataTable(table2);
  </script>

</body>

</html>