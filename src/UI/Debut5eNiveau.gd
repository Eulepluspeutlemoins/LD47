extends Control

var ordrePersos = ["Narrator", "Flynn", "Gaston", "Flynn", "Gaston", "Flynn", "???", "Flynn", "Gaston", "Space parrot", \
"Flynn", "Gaston", "Flynn", "Gaston", "Flynn", "Gaston", "Space parrot", "Flynn", "Space parrot", "Flynn"]
var ordrePhrase = ["A few weaks later, Flynn is trying really hard to get as much money as he can. However, he always seems to lose it somehow... A few days ago, Gaston contacted him and talked about a way to get 6 000 000 space dollars really quickly.", \
"Are you sure we had to come here ?", \
"Are you sure you want your money ? I asked if you were ready to do anything.", \
"Yeah, but this place kind of revives a bad memory...", \
"Who cares, all we have to care about is that the package is supposed to be here.", \
"Fine, fine...", \
"BWAAAAAAAAAK !", \
"WHAT WAS THAT ?", \
"The package !", \
"BWAK ! I'll tearrrr you apparrrrt !", \
"A space parrot ?", \
"The client wants him delivered to the Bagu system alive.", \
"But... That system is the one that is really hard to reack ?", \
"Yes but i thought you were the best space trucker ?", \
"Oh damn...", \
"Think about the money, we're in big trouble if we don't do it !", \
"The trrrreasurrrre is nearrrr ! BWAK !", \
"Does he stop speaking sometimes ?", \
"Bilge barrrrel !", \
"Alright... Let's get back to the ship real quick and let's get going as fast as we can"]
var ordreSprite = ["Narrator", "pitchoune", "gaston", "pitchoune_triste", "gaston", "pitchoune", "Narrator", "pitchoune_bourre_pas_content", \
"gaston", "Narrator", "pitchoune", "gaston", "pitchoune", "gaston", "pitchoune_depite", "gaston", "Narrator", \
"pitchoune_enerve", "Narrator", "pitchoune_enerve"]

func _ready():
	$ZoneDialog.init(ordrePhrase, ordrePersos, ordreSprite)
