use strict;
use warnings;
use ExtUtils::MakeMaker 6.63;
use 5.010000;


my %WriteMakefileArgs = (
  "NAME"          => "Perl::Critic::Policy::Subroutines::ProhibitAmbiguousFunctionCalls",
  "VERSION_FROM"  => 'lib/Perl/Critic/Policy/Subroutines/ProhibitAmbiguousFunctionCalls.pm',
  "AUTHOR"        => "binary.com <cpan\@binary.com>",
  "ABSTRACT"      => "A Perl::Critic policy to check for ambiguous function calls",
  "LICENSE"       => "perl",
  "NORECURS"      => 1,
  "PREREQ_PM"     => {
    "Perl::Critic"         => 0,
    "Perl::Critic::Utils"  => 0,
    "Perl::Critic::Policy" => 0,
    "Digest::MD5"          => 0,
  },
  "TEST_REQUIRES" => {
    "Test::More"          => "0.98",
    "Test::Deep"          => 0,
    "Perl::Critic"        => 0,
  },
);

WriteMakefile(%WriteMakefileArgs);
