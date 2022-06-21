BASEDIR=$(dirname $0)
BYCONSCHEMAS=$BASEDIR/../docs/schemas

BEACONROOT=/Users/$USER/GitHub/beta.schemablocks.org

# echo "pulling $BEACONROOT"
# git -C $BEACONROOT pull

# for KIND in src json
# do
# 	mkdir -p $BYCONSCHEMAS/$KIND/beacon-v2-default-model
# 	mkdir -p $BYCONSCHEMAS/$KIND/framework
# done

# # recurring conversion from the source files to the exported versions
$BASEDIR/beaconYamler.py -i $BYCONSCHEMAS/src -t yaml -x json -o $BYCONSCHEMAS/json
