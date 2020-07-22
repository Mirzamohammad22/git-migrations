
while getopts o:r:d:v flag
do
    case "${flag}" in
        o) origin=${OPTARG};;
        r) remote=${OPTARG};;
        d) directory=${OPTARG};;
    esac
done

echo "origin=$origin"
echo "remote=$remote"
echo "directory=$directory"
echo "verbose=$verbose"
git clone --mirror $origin
cd ./$directory
git push --no-verify --mirror $remote
git remote set-url --push origin $remote
echo "migration completed & push origin set"
