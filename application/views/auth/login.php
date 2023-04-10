<style>
    body {
        background: url(<?php echo site_url('assets/images/wr1.jpg'); ?>);
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;
        background-size: cover;

    }
</style>

<body>

    <div class="container " style="margin: auto;">
        <div class="row justify-content-center mt-3">

            <div class="col-lg-4 mt-5">
                <div class="card shadow-lg border-0 rounded-lg mt-5">
                    <div class="card-header bg-gradient-info border border-white">
                        <h6 class="text-white text-center  my-0">
                            <!-- <img width="30" class="mb-1" src="<?php echo site_url('assets/images/lg.png'); ?>"> -->
                            CONTENT MANAGEMENT SYSTEM
                        </h6>
                    </div>
                    <form method="post" action="<?php echo base_url('auth'); ?>">
                        <div class="card-body ">
                            <div class="form-group text-center">
                                <label><b class="font-weight-bold text-uppercase text-primary"><i class="fab fa-connectdevelop"></i> INASEA <i class="fab fa-connectdevelop"></i></b></label>
                            </div>
                            <!-- toast -->
                            <div class="sticky-top mt-2mr-0" style="position: relevan; top: 0;margin:auto ">
                                <?php if ($this->session->flashdata('success_login')) : ?>
                                    <div class="toast shadow m-0" role="alert" aria-live="assertive" aria-atomic="true">
                                        <div class="toast-header  bg-success">
                                            <i class="fas fa-bell text-white mr-2 " style="font-size:18px;"></i>
                                            <strong class="mr-auto text-white">Notification</strong>
                                            <small class="text-muted"></small>
                                            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="toast-body bg-light font-weight-bold">
                                            <?php echo $this->session->flashdata('success_login'); ?>
                                        </div>
                                    </div>
                                <?php endif; ?>
                                <?php if ($this->session->flashdata('error_login')) : ?>
                                    <div class="toast shadow m-0 " role="alert" aria-live="assertive" aria-atomic="true">
                                        <div class="toast-header  bg-danger">
                                            <i class="fas fa-bell text-white mr-2 " style="font-size:18px;"></i>
                                            <strong class="mr-auto text-white">Oops!</strong>
                                            <small class="text-muted"></small>
                                            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="toast-body bg-light font-weight-bold">
                                            <?php echo $this->session->flashdata('error_login'); ?>
                                        </div>
                                    </div>
                                <?php endif; ?>
                            </div>
                            <!-- end toast -->
                            <div class="form-group ">
                                <div class="input-group mb-3 mt-4">
                                    <div class="input-group-prepend ">
                                        <span class="input-group-text " id="inputGroupPrepend1 basic-addon1"><i class="fas fa-envelope"></i></span>
                                    </div>
                                    <input type="text" id="inputEmailAddress" class="form-control" name="email" placeholder="Enter email address" aria-describedby="inputGroupPrepend1" required>
                                    <?php echo form_error('email', '<small class="text-danger pl-2 mt-0"><b>', '</b></small>'); ?>
                                </div>
                            </div>
                            <div class="form-group mb-4">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend ">
                                        <span class="input-group-text " id="inputGroupPrepend2 basic-addon1"><i class="fas fa-lock"></i></span>
                                    </div>
                                    <input class="form-control" id="inputPassword" type="password" name="password" placeholder="Enter password" aria-describedby="inputGroupPrepend2" required />
                                    <?php echo form_error('password', '<small class="text-danger pl-2"><b>', '</b></small>'); ?>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <div class="small">
                                <button type="submit" class="btn btn-primary"><i class="fas fa-fw fa-sign-in-alt"></i> Login</button>
                            </div>
                            <div class="small mt-2">
                                <a class="text-danger font-weight-bold" href="<?php echo base_url('auth/register'); ?>">Need an account? Sign up!</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</body>