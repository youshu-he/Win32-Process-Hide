#Hide Other Process(es) 
#XXX !! EXPERIMENTAL !! XXX
#Module "Win32::Monitoring::DLLInject" is required
require Win32::Monitoring::DLLInject;
die "usage: $0 <full path pointing to Hide_Others.dll>\n" unless @ARGV;
die "Hide_Others.dll seems not exist\n" unless -e "$ARGV[0]";
do{
	print 'pid> ';
	chomp(my $pid = <STDIN>);
	my $handle = new Win32::Monitoring::DLLInject("$pid", "$ARGV[0]");
}while(1);
