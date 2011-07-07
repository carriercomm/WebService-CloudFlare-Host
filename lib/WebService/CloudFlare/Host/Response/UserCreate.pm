package WebService::CloudFlare::Host::Response::UserCreate;
use Moose;
with 'WebService::CloudFlare::Host::Role::Response';

sub res_map {
    return (
        'result'        => 'result',
        'code'          => 'err_code',
        'msg'           => 'msg',
        'action'        => 'request:act',
        'email'         => 'response:cloudflare_email',
        'user_key'      => 'response:user_key',
        'unique_id'     => 'response:unique_id',
        'username'      => 'response:cloudflare_username',
    );
}


has [qw/ result action /]    
    => ( is => 'rw', isa => 'Str', required => 1 );

has [qw/ msg email user_key username unique_id code /]
    => ( is => 'rw', isa => 'Str', required => 0 );

1;
