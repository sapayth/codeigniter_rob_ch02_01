<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Users_model extends CI_Model {
	function __construct() {
		parent::__construct();
	}

	public function get_all_users() {
		return $this->db->get('users');
	}

	public function process_create_user($data) {
		if($this->db->insert('users', d$ata))
	}
}