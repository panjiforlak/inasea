<body class="bg-gradient-light">

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 mt-3">
                <div class="card shadow-lg border-0 rounded-lg mt-5">
                    <div class="card-header bg-gradient-primary">
                        <h4 class="text-center text-white font-weight-light my-2">REGISTER ACCOUNT</h4>
                    </div>
                    <div class="card-body">
                        <form method="post" action="<?php echo site_url('auth/register'); ?>">
                            <div class="form-row">
                                <div class="col-md">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputFullName">Full Name</label>
                                        <input class="form-control form-control-sm text-capitalize" id="inputFulltName" type="text" name="name" placeholder="Enter full name" value="<?php echo set_value('name'); ?>" />
                                        <?php echo form_error('name', '<small class="text-danger pl-2">', '</small>'); ?>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="small mb-1" for="inputEmailAddress">Email</label>
                                <input class="form-control form-control-sm" id="inputEmailAddress" type="email" name="email" aria-describedby="emailHelp" placeholder="Enter email address" value="<?php echo set_value('email'); ?>" />
                                <?php echo form_error('email', '<small class="text-danger pl-2">', '</small>'); ?>

                            </div>
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputPassword">Password</label>
                                        <input class="form-control form-control-sm" id="inputPassword1" type="password" name="password1" placeholder="Enter password" value="<?php echo set_value('password1'); ?>" />
                                        <?php echo form_error('password1', '<small class="text-danger pl-2">', '</small>'); ?>

                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="small mb-1" for="inputConfirmPassword">Confirm Password</label>
                                        <input class="form-control form-control-sm" id="inputPassword2" type="password" name="password2" placeholder="Confirm password" value="<?php echo set_value('password2'); ?>" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-row justify-content-center">
                                <div class="col-md-3">
                                    <div class="form-group mt-2 mb-0">
                                        <button type="submit" class="btn btn-success btn-block">Register</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="card-footer text-center">
                        <div class="small"><a class="text-success font-weight-bold" href="<?php echo site_url('auth'); ?>">Have an account? Go to login</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>