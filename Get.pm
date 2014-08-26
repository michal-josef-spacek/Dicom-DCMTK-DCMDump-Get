package Dicom::DCMTK::DCMDump::Get;

# Pragmas.
use strict;
use warnings;

# Modules.
use Class::Utils qw(set_params);

# Version.
our $VERSION = 0.01;

# Constructor.
sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;

	# Process parameters.
	set_params($self, @params);

	# Object.
	return $self;
}

# Get dcmdump for DICOM file.
sub get {
	my ($self, $dicom_file) = @_;
	my $dcmdump = `dcmdump $dicom_file`;
	chomp $dcmdump;
	return $dcmdump;
}

1;
