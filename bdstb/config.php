<?php
/**
 *
 * @ This file is created by http://DeZender.Net
 * @ deZender (PHP7 Decoder for SourceGuardian Encoder)
 *
 * @ Version			:	4.1.0.1
 * @ Author			:	DeZender
 * @ Release on		:	29.08.2020
 * @ Official site	:	http://DeZender.Net
 *
 */

function multidns($dns)
{
	$lista_dns = ['Padrao' => 'http://4cdn.cc/', 'DNS2' => 'http://4cdn.cc/:80'];
	return $lista_dns[$dns];
}

$debug = false;
$logs = false;
$dns_base = 'http://4cdn.cc/:80';
$compatibility = false;
$tv_censored_category_id = 29;
$movie_censored_category_id = 97;
$series_censored_category_id = 520;
$filmes_em_alta_categoria = 32;
$series_em_alta_categoria = 39;

?>