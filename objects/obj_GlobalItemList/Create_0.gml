enum items {
	sword = 200,
	hp_potion = 0,
	mp_potion = 1,
	key = 1200
}

// 0-99 - Consumables
// 100-199 - Equipmeant Head
// 200-299 - Equipment Weapon
// 300-399 - Equipment Hands
// 400-499 - Equipment Legs
// 500-599 - Equipment Feet
// 600-699 - Equipment Necklace
// 700-799 - Equipment Offhand
// 800-899 - Equipment Body
// 900-999 - Equipment Arms
// 1000-1099 - Equipment Special
// 1100-1199 - Resources
// 1200-1299 - Keys
// 1300-1399 - skillBooks

enum itemTypes {
	consumables,
	equipment_head,
	equipment_weapon,
	equipment_hands,
	equipment_legs,
	equipment_feet,
	equipment_necklace,
	equipment_offhand,
	equipment_body,
	equipment_arms,
	equipment_special,
	resources,
	keys,
	skillBooks
}

globalvar itemInfo;
global.itemInfo = ds_map_create();

/* 
Tools:
 - Axe
 - Scythe
 - Flail
 - Shears
 - Harrow
 - Sickle
 - Haymaking Forks
 - Spade
 - Moulboard Plough
 - Wheeled Plough
 - Rake
 - Winnowing Basket
 
Weapons:
 - Swords:
	 - Broadsword
	 - Claymore
	 - Katana
	 - Longsword
	 - Rapier
	 - Sabre
	 - Shortsword
 - Blunt/Cleave:
	 - Battle Axe
	 - Club
	 - Flail
	 - Mace
	 - Quarterstaff
	 - War Hammer
	 - Bludgeon
 - Spear:
	 - Glaive
	 - Lance
	 - Pike
	 - Swordstaff
	 - War-Scythe
 - Ranged:
	 - Bow
	 - Longbow
	 - Crossbow
	 - Sling
	 - Musket
	 - Throwing Spear
	 - Shuriken
	 - Hand Cannon
	 - Chakram

Armors:
 - Full Plate Armor (Heavy Armor)
 - Breastplates (Medium Armor)
 - Reinforced Mail (Light Armor)
 - Chaimail (Very Light Armor)
 - Robe (Magic)
 - Quilted Cloth (Cloth)
 - Cuir Bouilli (Thick Cloth)
 

Seeds/Natural Edibles:
 - Fruits:
	 - Apple
	 - Orange
	 - Banana
	 - Lime
	 - Jackfruit
	 - Mango
	 - Pear
	 - Peach
	 - Grapes
	 - Cherry
	 - Cranberry
	 - Blueberry
	 - Blackberry
	 - Raspberry
	 - Strawberry
	 - Sugar Cane
	 - Pineapple
	 - Dragon Fruit
	 - Papaya
	 - Watermelon
	 - Coconut
	 - Starfruits
	 - Lychee
	 - Honeydew
	 - Cantalope
	 - Lemon
	 - Tomato
	 - Avocado
	 - Passion Fruit
	 - Apricot
	 - Date
	 - Fig
	 - Guava
	 - Grapefruit
	 - Kiwi
	 - Durian
	 - Purple Mangosteen
	 - Pomegranate
	 - Plum
 - Vegetables:
	 - Spinach
	 - Broccoli
	 - Cauliflower
	 - Onion
	 - Cucumber
	 - Cabbage
	 - Lettuce
	 - Kale
	 - Eggplant
	 - Bitter Melon
	 - Green Bean
	 - Chive
	 - Snow Pea
	 - Asparagus
	 - Brussel Sprouts
	 - Bean Sprouts
	 - Potato
	 - Yam
	 - Taro
	 - Zucchini
	 - Squash
	 - Pumpkin
	 - Winter Melon
	 - Carrot
	 - Radish
	 - Shallot
	 - Bell Pepper
	 - Chili Pepper
	 - Celery
	 - Scallion
	 - Corn
	 - Turnip
	 - Artichoke
	 - Okra
	 - Leek
	 - Daikon
 - Trees:
 - Flowers:
 - Herbs:
 - Mushrooms:
 - Nuts:
	 - Walnut
	 - Almond
	 - Cashew
	 - Pistachio
	 - Pecan
	 - Brazil Nut
	 - Hazelnut
	 - Pine Nut
	 - Macadamia
	 - Chestnut
	 - Peanut

Books:
 - Skill Books
 - Attribute Books
 - Strategy Books
 - Secret Books
 
Potions:
 - HP
	 - HP Potion
 - MP
	 - MP Potion
 - Dexterity 
	 - Dex Potion
 - Strength
	 - Str Potion
 - Intelligence
	 - Int Potion

Materials:
 - Wood:
 - Animal Materials:
 - Farm Materials:

Minerals:

Animals:



*/