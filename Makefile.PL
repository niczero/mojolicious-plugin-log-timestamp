use 5.010_001;
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Mojolicious::Plugin::Log::Timestamp',
  VERSION_FROM => 'lib/Mojolicious/Plugin/Log/Timestamp.pm',
  ABSTRACT     => 'Plugin for customised log timestamps',
  AUTHOR       => 'Nic Sandfield <niczero@cpan.org>',
  LICENSE      => 'artistic_2',
  META_MERGE   => {
    requires  => {perl => 5.010001},
    resources => {
      homepage   => 'http://niczero.github.com/mojolicious-plugin-log-timestamp',
      license    => 'http://www.opensource.org/licenses/artistic-license-2.0',
      repository => 'http://github.com/niczero/mojolicious-plugin-log-timestamp',
      bugtracker => 'http://github.com/niczero/mojolicious-plugin-log-timestamp/issues'
    },
    no_index => {directory => [qw(test)]}
  },
  BUILD_REQUIRES => {'Test::More' => 0},
  CONFIGURE_REQUIRES => {'ExtUtils::MakeMaker' => '6.30'},
  PREREQ_PM => {Mojolicious => 3.33, Mojar => 1.062},
  EXE_FILES => [],
  test => {TESTS => 'test/*.t'}
);
