return {
	armrectr = {
		acceleration = 0.23,
		brakerate = 0.8625,
		buildcostenergy = 1400,
		buildcostmetal = 110,
		builddistance = 96,
		builder = true,
		buildpic = "ARMRECTR.PNG",
		buildtime = 2400,
		canassist = false,
		canmove = true,
		canresurrect = true,
		category = "BOT MOBILE ALL NOTSUB NOWEAPON NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "21 32 21",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Stealthy Rez/Repair/Reclaim Bot",
		energymake = 1.75,
		energyuse = 1.75,
		explodeas = "smallbuilder",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 60,
		maxdamage = 200,
		maxslope = 14,
		maxvelocity = 2.6,
		maxwaterdepth = 22,
		movementclass = "BOT2",
		name = "Rector",
		objectname = "Units/ARMRECTR.s3o",
		radardistance = 50,
		script = "Units/ARMRECTR.cob",
		seismicsignature = 0,
		selfdestructas = "smallbuilderSelfd",
		sightdistance = 350,
		stealth = true,
		terraformspeed = 1000,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.716,
		turnrate = 1290.29993,
		upright = true,
		workertime = 200,
		customparams = {
			description_long = "Rector is a resurrection Bot which can turn wrecks into brand new army members or reclaim them to get back your metal! It is fast and cheap to build, therefore it can serve as and ideal solution for reclaiming trees, rocks and other structures scattered across the map. It is essential to combine resurrection Bots with any attacking units so they can repair and resurrect/reclaim wrecks in real-time constantly reinforcing your army. It can be used to obtain constructors of the other fraction by resurrecting enemies wrecks.",
			model_author = "Kaiser",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armbots",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -5.0193 1.03799438477",
				collisionvolumescales = "20.0 11.0 10.0759887695",
				collisionvolumetype = "Box",
				damage = 764,
				description = "Rector Wreckage",
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 72,
				object = "Units/armrectr_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 344,
				description = "Rector Heap",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 36,
				object = "Units/arm2X2D.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg3-builder",
				[2] = "deathceg2-builder",
				[3] = "deathceg2",
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
				[1] = "necrok1",
			},
			select = {
				[1] = "necrsel1",
			},
		},
	},
}
