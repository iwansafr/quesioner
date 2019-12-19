<?php defined('BASEPATH') OR exit('No direct script access allowed');

if(!empty($data))
{
	msg('data berhasil tersimpan','success');
	msg('Terima kasih '.$data['nama'].' sudah meluangkan waktu anda untuk mengisi quesioner kami','success');
}