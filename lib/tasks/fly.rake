# RELEASE step:
   #  - changes to the filesystem made here are DISCARDED
   #  - full access to secrets, databases
   #  - failures here prevent deployment
   
   task :release
   
   # SERVER step:
      #  - changes to the filesystem made here are deployed
      #  - full access to secrets, databases
      #  - failures here result in VM being stated, shutdown, and rolled back
      #    to last successful deploy (if any).
   
   task :server => 'db:migrate' do
        sh 'bin/rails server'
      end