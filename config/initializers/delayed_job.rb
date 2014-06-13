Delayed::Worker.destroy_failed_jobs = false
Delayed::Worker.sleep_delay         = 0.5 # check db for new jobs every half second
Delayed::Worker.max_attempts        = 1
Delayed::Worker.delay_jobs          = true
Delayed::Worker.logger              = Logger.new(STDOUT)
Delayed::Worker.logger.level        = Logger::INFO