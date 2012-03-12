use Net::Bullfinch;

my $client = Net::Bullfinch->new(host => '172.16.49.130');
my $req = { statement => 'some-query' };
my $items = $client->send(
    request_queue => 'test-net-kestrel',
    request => $req,
    response_queue_suffix => 'foobar'
);
foreach my $item (@{ $items }) {
    # whatever
}
