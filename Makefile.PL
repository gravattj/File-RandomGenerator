use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
	NAME          => 'File::RandomGenerator',
	AUTHOR        => q{John Gravatt <gravattj@cpan.org>},
	VERSION_FROM  => 'lib/File/RandomGenerator.pm',
	ABSTRACT_FROM => 'lib/File/RandomGenerator.pm',
	( $ExtUtils::MakeMaker::VERSION >= 6.3002
	   ? ( 'LICENSE' => 'perl' )
	   : () ),
	PL_FILES  => {},
	PREREQ_PM => {
				   'Moose'                => 0,
				   'namespace::autoclean' => 0,
				   'Modern::Perl'         => 0,
				   'Carp::Always'         => 0,
				   'Smart::Args'          => 0,
	},
	BUILD_REQUIRES => {
						'Test::More'          => 0,
						'Test::CheckManifest' => 1.28,
						'Test::Prereq'        => 0
	},
	EXE_FILES => [ 'bin/gen_rand_files.pl' ],
	dist      => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
	clean => { FILES => 'MySQL-Util-*' },
);
