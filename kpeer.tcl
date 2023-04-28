# killpeer.tcl v0.1a by bbqnut
bind sign - * kill_peer
proc kill_peer {nick uhost hand chan reason} {
  global kpeer
  if {[regexp -nocase {connection\sreset\sby\speer} $reason]} {
    set peermsg [lindex $kpeer [rand [llength $kpeer]]]
    putquick "PRIVMSG $chan :\001ACTION $peermsg\001"
  }
}
set kpeer {
{grabs a nailgun and nails peer to the wall}
{gets a chainsaw and hacks peer apart}
{takes a steel rod and beats peer}
{grabs a flamethrower and immolates peer}
{obtains a 2x4 and smashes peer}
{grabs a shotgun and blasts peer}
{cranks up the generator and applies 50,000 volts to peer}
{takes some acid and melts peer}
{takes a big prickly cactus and slams peer on the ass}
{grabs a bazooka and vaporizes peer}
{reaches for his Desert Eagle and gives peer a few randomly placed holes}
{grabs a hacksaw and dismembers peer}
{grabs a rock and nails peer square in the face}
{puts on steel toed boots and punts peer}
{grabs peer by the ankles and tosses peer off a cliff}
{boots peer to the head}
{fires up the grinder and tosses peer in}
{throws peer in the blast furnace}
{grabs a 30lb sledge hammer and flattens peer}
{throws a shuriken in peer's eye}
}
putlog "killpeer.tcl v0.1a loaded"
