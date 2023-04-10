<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Insert_model extends CI_Model
{

    function __construct()
    {
        parent::__construct();
        date_default_timezone_set('Asia/Jakarta');
    }

    public function add_menu()
    {
        if (empty($this->input->post('menu_parent')) && empty($this->input->post('url'))) {
            $menu_parent =  $this->input->post('menu_parent');
            $is_parent = 1;
        } else {
            $menu_parent =  $this->input->post('menu_parent');
            $is_parent = 0;
        }

        if (!empty($this->input->post('url'))) {
            $url = $this->input->post('url');
        } else {
            $url = null;
        }
        $data = [
            'menu_parent' => $menu_parent,
            'menu' => strtolower($this->input->post('menu')),
            'url' => $url,
            'icon' => $this->input->post('icon'),
            'is_active' => $this->input->post('is_active'),
            'is_parent' => $is_parent
        ];
        $this->db->insert('user_menu', $data);
        $this->session->set_flashdata('success', ' Successfully added the menu.');
    }

    public function add_access($role_id)
    {
        $menu = $this->input->post('menu');

        foreach ($menu as $key => $m) {
            $acc_menu = $this->db->get_where('user_access_menu', array('role_id' => $role_id, 'menu_id' => $m))->row_array();
            if ($m == $acc_menu['menu_id']) {
                // akses
                $akses = $this->input->post('akses_' . $m);
                if (!empty($akses)) {
                    $this->db->where('role_id', $role_id);
                    $this->db->where('menu_id', $m);
                    $this->db->set('akses', $akses);
                    $this->db->update('user_access_menu');
                } else {
                    $akses = 0;
                    $this->db->where('role_id', $role_id);
                    $this->db->where('menu_id', $m);
                    $this->db->set('akses', $akses);
                    $this->db->update('user_access_menu');
                }
                // view
                $view = $this->input->post('view_' . $m);
                if (!empty($view)) {
                    $this->db->where('role_id', $role_id);
                    $this->db->where('menu_id', $m);
                    $this->db->set('view', $view);
                    $this->db->update('user_access_menu');
                } else {
                    $view = 0;
                    $this->db->where('role_id', $role_id);
                    $this->db->where('menu_id', $m);
                    $this->db->set('view', $view);
                    $this->db->update('user_access_menu');
                }
                // create
                $create = $this->input->post('create_' . $m);
                if (!empty($create)) {
                    $this->db->where('role_id', $role_id);

                    $this->db->where('menu_id', $m);
                    $this->db->set('create', $create);
                    $this->db->update('user_access_menu');
                } else {
                    $create = 0;
                    $this->db->where('role_id', $role_id);

                    $this->db->where('menu_id', $m);
                    $this->db->set('create', $create);
                    $this->db->update('user_access_menu');
                }
                // edit
                $edit = $this->input->post('edit_' . $m);
                if (!empty($edit)) {
                    $this->db->where('role_id', $role_id);
                    $this->db->where('menu_id', $m);
                    $this->db->set('edit', $edit);
                    $this->db->update('user_access_menu');
                } else {
                    $edit = 0;
                    $this->db->where('role_id', $role_id);
                    $this->db->where('menu_id', $m);
                    $this->db->set('edit', $edit);
                    $this->db->update('user_access_menu');
                }
                // delete
                $delete = $this->input->post('delete_' . $m);
                if (!empty($delete)) {
                    $this->db->where('role_id', $role_id);
                    $this->db->where('menu_id', $m);
                    $this->db->set('delete', $delete);
                    $this->db->update('user_access_menu');
                } else {
                    $delete = 0;
                    $this->db->where('role_id', $role_id);
                    $this->db->where('menu_id', $m);
                    $this->db->set('delete', $delete);
                    $this->db->update('user_access_menu');
                }
            } else {
                // akses
                $akses_non_menu = $this->input->post('akses_' . $m);
                $view_non_menu = $this->input->post('view_' . $m);
                $create_non_menu = $this->input->post('create_' . $m);
                $edit_non_menu = $this->input->post('edit_' . $m);
                $delete_non_menu = $this->input->post('delete_' . $m);
                if (!empty($akses_non_menu)) {
                    $akses_non = $akses_non_menu;
                } else {
                    $akses_non = 0;
                }
                if (!empty($view_non_menu)) {
                    $view_non = $view_non_menu;
                } else {
                    $view_non = 0;
                }
                if (!empty($create_non_menu)) {
                    $create_non = $create_non_menu;
                } else {
                    $create_non = 0;
                }
                if (!empty($edit_non_menu)) {
                    $edit_non = $edit_non_menu;
                } else {
                    $edit_non = 0;
                }
                if (!empty($delete_non_menu)) {
                    $delete_non = $delete_non_menu;
                } else {
                    $delete_non = 0;
                }

                $data = [
                    'role_id' => $role_id,
                    'menu_id' => $m,
                    'akses' => $akses_non,
                    'view' => $view_non,
                    'create' => $create_non,
                    'edit' => $edit_non,
                    'delete' => $delete_non
                ];
                $this->db->insert('user_access_menu', $data);
            }
            $this->session->set_flashdata('success', ' Successfully update previlege.');
        }
    }


    public function add_user()
    {
        $chk_duplicate = $this->db->get_where('users', array('email' => $this->input->post('email')));
        if ($chk_duplicate->num_rows() > 0) {
            $this->session->set_flashdata('error', 'Email Already Register <br><b>' . $this->input->post('email') . '</b>');
        } else {
            if ($this->input->post('password2') == $this->input->post('password1')) {
                $data = [
                    'role_id' => $this->input->post('role_id'),
                    'full_name' => ucwords(htmlspecialchars($this->input->post('full_name', true))),
                    'email' => strtolower($this->input->post('email', true)),
                    'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),
                    'branch_id' => $this->input->post('branch_id'),
                    'work_unit_id' => $this->input->post('work_unit_id'),
                    'position_id' => $this->input->post('position_id'),
                    'is_active' => $this->input->post('is_active'),
                    'create_by' => $this->session->userdata('id_user'),
                    'create_date' => date('Y-m-d H:i:s')
                ];

                // Photo
                if (!file_exists('uploads/employee/photos')) {
                    mkdir('uploads/employee/photos', 0777, true);
                }

                if ($_FILES['photo']['name'] == "") {
                    $data['photo'] = 'product-thumbnail.png';
                } else {
                    $data['photo'] = $this->input->post('email') . '/' . md5(rand(100, 200)) . '.jpg';
                    move_uploaded_file($_FILES['photo']['tmp_name'], 'uploads/employee/photos/' . $data['photo']);
                }
                $this->db->insert('users', $data);
                $this->session->set_flashdata('success', 'Registration Successful');
            } else {
                $this->session->set_flashdata('error', "Password don't match");
            }
        }

        // insert table yang berurutan fieldnya diatas
        // alert flashdata dibawah ini dikirim ke file login
    }



    // CONTENT
    public function add_introduce()
    {
        // path image adding 
        if (!file_exists('uploads/introduce/banner')) {
            mkdir('uploads/introduce/banner', 0777, true);
        }


        $title = $this->input->post('title');
        $description = $this->input->post('description');
        $chk_status = $this->db->get_where('introduce', array('status' => 1));
        if ($chk_status->num_rows() > 0) {
            $dtUpdate = [
                'status' => 0
            ];
            $this->db->update('introduce', $dtUpdate);
            // insert
            if ($_FILES['banner']['name'] == "") {
                $data['banner'] = 'introduce-banner.png';
            } else {
                $data['banner'] = md5(rand(10000000, 20000000)) . '.jpg';
                move_uploaded_file($_FILES['banner']['tmp_name'], 'uploads/introduce/banner/' . $data['banner']);
            }
            $data['title'] = ucwords($title);
            $data['description'] = $description;
            $data['status'] = 1;
            $data['create_by'] = $this->session->userdata('id_user');
            $data['create_date'] = date('Y-m-d H:i:s');

            $this->db->insert('introduce', $data);
        } else {

            if ($_FILES['banner']['name'] == "") {
                $data['banner'] = 'introduce-banner.png';
            } else {
                $data['banner'] = md5(rand(10000000, 20000000)) . '.jpg';
                move_uploaded_file($_FILES['banner']['tmp_name'], 'uploads/introduce/banner/' . $data['banner']);
            }
            $data['title'] = ucwords($title);
            $data['description'] = $description;
            $data['status'] = 1;
            $data['create_by'] = $this->session->userdata('id_user');
            $data['create_date'] = date('Y-m-d H:i:s');

            $this->db->insert('introduce', $data);
        }
        $this->session->set_flashdata('success', 'Successfuly add new introduce');
    }
    public function add_aboutus()
    {
        $about = $this->input->post('about');
        $vision = $this->input->post('vision');
        $mission = $this->input->post('mission');
        $chk_status = $this->db->get_where('about_us', array('status' => 1));
        if ($chk_status->num_rows() > 0) {
            $dtUpdate = [
                'status' => 0
            ];
            $this->db->update('about_us', $dtUpdate);
            $data = [
                'about' => $about,
                'vision' => $vision,
                'mission' => $mission,
                'status' => 1,
                'create_by' => $this->session->userdata('id_user'),
                'create_date' => date('Y-m-d H:i:s')
            ];
            $this->db->insert('about_us', $data);
        } else {
            $data = [
                'about' => $about,
                'vision' => $vision,
                'mission' => $mission,
                'status' => 1,
                'create_by' => $this->session->userdata('id_user'),
                'create_date' => date('Y-m-d H:i:s')
            ];
            $this->db->insert('about_us', $data);
        }
        $this->session->set_flashdata('success', 'Successfuly add new about us');
    }

    public function add_product()
    {

        // path image adding thumbnails
        if (!file_exists('uploads/product/thumbnails')) {
            mkdir('uploads/product/thumbnails', 0777, true);
        }

        if ($_FILES['image_thumbnail']['name'] == "") {
            $data['image_thumbnail'] = 'product-thumbnail.png';
        } else {
            $data['image_thumbnail'] = md5(rand(10000000, 20000000)) . '.jpg';
            move_uploaded_file($_FILES['image_thumbnail']['tmp_name'], 'uploads/product/thumbnails/' . $data['image_thumbnail']);
        }
        // path image adding images
        if (!file_exists('uploads/product/images')) {
            mkdir('uploads/product/images', 0777, true);
        }

        if ($_FILES['image_large']['name'] == "") {
            $data['image_large'] = 'product-thumbnail.png';
        } else {
            $data['image_large'] = md5(rand(10000000, 20000000)) . '.jpg';
            move_uploaded_file($_FILES['image_large']['tmp_name'], 'uploads/product/images/' . $data['image_large']);
        }


        $data['product_name'] = ucwords($this->input->post('product_name'));
        $data['description'] = $this->input->post('description');
        $data['short_description'] = ucwords($this->input->post('short_description'));
        $data['status'] = 1;
        $data['create_by'] = $this->session->userdata('id_user');
        $data['create_date'] = date('Y-m-d H:i:s');
        $this->db->insert('product', $data);

        $this->session->set_flashdata('success', 'Successfuly add new product');
    }
    public function add_clients()
    {

        // path image adding thumbnails
        if (!file_exists('uploads/clients/thumbnails')) {
            mkdir('uploads/clients/thumbnails', 0777, true);
        }

        if ($_FILES['client_image']['name'] == "") {
            $data['client_image'] = 'clients-images.png';
        } else {
            $data['client_image'] = md5(rand(10000000, 20000000)) . '.jpg';
            move_uploaded_file($_FILES['client_image']['tmp_name'], 'uploads/clients/thumbnails/' . $data['client_image']);
        }



        $data['client_name'] = ucwords($this->input->post('client_name'));
        $data['client_description'] = $this->input->post('client_description');
        $data['status'] = 1;
        $data['create_by'] = $this->session->userdata('id_user');
        $data['create_date'] = date('Y-m-d H:i:s');
        $this->db->insert('clients', $data);

        $this->session->set_flashdata('success', 'Successfuly add new client');
    }
    public function add_clients_header()
    {

        $data['desc_client'] = $this->input->post('desc_client');
        $data['status'] = 1;
        $data['create_by'] = $this->session->userdata('id_user');
        $data['create_date'] = date('Y-m-d H:i:s');
        $this->db->insert('client_head', $data);

        $this->session->set_flashdata('success', 'Successfuly add new client header');
    }

    public function add_partners()
    {

        // path image adding thumbnails
        if (!file_exists('uploads/partner/thumbnails')) {
            mkdir('uploads/partner/thumbnails', 0777, true);
        }

        if ($_FILES['image_partner']['name'] == "") {
            $data['image_partner'] = 'image-partner.png';
        } else {
            $data['image_partner'] = md5(rand(10000000, 20000000)) . '.jpg';
            move_uploaded_file($_FILES['image_partner']['tmp_name'], 'uploads/partner/thumbnails/' . $data['image_partner']);
        }

        $data['partner_name'] = ucwords($this->input->post('partner_name'));
        $data['status'] = 1;
        $data['create_by'] = $this->session->userdata('id_user');
        $data['create_date'] = date('Y-m-d H:i:s');
        $this->db->insert('partners', $data);

        $this->session->set_flashdata('success', 'Successfuly add new partners');
    }

    public function add_role()
    {

        $data['department_id'] = $this->input->post('department_id');
        $data['role_parent'] = $this->input->post('role_parent');
        $data['role'] = ucwords($this->input->post('role'));
        $data['created_by'] = $this->session->userdata('email');

        $this->db->insert('user_role', $data);

        $this->session->set_flashdata('success', 'Successfuly add new role');
    }
    public function add_social()
    {

        $data['social_name'] = ucwords($this->input->post('social_name'));
        $data['url'] = $this->input->post('url');
        $data['status'] = 1;
        $data['create_by'] = $this->session->userdata('id_user');
        $data['create_date'] = date('Y-m-d H:i:s');
        $this->db->insert('social_information', $data);

        $this->session->set_flashdata('success', 'Successfuly add new social media');
    }

    public function add_system()
    {

        // path image adding thumbnails
        if (!file_exists('uploads/partner/thumbnails')) {
            mkdir('uploads/partner/thumbnails', 0777, true);
        }

        if ($_FILES['image_partner']['name'] == "") {
            $data['image_partner'] = 'image-partner.png';
        } else {
            $data['image_partner'] = md5(rand(10000000, 20000000)) . '.jpg';
            move_uploaded_file($_FILES['image_partner']['tmp_name'], 'uploads/partner/thumbnails/' . $data['image_partner']);
        }

        $data['partner_name'] = ucwords($this->input->post('partner_name'));
        $data['status'] = 1;
        $data['create_by'] = $this->session->userdata('id_user');
        $data['create_date'] = date('Y-m-d H:i:s');
        $this->db->insert('partners', $data);

        $this->session->set_flashdata('success', 'Successfuly add new partners');
    }

    public function add_team()
    {

        // path image adding thumbnails
        if (!file_exists('uploads/team')) {
            mkdir('uploads/team', 0777, true);
        }

        if ($_FILES['photo']['name'] == "") {
            $data['photo'] = 'image-logo.png';
        } else {
            $data['photo'] = md5(rand(10000000, 20000000)) . '.jpg';
            move_uploaded_file($_FILES['photo']['tmp_name'], 'uploads/team/' . $data['photo']);
        }

        $data['name'] = $this->input->post('name');
        $data['social_link'] = $this->input->post('social_link');
        $data['create_by'] = $this->session->userdata('id_user');
        $data['create_date'] = date('Y-m-d H:i:s');
        $this->db->insert('team', $data);

        $this->session->set_flashdata('success', 'Successfuly add new team');
    }
    public function add_branch()
    {

        $data['branch_code'] = $this->input->post('branch_code');
        $data['branch_name'] = ucwords($this->input->post('branch_name'));
        $data['branch_location'] = $this->input->post('branch_location');
        $data['branch_pic'] = $this->input->post('branch_pic');
        $data['branch_phone'] = $this->input->post('branch_phone');
        $data['branch_email'] = $this->input->post('branch_email');
        $data['status'] = $this->input->post('status');
        $data['created_by'] = $this->session->userdata('email');
        $data['created_at'] = date('Y-m-d H:i:s');
        $this->db->insert('branch', $data);

        $this->session->set_flashdata('success', 'Successfuly add new branch');
    }
    public function add_work_unit()
    {

        $data['unit_code'] = $this->input->post('unit_code');
        $data['branch_id'] = $this->input->post('branch_id');
        $data['unit_name'] = ucwords($this->input->post('unit_name'));
        $data['status'] = strtolower($this->input->post('status'));
        $data['created_by'] = $this->session->userdata('email');
        $data['created_at'] = date('Y-m-d H:i:s');
        $this->db->insert('work_unit', $data);

        $this->session->set_flashdata('success', 'Successfuly add new department');
    }
}
