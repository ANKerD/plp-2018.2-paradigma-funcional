data ChangeAttr = ChangeAttr {
    sanity :: Int,
    knowledge :: Int,
    money :: Int,
    energy :: Int
}

sumChanges :: ChangeAttr -> ChangeAttr -> ChangeAttr
sumChanges a b = ChangeAttr (sanity a + sanity b) (knowledge a + knowledge b) (money a + money b) (energy a + energy b)

data Action = Action {
    desciption :: String,
    consequence :: String,
    changes :: ChangeAttr
}

data Mission = Mission {
    options :: [Action]
}

data Day = Day {
    misions :: [Mission]
}

data Phase = Phase {
    days :: [Day]
}

data Game = Game {
    phases :: [Phase]
}

main :: IO ()
main = do
    let ts = ChangeAttr 2 3 4 5
    let st = ChangeAttr 2 3 4 5
    print (energy (sumChanges ts st))