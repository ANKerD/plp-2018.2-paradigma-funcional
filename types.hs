data ChangeAttr = ChangeAttr {
    sanity :: Int,
    knowledge :: Int,
    money :: Int,
    energy :: Int
}

data Action = Decision {
    desciption :: String,
    consequence :: String,
    changes :: ChangeAttr
}

data Mission = Mission {
    options :: [Decision]
}

data Day = Day {
    misions :: [Mission]
}

data Phase = Phase {
    days :: [Day]
}


data Phase = Game {
    phases :: [Phase]
}