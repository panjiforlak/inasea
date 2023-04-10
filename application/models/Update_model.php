<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Update_model extends CI_Model
{

    function __construct()
    {
        parent::__construct();
        date_default_timezone_set('Asia/Jakarta');
    }

    public function edit_menu($param1 = "")
    {

        $data = [
            'menu_parent' => $this->input->post('menu_parent'),
            'menu' => strtolower($this->input->post('menu')),
            'url' => $this->input->post('url'),
            'icon' => $this->input->post('icon'),
            'is_active' => $this->input->post('is_active')
        ];

        $this->db->where('id_menu', $param1);
        $this->db->update('user_menu', $data);

        $this->session->set_flashdata('success', ' Successfully update the warehouse.');
    }


    public function edit_user($param1 = "")
    {
        $data = [
            'role_id' => $this->input->post('role_id'),
            'full_name' => ucwords(htmlspecialchars($this->input->post('name', true))),
            'email' => htmlspecialchars($this->input->post('email', true)),
            'branch_id' => $this->input->post('branch_id'),
            'work_unit_id' => $this->input->post('work_unit_id'),
            'position_id' => $this->input->post('position_id'),
            'is_active' => $this->input->post('is_active'),
            'create_by' => $this->session->userdata('id_user'),
            'create_date' => date('Y-m-d H:i:s')
        ];
        // edit photo
        if (!file_exists('uploads/employee/photos')) {
            mkdir('uploads/employee/photos', 0777, true);
        }
        if ($_FILES['photo']['name'] != "") {
            $data['photo'] = md5(rand(100, 200)) . '.jpg';

            if (file_exists('uploads/employee/photos/' . $this->db->get_where('users', array('id_user' => $param1))->row('photo'))) {
                unlink('uploads/employee/photos/' . $this->db->get_where('users', array('id_user' => $param1))->row('photo'));
                move_uploaded_file($_FILES['photo']['tmp_name'], 'uploads/employee/photos/' . $data['photo']);
            }
            move_uploaded_file($_FILES['photo']['tmp_name'], 'uploads/employee/photos/' . $data['photo']);
        }

        // echo $param1;
        // echo "<pre>";
        // var_dump($data);
        // echo "</pre>";
        // die;
        $this->db->where('id_user', $param1);
        $this->db->update('users', $data);
        $this->session->set_flashdata('success', 'Registration Successful');

        $this->session->set_flashdata('success', ' Successfully update the branch.');
    }



    // CONTENT
    public function edit_introduce($id = "")
    {

        $checkImage = $this->db->get_where('introduce', ['id' => $id])->row_array();
        if (isset($_FILES['banner']) && $_FILES['banner']['name'] != "") {
            if (!empty($checkImage)) {
                unlink('uploads/introduce/banner/' . $checkImage['banner']);
            }
            $data['banner'] = md5(rand(10000000, 20000000)) . '.jpg';
            move_uploaded_file($_FILES['banner']['tmp_name'], 'uploads/introduce/banner/' . $data['banner']);
        }
        $status = $this->input->post('status');
        if ($status == 1) {
            $dtUpdate = [
                'status' => 0
            ];
            $this->db->update('introduce', $dtUpdate);

            $data['title'] = ucwords($this->input->post('title'));
            $data['description'] = $this->input->post('description');
            $data['status'] = $this->input->post('status');
            $data['update_by'] = $this->session->userdata('id_user');
            $data['update_date'] = date('Y-m-d H:i:s');

            $this->db->where('id', $id);
            $this->db->update('introduce', $data);
        } else {
            $data['title'] = ucwords($this->input->post('title'));
            $data['description'] = $this->input->post('description');
            $data['status'] = $this->input->post('status');
            $data['update_by'] = $this->session->userdata('id_user');
            $data['update_date'] = date('Y-m-d H:i:s');

            $this->db->where('id', $id);
            $this->db->update('introduce', $data);
        }
        $this->session->set_flashdata('success', ' Successfully update the introduce.');
    }

    public function edit_aboutus($id = "")
    {
        $status = $this->input->post('status');
        if ($status == 1) {
            $dtUpdate = [
                'status' => 0
            ];
            $this->db->update('about_us', $dtUpdate);
            $data = [
                'about' => $this->input->post('about'),
                'vision' => $this->input->post('vision'),
                'mission' => $this->input->post('mission'),
                'status' => $this->input->post('status'),
                'update_by' => $this->session->userdata('id_user'),
                'update_date' => date('Y-m-d H:i:s')
            ];
            $this->db->where('id', $id);
            $this->db->update('about_us', $data);
        } else {
            $data = [
                'about' => $this->input->post('about'),
                'vision' => $this->input->post('vision'),
                'mission' => $this->input->post('mission'),
                'status' => $this->input->post('status'),
                'update_by' => $this->session->userdata('id_user'),
                'update_date' => date('Y-m-d H:i:s')
            ];
            $this->db->where('id', $id);
            $this->db->update('about_us', $data);
        }
        $this->session->set_flashdata('success', ' Successfully update the about us.');
    }
    public function edit_product($id = "")
    {
        $checkImage = $this->db->get_where('product', ['id' => $id])->row_array();
        if (isset($_FILES['image_thumbnail']) && $_FILES['image_thumbnail']['name'] != "") {
            unlink('uploads/product/thumbnails/' . $checkImage['image_thumbnail']);
            $data['image_thumbnail'] = md5(rand(10000000, 20000000)) . '.jpg';
            move_uploaded_file($_FILES['image_thumbnail']['tmp_name'], 'uploads/product/thumbnails/' . $data['image_thumbnail']);
        }
        if (isset($_FILES['image_large']) && $_FILES['image_large']['name'] != "") {
            unlink('uploads/product/images/' . $checkImage['image_large']);
            $data['image_large'] = md5(rand(10000000, 20000000)) . '.jpg';
            move_uploaded_file($_FILES['image_large']['tmp_name'], 'uploads/product/images/' . $data['image_large']);
        }

        $data['product_name'] = ucwords($this->input->post('product_name'));
        $data['description'] = $this->input->post('description');
        $data['short_description'] = ucwords($this->input->post('short_description'));
        $data['status'] = $this->input->post('status');
        $data['update_by'] = $this->session->userdata('id_user');
        $data['update_date'] = date('Y-m-d H:i:s');

        $this->db->where('id', $id);
        $this->db->update('product', $data);

        $this->session->set_flashdata('success', ' Successfully update the product.');
    }

    public function edit_clients($id = "")
    {
        $checkImage = $this->db->get_where('clients', ['id' => $id])->row_array();
        if (isset($_FILES['client_image']) && $_FILES['client_image']['name'] != "") {
            unlink('uploads/clients/thumbnails/' . $checkImage['client_image']);
            $data['client_image'] = md5(rand(10000000, 20000000)) . '.jpg';
            move_uploaded_file($_FILES['client_image']['tmp_name'], 'uploads/clients/thumbnails/' . $data['client_image']);
        }

        $data['client_name'] = ucwords($this->input->post('client_name'));
        $data['client_description'] = $this->input->post('client_description');
        $data['status'] = $this->input->post('status');
        $data['update_by'] = $this->session->userdata('id_user');
        $data['update_date'] = date('Y-m-d H:i:s');

        $this->db->where('id', $id);
        $this->db->update('clients', $data);

        $this->session->set_flashdata('success', ' Successfully update the clients.');
    }
    public function edit_clients_header($id = "")
    {
        $data['desc_client'] = $this->input->post('desc_client');
        $data['status'] = $this->input->post('status');
        $data['update_by'] = $this->session->userdata('id_user');
        $data['update_date'] = date('Y-m-d H:i:s');

        $this->db->where('id', $id);
        $this->db->update('client_head', $data);

        $this->session->set_flashdata('success', ' Successfully update the client head.');
    }

    public function edit_partners($id = "")
    {
        $checkImage = $this->db->get_where('partners', ['id' => $id])->row_array();
        if (isset($_FILES['image_partner']) && $_FILES['image_partner']['name'] != "") {
            unlink('uploads/partner/thumbnails/' . $checkImage['image_partner']);
            $data['image_partner'] = md5(rand(10000000, 20000000)) . '.jpg';
            move_uploaded_file($_FILES['image_partner']['tmp_name'], 'uploads/partner/thumbnails/' . $data['image_partner']);
        }

        $data['partner_name'] = ucwords($this->input->post('partner_name'));
        $data['status'] = $this->input->post('status');
        $data['update_by'] = $this->session->userdata('id_user');
        $data['update_date'] = date('Y-m-d H:i:s');

        $this->db->where('id', $id);
        $this->db->update('partners', $data);

        $this->session->set_flashdata('success', ' Successfully update the partners.');
    }

    public function edit_social($id = "")
    {
        $data['social_name'] = ucwords($this->input->post('social_name'));
        $data['url'] = $this->input->post('url');
        $data['status'] = $this->input->post('status');
        $data['update_by'] = $this->session->userdata('id_user');
        $data['update_date'] = date('Y-m-d H:i:s');

        $this->db->where('id', $id);
        $this->db->update('social_information', $data);

        $this->session->set_flashdata('success', ' Successfully update the social media.');
    }

    public function edit_system($id = "")
    {
        $checkImage = $this->db->get_where('system', ['id' => $id])->row_array();
        if (isset($_FILES['company_logo']) && $_FILES['company_logo']['name'] != "") {
            unlink('uploads/system/' . $checkImage['company_logo']);
            $data['company_logo'] = md5(rand(10000000, 20000000)) . '.jpg';
            move_uploaded_file($_FILES['company_logo']['tmp_name'], 'uploads/system/' . $data['company_logo']);
        }
        $data['copyright'] = $this->input->post('copyright');
        $data['desc_talk_to_us'] = $this->input->post('desc_talk_to_us');
        $data['update_by'] = $this->session->userdata('id_user');
        $data['update_date'] = date('Y-m-d H:i:s');

        $this->db->where('id', $id);
        $this->db->update('system', $data);

        $this->session->set_flashdata('success', ' Successfully update the web system.');
    }
    public function edit_team($id = "")
    {
        $checkImage = $this->db->get_where('team', ['id' => $id])->row_array();
        if (isset($_FILES['photo']) && $_FILES['photo']['name'] != "") {
            unlink('uploads/team/' . $checkImage['photo']);
            $data['photo'] = md5(rand(10000000, 20000000)) . '.jpg';
            move_uploaded_file($_FILES['photo']['tmp_name'], 'uploads/team/' . $data['photo']);
        }
        $data['name'] = $this->input->post('name');
        $data['social_link'] = $this->input->post('social_link');
        $data['update_by'] = $this->session->userdata('id_user');
        $data['update_date'] = date('Y-m-d H:i:s');

        $this->db->where('id', $id);
        $this->db->update('team', $data);

        $this->session->set_flashdata('success', ' Successfully update the team.');
    }

    public function edit_branch($param1 = "")
    {

        $data = [
            'branch_name' => ucwords($this->input->post('branch_name')),
            'branch_location' => $this->input->post('branch_location'),
            'branch_pic' => $this->input->post('branch_pic'),
            'branch_phone' => $this->input->post('branch_phone'),
            'branch_email' => $this->input->post('branch_email'),
            'status' => $this->input->post('status'),
            'updated_by' => $this->session->userdata('email'),
            'updated_at' => date('Y-m-d H:i:s')
        ];

        $this->db->where('id', $param1);
        $this->db->update('branch', $data);
        $this->session->set_flashdata('success', ' Successfully update the branch.');
    }
    public function edit_role($param1 = "")
    {

        $data = [
            'department_id' => $this->input->post('department_id'),
            'role_parent' => $this->input->post('role_parent'),
            'role' => ucwords($this->input->post('role')),
            'updated_by' => $this->session->userdata('email'),
            'updated_at' => date('Y-m-d H:i:s')
        ];

        $this->db->where('id_role', $param1);
        $this->db->update('user_role', $data);
        $this->session->set_flashdata('success', ' Successfully update the role.');
    }
    public function edit_work_unit($param1 = "")
    {

        $data = [
            'unit_code' => $this->input->post('unit_code'),
            'branch_id' => $this->input->post('branch_id'),
            'unit_name' => ucwords($this->input->post('unit_name')),
            'status' => $this->input->post('status'),
            'updated_by' => $this->session->userdata('email'),
            'updated_at' => date('Y-m-d H:i:s')
        ];

        $this->db->where('id', $param1);
        $this->db->update('work_unit', $data);
        $this->session->set_flashdata('success', ' Successfully update the department.');
    }
}
