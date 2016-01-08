package GameOfLife;

sub nextRound{
  my %board = @_;
  
  return %board;
};

sub aliveNeighbors{
  my ($position, %board) = @_;
  #foreach {} ((1,0), (0,1), (-1, 0), )
};

sub neighborsPosition {
  my ($position) = @_;
  my @axis = getAxis($position);
  my @mapper = ([1,0], [0,1], [-1,0], [0,-1], [-1,-1], [1,-1], [-1,1], [1,1]);
  
  foreach $i (0..7) { 
  CORE::say $mapper[$i];
  }

};

sub getAxis {
 my ($position) = @_;
 my @result = split(',', $position);
 return map { toInt($_) }  @result;
};

sub toInt {
  my ($stringValue) = @_;
  return $stringValue + 0;
};

return 1;
