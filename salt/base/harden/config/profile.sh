# Disable core dumps via soft limits for all users. Compliance to this setting
# is voluntary and can be modified by users up to a hard limit.
ulimit -S -c 0 > /dev/null 2>&1
