use 5.006;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Acme::APHILIPP::Utils',
    license             => 'artistic_2',
    dist_author         => q{André Philipp <aphilipp@cpan.org>},
    dist_version_from   => 'lib/Acme/APHILIPP/Utils.pm',
    release_status      => 'stable',
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        #'ABC'              => 1.6,
        #'Foo::Bar::Module' => 5.0401,
    },
    add_to_cleanup     => [ 'Acme-APHILIPP-Utils-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
