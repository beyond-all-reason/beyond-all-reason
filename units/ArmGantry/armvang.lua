return {
	armvang = {
		acceleration = 0.02645,
		brakerate = 0.345,
		buildcostenergy = 71000,
		buildcostmetal = 3300,
		buildpic = "ARMVANG.PNG",
		buildtime = 91096,
		canmove = true,
		category = "ALL NOTSUB WEAPON NOTAIR NOTHOVER SURFACE BOT EMPABLE",
		collisionvolumeoffsets = "0 -1 0",
		collisionvolumescales = "65 60 65",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "All-Terrain Heavy Plasma Cannon",
		explodeas = "explosiont3",
		footprintx = 4,
		footprintz = 4,
		hightrajectory = 2,
		idleautoheal = 5,
		idletime = 1800,
		mass = 200000,
		maxdamage = 9000,
		maxslope = 17,
		maxvelocity = 1.1,
		maxwaterdepth = 0,
		movementclass = "HTBOT4",
		name = "Vanguard",
		nochasecategory = "VTOL",
		objectname = "Units/ARMVANG.s3o",
		script = "Units/ARMVANG.cob",
		seismicsignature = 0,
		selfdestructas = "explosiont3xl",
		sightdistance = 700,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.726,
		turnrate = 265.64999,
		customparams = {
			model_author = "Flaka",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armgantry",
			techlevel = 3,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-3.37104034424 -1.05229058838 1.8899307251",
				collisionvolumescales = "64.0154266357 41.4324188232 55.433883667",
				collisionvolumetype = "Box",
				damage = 3000,
				description = "Vanguard Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 2028,
				object = "Units/armvang_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 3015,
				description = "Vanguard Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 811,
				object = "Units/arm4X4D.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-huge",
			},
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
				[1] = "kbarmmov",
			},
			select = {
				[1] = "kbarmsel",
			},
		},
		weapondefs = {
			shocker = {
				areaofeffect = 192,
				avoidfeature = false,
				avoidfriendly = true,
				cegtag = "arty-huge",
				collidefriendly = false,
				craterareaofeffect = 192,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.65,
				explosiongenerator = "custom:genericshellexplosion-huge",
				firetolerance = 5000,
				gravityaffected = "true",
				heightboostfactor = 2.8,
				impulseboost = 0.5,
				impulsefactor = 0.5,
				name = "Heavy long-range g2g plasma cannon",
				noselfdamage = true,
				predictboost = 0.25,
				range = 1325,
				reloadtime = 8,
				--size = 5,
				soundhit = "xplomed2",
				soundhitwet = "splslrg",
				soundstart = "cannhvy5",
				targetborder = 1,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 500,
				customparams = {
					light_color = "1 0.65 0.20",
					light_mult = 3.5,
					light_radius_mult = 1.1,
				},
				damage = {
					commanders = 1100,
					default = 1265,
					shields = 765,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL GROUNDSCOUT",
				def = "SHOCKER",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
