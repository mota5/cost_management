#require "log4r"
#require "log4r/outputter/datefileoutputter"
#
#outputter = Log4r::DateFileOutputter.new('logfile', 
#                         :filename=>'sample.log', 
#                         :dirname=>'D:/',
#                         :date_pattern=>'%Y%m%d',
#                         :trunc=>false)
#log = Log4r::Logger.new("simpleconf")
#log.add(outputter)
#
#log.debug "debug"
#log.info "info"
#log.warn "warn"
#log.error "error"
#log.fatal "fatal"
