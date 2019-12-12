export CWD=$PWD
# where programs are
export BIN_DIR="/rsgrps/bhurwitz/hurwitzlab/bin"
# where the dataset to prepare is
export DIR=""
export OUT_DIR=""
#place to store the scripts
export SCRIPT_DIR="$PWD/scripts"
# User informations
export QUEUE="standard"
export GROUP=""
export MAIL_USER=""
export MAIL_TYPE="bea"

#
# --------------------------------------------------
function init_dir {
    for dir in $*; do
        if [ -d "$dir" ]; then
            rm -rf $dir/*
        else
            mkdir -p "$dir"
        fi
    done
}

# --------------------------------------------------
function lc() {
    wc -l $1 | cut -d ' ' -f 1
}
