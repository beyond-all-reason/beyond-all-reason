local unitName = Spring.I18N('units.names.armthovr')

return {
	armthovr = {
		acceleration = 0.02983,
		brakerate = 0.02983,
		buildangle = 16384,
		buildcostenergy = 8300,
		buildcostmetal = 700,
		buildpic = "ARMTHOVR.PNG",
		buildtime = 20341,
		canmove = true,
		cantbetransported = true,
		category = "ALL HOVER MOBILE WEAPON NOTSUB NOTSHIP NOTAIR SURFACE EMPABLE",
		collisionvolumeoffsets = "-1 -1 0",
		collisionvolumescales = "56 56 96",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = Spring.I18N('units.descriptions.armthovr'),
		energymake = 2.4,
		energyuse = 2.4,
		explodeas = "hugeExplosionGeneric",
		footprintx = 4,
		footprintz = 4,
		icontype = "armthovr",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 5160,
		maxvelocity = 1.77,
		minwaterdepth = 12,
		movementclass = "HOVER4",
		name = unitName,
		nochasecategory = "ALL",
		objectname = "Units/ARMTHOVR.s3o",
		releaseheld = true,
		script = "Units/ARMTHOVR.cob",
		seismicsignature = 0,
		selfdestructas = "hugeExplosionGenericSelfd",
		sightdistance = 325,
		transportcapacity = 20,
		transportsize = 3,
		transportunloadmethod = 0,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.2,
		turnrate = 370,
		waterline = 4,
		customparams = {
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armhovercraft",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "3.81589508057 -2.34375000119e-06 -4.35322570801",
				collisionvolumescales = "64.6317596436 60.2001953125 88.311706543",
				collisionvolumetype = "Box",
				damage = 3096,
				description = Spring.I18N('units.dead', { name = unitName }),
				energy = 0,
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 432,
				object = "Units/armthovr_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "hovt1transok",
			},
			select = {
				[1] = "hovt1transsel",
			},
		},
	},
}
