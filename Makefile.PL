use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'CSVAWK',
    VERSION_FROM => 'lib/CSVAWK.pm',
    ABSTRACT     => 'csvawk',
    LICENSE      => 'MIT',
    AUTHOR       => 'Bryan McKelvey <bryan.mckelvey@gmail.com>',
    EXE_FILES    => ['bin/csvawk'],
    PREREQ_PM    => {
        'Readonly'     => 0,
        'Text::CSV_XS' => 0,
    },
    dist         => {
        COMPRESS => 'gzip',
        SUFFIX   => 'gz',
    },
);
