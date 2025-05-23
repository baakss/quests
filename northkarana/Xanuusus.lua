-- earthcaller - ranger epic
-- naturewalker's scimitar - druid epic

function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Greetings, small one! I am Xanuusus of the Stormreapers. You are welcome to rest beneath my mighty branches.");
	end
end

function event_trade(e)
	local item_lib = require("items");
	
	if(e.other:GetLevel() >= 46 and item_lib.check_turn_in(e.self, e.trade, {item1 = 20483,item2 = 20484})) then
		e.self:Emote("waves his hands over the gem of corruption and a wave of warm energy passes through the area. With care for such a huge creature, he melds the gem into the sword and seems to glow all over as he channels energy into the weapon. 'Thus is the link of hate broken between Innoruuk and the spirit of earth. Through your will has balance returned. Your deeds, your work for the good of all, will be remembered by anyone who walks beneath the canopy of a forest or roams the plains. Continue your vigil over nature's balance.'");
		e.other:QuestReward(e.self,0,0,0,0,20488,2500000); -- earthcaller
	elseif(e.other:GetLevel() >= 46 and item_lib.check_turn_in(e.self, e.trade, {item1 = 20699,item2 = 20697,item3 = 20698,item4 = 20440})) then
		e.self:Emote("pushes the spirits into the air, making them dance around the scimitar. With a wave of his hand they melt into the blade and hilt of the weapon. 'With this the spirits of the lands are now free from the corruption of the dark gods.  Through your strength and dedication was this possible, " .. e.other:GetCleanName() .. ".  May the foul poison that once poured into the earth itself never do so again. Take this weapon that you may continue to watch over the balance of nature. Go now, with the gods' blessings.'");
		e.other:QuestReward(e.self,0,0,0,0,20490,2500000); -- naturewalker's scimitar
	elseif(e.other:GetFactionValue(e.self) >= 100 and item_lib.check_turn_in(e.self, e.trade, {item1 = 13411})) then
		e.self:Say("Heh heh! Excellent, small one!  My roots have been longing for some fresh jumjum juice!  Thank you!  Take this for your trouble.  Be sure to thank the Tagglefoots for me.");
		e.other:QuestReward(e.self,0,1,0,0,eq.ChooseRandom(13977,13100,13083),500); -- carrot, fishing pole, pine needles
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

-- EOF zone: northkarana ID: 13061 NPC: Xanuusus 

