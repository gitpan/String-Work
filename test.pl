#!/usr/bin/perl
use String::Work;

my $string = String::Work->new();
	 
#Transfer into the upper register
my $result = $string->upper('upper');
print "$result\n";
	       
# Transfer into the lower register
my $result = $string->lower('LOWER');
print "$result\n";
		     
# To clean the first bleaching symbols
my $result = $string->clean_first('   CLEAN');
print "$result\n";
			   
# To clean the last bleaching symbols
my $result = $string->clean_last('CLEAN    ');
print "$result\n";


# Cleaning bleaching symbols in the beginning and end of the line
my $result = $string->clean_all('   CLEAN    ');
print "$result\n";