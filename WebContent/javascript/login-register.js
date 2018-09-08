function showRegisterForm(){
    $('.loginBox').fadeOut('fast',function(){
        $('.registerBox').fadeIn('fast');
        $('.login-footer').fadeOut('fast',function(){
            $('.register-footer').fadeIn('fast');
        });
        $('.modal-title').html('Register with');
    }); 
    $('.error').removeClass('alert alert-danger').html('');
       
}
function showLoginForm(){
    $('#loginModal .registerBox').fadeOut('fast',function(){
        $('.loginBox').fadeIn('fast');
        $('.register-footer').fadeOut('fast',function(){
            $('.login-footer').fadeIn('fast');    
        });
        
        $('.modal-title').html('Login with');
    });       
     $('.error').removeClass('alert alert-danger').html(''); 
}
function showforgotpasswordForm(){
alert('hi this is forgotpassword function');
    $('.loginBox').fadeOut('fast',function(){
        $('.forgotpasswordBox').fadeIn('fast');
        $('.login-footer').fadeOut('fast',function(){
            $('.forgotpassword-footer').fadeIn('fast');
        });
        $('.modal-title').html('Reset Your Password');
    }); 
    $('.error').removeClass('alert alert-danger').html('');
       
}

function showRegister(){
    $('#loginModal .forgotpasswordBox').fadeOut('fast',function(){
        $('.registerBox').fadeIn('fast');
        $('.forgotpassword-footer').fadeOut('fast',function(){
            $('.register-footer').fadeIn('fast');    
        });
        
        $('.modal-title').html('Login with');
    });       
     $('.error').removeClass('alert alert-danger').html(''); 
}

function openLoginModal(){
    showLoginForm();
    setTimeout(function(){
        $('#loginModal').modal('show');    
    }, 230);
    
}
function openRegisterModal(){
    showRegisterForm();
    setTimeout(function(){
        $('#loginModal').modal('show');    
    }, 230);
    
}

function openForgotpasswordModel(){
    showforgotpasswordForm();
    setTimeout(function(){
        $('#loginModal').modal('show');    
    }, 230);
    
}


function loginAjax(){
    /*   Remove this comments when moving to server
    $.post( "/login", function( data ) {
            if(data == 1){
                window.location.replace("/home");            
            } else {
                 shakeModal(); 
            }
        });
    */

/*   Simulate error message from the server   */
     shakeModal();
}

function shakeModal(){
    $('#loginModal .modal-dialog').addClass('shake');
             $('.error').addClass('alert alert-danger').html("Invalid email/password combination");
             $('input[type="password"]').val('');
             setTimeout( function(){ 
                $('#loginModal .modal-dialog').removeClass('shake'); 
    }, 1000 ); 
}

   