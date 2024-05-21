# db/seeds.rb

# Create or find the faction
banner_lords = Faction.find_or_create_by!(name: "Banner Lords")

# Create or find the rarity
legendary = Rarity.find_or_create_by!(name: "Legendary")

# Create or find the affinity
force = Affinity.find_or_create_by!(name: "Force")

# Create or find the role
attack = Role.find_or_create_by!(name: "Attack")

# Create the champion with associations
Champion.find_or_create_by!(
    name: "Ronda",
    faction: banner_lords,
    rarity: legendary,
    affinity: force,
    role: attack
)