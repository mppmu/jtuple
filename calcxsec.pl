#!/usr/bin/perl -w
use strict;

################
# Main program #
################

sub main() {

  my $file= $ARGV[0];
  my $as= 0.0;
  if( $file=~ /14\.0/ ) {
    $as= 0.170;
  }
  elsif( $file=~ /22\.0/ ) {
    $as= 0.151;
  }
  elsif( $file=~ /34\.6/ ) {
    $as= 0.143;
  }
  elsif( $file=~ /35\.0/ ) {
    $as= 0.143;
  }
  elsif( $file=~ /38\.3/ ) {
    $as= 0.140;
  }
  elsif( $file=~ /43\.8/ ) {
    $as= 0.131;
  }
  print "Using alpha_S= $as\n";

  @ARGV = map { /\.(gz|Z)$/ ? "gzip -dc < $_ |" : $_ } @ARGV;

  my @xsec;
  my @xsece;
  my $nfile= 0;

  # Read records and extract results:
  while( <> ) {
    my @tokens= split;
    if( /^\s*\d*\.\d*\s*\d*\.\d*$/ ) {
      $xsec[$nfile]= $tokens[0];
      $xsece[$nfile]= $tokens[1];
      $nfile++;
    }
  }

  my $sigt= 0;
  my $sumw= 0;
  for( my $i= 0; $i < $nfile; $i++ ) {
    print "$xsec[$i] +/- $xsece[$i]\n";
    my $weight= 1.0/$xsece[$i]**2;
    $sigt+= $xsec[$i]*$weight;
    $sumw+= $weight;
  }
  $sigt/= $sumw;
  my $sigte= sqrt(1.0/$sumw);

  print "Total cross section: $sigt +/- $sigte\n";

  my $sigh= $sigt/(1.0+9.0/((1.0+$as/3.14159)*11.0));
  my $sumq2= ( 3*(1/3)**2 + 2*(2/3)**2 );
  my $sigb= $sigh * ( (1/3)**2 )/$sumq2;
  my $sigl= $sigh * ( 2*(2/3)**2 + 2*(1/3)**2 )/$sumq2;

  print "had., udsc and b cross sections: $sigh, $sigl, $sigb\n";

}

# Run main routine:
exit main();
