db.planets.insert({
       
        "name" : "Mercury",
        "orderFromSun" : 1,
        "hasRings" : false,
        "mainAtmosphere" : [ ],
        "surfaceTemperatureC" : {
                "min" : -173,
                "max" : 427,
                "mean" : 67
        }
})


db.zips.insert({
        
        "city" : "MyCity",
        "zip" : "35014",
        "loc" : {
                "y" : 33.331165,
                "x" : 86.208934
        },
        "pop" : 3062,
        "state" : "AL"
})

db.zips.update({"city":"mycity"},{$set:{"capital?":true}})