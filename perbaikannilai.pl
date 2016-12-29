use strict;
use warnings;
use File::Fetch;
my $url = 'http://api.worldbank.org/v2/en/indicator/SI.POV.GINI?downloadformat=csv';
print $url."\n";
my $ff = File::Fetch->new(uri => $url);
my $file = $ff->fetch() or die $ff->error;
use Scalar::Util qw(looks_like_number);

rename "SI.POV.GINI", "download.zip";

my $zipfile = "download.zip";
open (ZIPFILES, "unzip -o $zipfile|");
while (<ZIPFILES>) {
    ## do something with the file that has been unzipped
}
close ZIPFILES;

my $file2 = "API_SI.POV.GINI_DS2_en_csv_v2.csv";
 
open(my $data, '<', $file2) or die "Could not open '$file2' $!\n";
 
print "Negara Hitung Jumlah Rata-rata maksimum minimum\n"; 
my $first=1;
while (my $line = <$data>) {
  ## chomp $line;
  ##print $line;
  my @fields = split "," , $line;
  if ($first >=6)
  {
	  my $total=0;
	  print $fields[1]. " ";
	  my $jumlah=0;
	  my $maxn=-1;
	  my $minn=100000;
	  for my $i (4..60) {
		my $str = "";
		$str=$fields[$i];
		my $find = '"';
		my $replace = "";
	
		$find = quotemeta $find; # escape regex metachars if present
		$str =~ s/$find/$replace/g;
		if ($str eq "")
		{
		   
		}
		else {
		    if (looks_like_number($str))
			{
				my $num=$str*1;
				if ($num<$minn)
				{
				  $minn=$num;
				}
				if ($num>$maxn)
				{
				  $maxn=$num;
				}
				$jumlah+=($str*1);
				$total++;
			}
		    
		}
		## print $i.":".$str."\n";
	  }
	  my $rata=0;
	  if ($total>0)
	  { 
	   $rata= $jumlah/$total;
	  }
	  print $total." ";
	  print $jumlah." ";
	  print $rata." ";
	  if ($total>0)
	  {
	  	  print $maxn." ";
		  print $minn." ";
	  }
	  else {
	      print "0 0";
	  }

	  print "\n";
	  ##print "Total ".$total."\n";
	  ##print "\n\n";
	  ##print "$total \n";
  }
  $first++;  
}