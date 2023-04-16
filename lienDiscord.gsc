#include maps/mp/_utility;
#include common_scripts/utility;
#include maps/mp/gametypes_zm/_hud_util;
#include maps/mp/zombies/_zm;
#include maps/mp/zombies/_zm_utility;
#include maps/mp/zombies/_zm_weapons;
#include maps/mp/zombies/_zm_stats;
#include maps/mp/gametypes_zm/_hud_message;
#include maps/mp/zombies/_zm_powerups;
#include maps/mp/zombies/_zm_perks;
#include maps/mp/zombies/_zm_audio;
#include maps/mp/zombies/_zm_score;

init() {
  level thread onplayerconnect();
  level thread lienDiscord();
}

onplayerconnect() {
  for (;;) {
    level waittill("connecting", player);
  }
}

lienDiscord() {
  self endon("disconnect");
    level.discordTexte = createServerFontString("hudsmall" , 2.0);
    level.discordTexte setPoint("TOP", "RIGHT", -21, -242);
    level.discordTexte.alpha = 1;
    level.discordTexte.glowAlpha = 0.75;
    level.discordTexte.glowcolor = (1, 0, 0);
    level.discordTexte setText("discord.gg/XZprVGrRyD");
}