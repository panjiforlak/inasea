<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('ecommerce/Select_model', 'select_model');
        is_logged_in();
    }
    public function index()
    {
        $data['title'] = 'Dashboard';
        $data['page_name'] = 'dashboard/summary';
        $data['user'] = $this->db->get_where('users', ['email' => $this->session->userdata('email')])->row_array();

        // $data['total_stock'] = $this->select_model->get_sum_stock()->row_array();
        // $data['total_sales'] = $this->select_model->get_sum_sales()->row_array();
        // $data['total_sales_outstanding'] = $this->select_model->get_sum_sales_outstanding()->row_array();
        // $data['total_cashout'] = $this->select_model->get_sum_cashout()->row_array();
        $this->load->view('backend/templates/index', $data);
    }
}
