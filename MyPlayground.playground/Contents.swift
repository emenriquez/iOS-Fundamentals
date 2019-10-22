struct Town {
    let name = "Erikland"
    var citizens = [
        "Erik",
        "Caspi",
        "Pumpkin"
    ]
    var resources = [
        "Grain": 100,
        "Ore": 42,
        "Wool": 75
    ]
}

var myTown = Town()

print(myTown.name)
