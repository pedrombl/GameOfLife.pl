BEGIN {push @INC, '/Users/pleal/Sandbox/perl/dojo'}
use strict;
use warnings;
use GameOfLife;

use Test::More tests => 3;

my @position = GameOfLife::getAxis("0,2");
my @expected = (0,2);
ok(eq_array(\@position, \@expected), "should return the x and y positions, expected @expected actual: @position");

my %board = (
  "0,0" => 0, "0,1" => 0, "0,2" => 0,
  "1,0" => 0, "1,1" => 1, "1,2" => 0,
  "2,0" => 0, "2,1" => 0, "2,2" => 0
);

#my %actualBoard = GameOfLife::nextRound(%board);

#ok($actualBoard{"1,1"} == 0, "should die if there is no neighbors. Value is " . $actualBoard{"1,1"});

#ok(GameOfLife::aliveNeighbors("0,2", %board) == 1);

my @neighborsPosition = GameOfLife::neighborsPosition("1,1");
my @expectedPositions = ("0,0", "0,1", "0,2", "1,0", "1,2", "2,0", "2,1", "2,2");
ok(eq_array(\@neighborsPosition, \@expectedPositions), "should return all neighbors. Expected: @expectedPositions; Actual: @neighborsPosition");


my %board = (
  "0,0" => 1, "0,1" => 1, "0,2" => 0,
  "1,0" => 1, "1,1" => 0, "1,2" => 0,
  "2,0" => 0, "2,1" => 0, "2,2" => 0
);

my %actualBoard = GameOfLife::nextRound(%board);

ok($actualBoard{"0,0"} == 1, "should live if there is 2 live neighbors. Value is " . $actualBoard{"0,0"});
