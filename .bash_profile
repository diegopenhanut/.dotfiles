# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export PATH="$HOME/bin/snpEff/scripts:$HOME/bin/bedtools2/bin:$HOME/bin/cufflinks:$HOME/bin/vcftools_0.1.12b/cpp:$HOME/bin/tabix:$HOME/bin/vcftools_0.1.12b/perl:$HOME/bin/julia-cb9bcae93a/bin/julia:$HOME/bin/SeqToolBox/bin:$PATH"
#export PATH="$HOME/bin/ncbi-blast-2.3.0+/bin:$HOME/bin/snpEff/scripts:$HOME/bin/bedtools2/bin:$HOME/bin/cufflinks:$HOME/bin/vcftools_0.1.12b/cpp:$HOME/bin/tabix:$HOME/bin/vcftools_0.1.12b/perl:$HOME/bin/julia-cb9bcae93a/bin/julia:$HOME/bin/SeqToolBox/bin:$PATH"

# export PATH="$HOME/.linuxbrew/sbin:$PATH"

# export PATH="/usr/local/bin:$PATH"

export PERL5LIB=$HOME/bin/vcftools_0.1.12b/perl/

# Sailfish - for rnaseq
# export LD_LIBRARY_PATH=$HOME/bin/Sailfish-0.6.3-Linux_x86-64/lib/:$LD_LIBRARY_PATH

source ~/perl5/perlbrew/etc/bashrc

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color
