#!/usr/bin/perl -w
use strict;

################
# Main program #
################

# Read PYTHIA generated cross section from jadesim/gen logfiles.
# The cross section are for e+e- -> ffbar and must be corrected
# for the rejected lepton cross section.  The LO QCD correction
# for sigma_had is taken into account.
# Stefan Kluth, 06/2004

sub main() {

  # Use correct value of alpha_S, run from as(MZ)=0.118:
  my $file= $ARGV[0];
  my $as= 0.0;
  if( $file=~ /14\.0/ ) {
    $as= 0.1652;
  }
  elsif( $file=~ /22\.0/ ) {
    $as= 0.1506;
  }
  elsif( $file=~ /34\.6/ ) {
    $as= 0.1383;
  }
  elsif( $file=~ /35\.0/ ) {
    $as= 0.1381;
  }
  elsif( $file=~ /38\.3/ ) {
    $as= 0.1359;
  }
  elsif( $file=~ /43\.8/ ) {
    $as= 0.1328;
  }
  print "Using alpha_S= $as\n";

  # Gunzip compressed logfiles on the fly:
  @ARGV= map { /\.(gz|Z)$/ ? "gzip -dc < $_ |" : $_ } @ARGV;

  # Read records and extract results from logfiles given on command line:
  my @xsec;
  my @xsece;
  my $nfile= 0;
  while( <> ) {
    my @tokens= split;
    if( /^\s+\d+\.\d+\s+\d+\.\d+$/ ) {
      $xsec[$nfile]= $tokens[0];
      $xsece[$nfile]= $tokens[1];
      $nfile++;
    }
  }

  # Calculate average total cross section:
  my $sigt= 0;
  my $sumw= 0;
  for( my $i= 0; $i < $nfile; $i++ ) {
    print "$i $xsec[$i] +/- $xsece[$i]\n";
    my $weight= 1.0/$xsece[$i]**2;
    $sigt+= $xsec[$i]*$weight;
    $sumw+= $weight;
  }
  $sigt/= $sumw;
  my $sigte= sqrt(1.0/$sumw);
  print "Total cross section: $sigt +/- $sigte\n";

  # Calculate had., udsc and b cross section incl. LO QCD correction:
  my $sigh= $sigt/(1.0+9.0/((1.0+$as/3.14159)*11.0));
  my $sumq2= ( 3*(1/3)**2 + 2*(2/3)**2 );
  my $sigb= $sigh * ( (1/3)**2 )/$sumq2;
  my $sigl= $sigh * ( 2*(2/3)**2 + 2*(1/3)**2 )/$sumq2;
  print "had., udsc and b cross sections: $sigh, $sigl, $sigb\n";

}

# Run main routine:
exit main();
