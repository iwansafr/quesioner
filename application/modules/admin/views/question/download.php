<?php defined('BASEPATH') OR exit('No direct script access allowed');

header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header("Content-Disposition: attachment; filename=Question Responses.xls");

echo $this->table->generate($data);