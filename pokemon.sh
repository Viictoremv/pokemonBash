pokemonName=$1
data=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonName)
name=$(echo $data | jq '.name')
pokeId=$(echo $data | jq '.id')
id=$(echo $data | jq '.order')
weight=$(echo $data | jq '.weight')
height=$(echo $data | jq '.height')
echo "--------------------"
echo $name "No. $pokeId"
echo "Id = $id"
echo "Weight = $weight"
echo "Height = $height"
