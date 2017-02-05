#!/system/bin/sh
# SW00188623
# sleep in 5s on diag cmd
# wangjunbo
# 2016-06-17
#

am broadcast -a action.current.test.timeout --ez test_flag true
