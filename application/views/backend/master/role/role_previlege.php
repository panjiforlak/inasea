<div class="col-lg-12">
    <div class="row">
        <!-- Recent Sales -->
        <div class="col-12">
            <div class="card recent-sales overflow-auto">

                <form action="<?php echo site_url('master/previlege/add/' . $get_role['id_role']); ?>" method="POST">
                    <div class="card-body">
                        <h5 class="card-title ">Role :<span class="text-primary font-weight-bold"> <?php echo $get_role['role']; ?></span> </h5>
                        <table class="table table-sm table-bordered table-striped" id="examples">
                            <thead class="table-warning">
                                <tr>
                                    <th class="text-center">Menu</th>
                                    <th class="text-center">Akses</th>
                                    <th class="text-center">View</th>
                                    <th class="text-center">Create</th>
                                    <th class="text-center">Edit</th>
                                    <th class="text-center">Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                <input type="hidden" name="role_id" value="<?php echo $get_role['id_role']; ?>">
                                <?php $no = 1;
                                foreach ($get_menu->result_array() as $gmen) :

                                    $gra = $this->db->get_where('user_access_menu', array('menu_id' => $gmen['id_menu'], 'role_id' => $get_role['id_role']))->row_array();
                                ?>
                                    <!-- menu name -->
                                    <?php if ($gmen['menu_parent'] == 0) : ?>

                                        <?php if (empty($gmen['url'])) : ?>
                                            <!-- jika menu url nya kosong -->
                                            <tr>
                                                <td class="bg-light">
                                                    <?php echo "<b>" . $no++ . ". <i class='" . $gmen['icon'] . " ml-3'></i> " . ucwords($gmen['menu']) . "</b>"; ?>
                                                </td>
                                                <td class="text-center bg-light">
                                                    <div class="form-check">
                                                        <input type="checkbox" name="akses_<?php echo $gmen['id_menu']; ?>" value="1" <?php echo (!empty($gra['akses'])) ? "checked" : ""; ?> />
                                                    </div>
                                                </td>
                                                <td class="text-center bg-light">
                                                    <div class="form-check">
                                                        <input type="checkbox" name="view_<?php echo $gmen['id_menu']; ?>" value="1" <?php echo (!empty($gra['view'])) ? "checked" : ""; ?> />
                                                    </div>
                                                </td>
                                                <td colspan="3" class="bg-light"></td>
                                            </tr>
                                        <?php else : ?>
                                            <!-- jika urlnya ada -->
                                            <tr>
                                                <td class="bg-light">
                                                    <?php echo "<b>" . $no++ . ". <i class='" . $gmen['icon'] . " ml-3'></i> " . ucwords($gmen['menu']) . "</b>"; ?>
                                                </td>
                                                <!-- akses -->
                                                <td class="text-center bg-light">
                                                    <div class="form-check">
                                                        <input type="checkbox" name="akses_<?php echo $gmen['id_menu']; ?>" value="1" <?php echo (!empty($gra['akses'])) ? "checked" : ""; ?> />
                                                    </div>
                                                </td>
                                                <!-- view -->
                                                <td class="text-center bg-light">
                                                    <div class="form-check">
                                                        <input type="checkbox" name="view_<?php echo $gmen['id_menu']; ?>" value="1" <?php echo (!empty($gra['view'])) ? "checked" : ""; ?> />
                                                    </div>
                                                </td>
                                                <!-- create -->
                                                <td class="text-center bg-light">
                                                    <div class="form-check">
                                                        <input type="checkbox" name="create_<?php echo $gmen['id_menu']; ?>" value="1" <?php echo (!empty($gra['create'])) ? "checked" : ""; ?> />
                                                    </div>
                                                </td>
                                                <!-- EDIT -->
                                                <td class="text-center bg-light">
                                                    <div class="form-check">
                                                        <input type="checkbox" name="edit_<?php echo $gmen['id_menu']; ?>" value="1" <?php echo (!empty($gra['edit'])) ? "checked" : ""; ?> />
                                                    </div>
                                                </td>
                                                <!-- DELETE -->
                                                <td class="text-center bg-light">
                                                    <div class="form-check">
                                                        <input type="checkbox" name="delete_<?php echo $gmen['id_menu']; ?>" value="1" <?php echo (!empty($gra['delete'])) ? "checked" : ""; ?> />
                                                    </div>
                                                </td>
                                            </tr>
                                        <?php endif; ?>

                                        <?php
                                        $gsub = $this->db->get_where('user_menu', array('menu_parent' => $gmen['id_menu']))->result_array();
                                        foreach ($gsub as $gs) :
                                            $gr = $this->db->get_where('user_access_menu', array('menu_id' => $gs['id_menu'], 'role_id' => $get_role['id_role']))->row_array();
                                        ?>
                                            <tr>
                                                <td class="">
                                                    <?php echo '<i class="ml-5" style="margin-left:25px;">-' . ucwords($gs['menu']) . '</i>'; ?>
                                                </td>
                                                <!-- akses -->
                                                <td class="text-center ">
                                                    <div class="form-check">
                                                        <input type="checkbox" name="akses_<?php echo $gs['id_menu']; ?>" value="1" <?php echo (!empty($gr['akses'])) ? "checked" : ""; ?> />
                                                    </div>
                                                </td>
                                                <!-- view -->
                                                <td class="text-center ">
                                                    <div class="form-check">
                                                        <input type="checkbox" name="view_<?php echo $gs['id_menu']; ?>" value="1" <?php echo (!empty($gr['view'])) ? "checked" : ""; ?> />
                                                    </div>
                                                </td>
                                                <!-- create -->
                                                <td class="text-center ">
                                                    <div class="form-check">
                                                        <input type="checkbox" name="create_<?php echo $gs['id_menu']; ?>" value="1" <?php echo (!empty($gr['create'])) ? "checked" : ""; ?> />
                                                    </div>
                                                </td>
                                                <!-- EDIT -->
                                                <td class="text-center ">
                                                    <div class="form-check">
                                                        <input type="checkbox" name="edit_<?php echo $gs['id_menu']; ?>" value="1" <?php echo (!empty($gr['edit'])) ? "checked" : ""; ?> />
                                                    </div>
                                                </td>
                                                <!-- DELETE -->
                                                <td class="text-center ">
                                                    <div class="form-check">
                                                        <input type="checkbox" name="delete_<?php echo $gs['id_menu']; ?>" value="1" <?php echo (!empty($gr['delete'])) ? "checked" : ""; ?> />
                                                    </div>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    <?php endif; ?>
                                    <input type="hidden" name="menu[]" value="<?php echo $gmen['id_menu']; ?>">
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                    <center class="card-footer">
                        <!-- <button type="button" class="btn btn-sm btn-danger" aria-label="Close" data-bs-dismiss="modal"><i class="fas fa-fw fa-times"></i> Close</button> -->
                        <button type="submit" class="btn btn-sm btn-primary"><i class="bi bi-save"></i> Save</button>
                    </center>
                </form>
            </div>
        </div><!-- End Recent Sales -->

    </div>
</div><!-- End Left side columns -->