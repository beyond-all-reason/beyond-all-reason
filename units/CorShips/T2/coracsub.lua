local unitName = Spring.I18N('units.names.coracsub')

return {
	coracsub = {
		acceleration = 0.042,
		brakerate = 0.042,
		buildcostenergy = 9000,
		buildcostmetal = 700,
		builddistance = 180,
		builder = true,
		buildpic = "CORACSUB.PNG",
		buildtime = 18000,
		canmove = true,
		category = "ALL UNDERWATER MOBILE NOTLAND NOWEAPON NOTAIR NOTHOVER",
		collisionvolumeoffsets = "0 0 4",
		collisionvolumescales = "38 9 72",
		collisionvolumetype = "box",
		corpse = "DEAD",
		description = Spring.I18N('units.descriptions.coracsub'),
		energymake = 30,
		energystorage = 150,
		energyuse = 30,
		explodeas = "mediumexplosiongeneric-uw",
		footprintx = 4,
		footprintz = 4,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1000, --400,
		maxvelocity = 2.16,
		metalmake = 0.3,
		metalstorage = 150,
		minwaterdepth = 20,
		movementclass = "UBOAT4",
		name = unitName,
		objectname = "Units/CORACSUB.s3o",
		radardistance = 50,
		script = "Units/CORACSUB.cob",
		seismicsignature = 0,
		selfdestructas = "mediumexplosiongenericSelfd-uw",
		sightdistance = 156,
		terraformspeed = 1500,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 385.5,
		waterline = 120,
		workertime = 300,
		buildoptions = {
			[1] = "coruwfus",
			[2] = "coruwmmm",
			[3] = "coruwmme",
			[4] = "coruwadves",
			[5] = "coruwadvms",
			[6] = "corgantuw",
			[7] = "corasy",
			[8] = "corsy",
			[9] = "corason",
			[10] = "corfatf",
			[11] = "coratl",
			[12] = "corenaa",
			[13]= "corfdoom",
		},
		customparams = {
			area_mex_def = "coruwmme",
			model_author = "Beherith",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corships/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -1.62156426758 -7.49900054932",
				collisionvolumescales = "45.8502807617 11.0077514648 73.3929595947",
				collisionvolumetype = "Box",
				damage = 444,
				description = Spring.I18N('units.dead', { name = unitName }),
				energy = 0,
				featuredead = "HEAP",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 350,
				object = "Units/coracsub_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1432,
				description = Spring.I18N('units.heap', { name = unitName }),
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 175,
				object = "Units/cor4X4C.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2-builder",
				[2] = "deathceg3-builder",
				[3] = "deathceg4-builder",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			capture = "capture1",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
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
				[1] = "sucormov",
			},
			select = {
				[1] = "sucorsel",
			},
		},
	},
}
