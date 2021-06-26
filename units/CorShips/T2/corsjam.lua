local unitName = Spring.I18N('units.names.corsjam')

return {
	corsjam = {
		acceleration = 0.03574,
		activatewhenbuilt = true,
		brakerate = 0.03574,
		buildcostenergy = 1800,
		buildcostmetal = 120,
		buildpic = "CORSJAM.PNG",
		buildtime = 6322.50049,
		canmove = true,
		category = "ALL NOTLAND MOBILE NOTSUB SHIP NOWEAPON NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -8 4",
		collisionvolumescales = "28 28 65",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = Spring.I18N('units.descriptions.corsjam'),
		energymake = 20,
		energyuse = 20,
		explodeas = "mediumexplosiongeneric",
		floater = true,
		footprintx = 3,
		footprintz = 3,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 570,
		maxvelocity = 2.043,
		minwaterdepth = 6,
		movementclass = "BOAT3",
		name = unitName,
		nochasecategory = "MOBILE",
		objectname = "Units/CORSJAM.s3o",
		onoffable = true,
		radardistancejam = 900,
		script = "Units/CORSJAM.cob",
		seismicsignature = 0,
		selfdestructas = "mediumexplosiongenericSelfd",
		sightdistance = 403,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 384,
		waterline = 0,
		customparams = {
			model_author = "Beherith",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corships/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-3.9418182373 0.0506627246094 -0.0",
				collisionvolumescales = "41.9625549316 13.4625854492 69.8010559082",
				collisionvolumetype = "Box",
				damage = 684,
				description = Spring.I18N('units.dead', { name = unitName }),
				energy = 0,
				featuredead = "HEAP",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 60,
				object = "Units/corsjam_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 4032,
				description = Spring.I18N('units.heap', { name = unitName }),
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 30,
				object = "Units/cor4X4A.s3o",
				reclaimable = true,
				resurrectable = 0,
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
				[1] = "shcormov",
			},
			select = {
				[1] = "radjam2",
			},
		},
	},
}
