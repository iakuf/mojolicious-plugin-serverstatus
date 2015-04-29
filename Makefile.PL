use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME          => 'Mojolicious::Plugin::ServerStatus',
  AUTHOR        => 'fu kai <iakuf@163.com>',
  EXE_FILES     => [],
  PL_FILES      => {},
  LICENSE       => 'perl',
  DISTNAME      => 'Mojolicious-Plugin-ServerStatus',
  ABSTRACT_FROM => 'lib/Mojolicious/Plugin/ServerStatus.pm',
  VERSION_FROM  => 'lib/Mojolicious/Plugin/ServerStatus.pm',
  PREREQ_PM     => {
    'Mojolicious'          => '4.90',
    'JSON'                 => '2.53',
    'Net::CIDR::Lite'      => 0,
    'Parallel::Scoreboard' => '0.03',
    'Try::Tiny'            => '0.09',
  },
  BUILD_REQUIRES => {
    'Test::More' => 0.90,
  },
  META_MERGE => {
    resources => {
      license    => 'http://dev.perl.org/licenses/',
      repository => 'https://github.com/iakuf/mojolicious-plugin-serverstatus',
      bugtracker => 'https://github.com/iakuf/mojolicious-plugin-serverstatus/issues',
    },
  },
  dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
  clean => { FILES => 'Mojolicious-Plugin-ServerStatus-*' },
  #test => {
  #  TESTS => 't/*.t',
  #},
);
