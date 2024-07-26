mkdir shikharinsurance-repo.git 
cd shikharinsurance-repo.git
git init --bare . 
git --bare update-server-info 
git config core.bare false
git config receive.denycurrentbranch ignore  
git config core.worktree /home/realhr/shikharinsurance-realhrsoft-backend/irealhrsoft-backend

cat > hooks/post-receive <<EOF 
#!/bin/sh
git checkout -f
EOF
 
chmod +x hooks/post-receive
