<?php defined('BASEPATH') OR exit('No direct script access allowed');

if(empty($data))
{
	?>
	<h1 style="color: red;">Mohon Maaf, Data Tidak Valid, Responden Belum Selesai Menyelesaikan Survey</h1>
	<a href="<?php echo base_url('admin/question/responden') ?>">Kembali</a>
	<?php
}else{
	header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
	header("Content-Disposition: attachment; filename=Question Responses.xls");

	echo $this->table->generate($data);
}