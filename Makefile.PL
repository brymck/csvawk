use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'CSVAWK',
    VERSION_FROM => 'lib/CSVAWK.pm',
    ABSTRACT     => 'csvawk',
    LICENSE      => 'MIT',
    AUTHOR       => 'Bryan McKelvey <bryan.mckelvey@gmail.com>',
    EXE_FILES    => ['bin/csvawk'],
    dist         => {
        COMPRESS => 'gzip',
        SUFFIX   => 'gz',
    },
);
