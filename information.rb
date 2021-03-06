class Information
  def self.help
    puts "Usage: mv [OPTION]... [-T] SOURCE DEST
  or:  mv [OPTION]... SOURCE... DIRECTORY
  or:  mv [OPTION]... -t DIRECTORY SOURCE...
Rename SOURCE to DEST, or move SOURCE(s) to DIRECTORY.

Mandatory arguments to long options are mandatory for short options too.
      --backup[=CONTROL]       make a backup of each existing destination file
  -b                           like --backup but does not accept an argument
  -f, --force                  do not prompt before overwriting
  -i, --interactive            prompt before overwrite
  -n, --no-clobber             do not overwrite an existing file
If you specify more than one of -i, -f, -n, only the final one takes effect.
      --strip-trailing-slashes  remove any trailing slashes from each SOURCE
                                 argument
  -S, --suffix=SUFFIX          override the usual backup suffix
  -t, --target-directory=DIRECTORY  move all SOURCE arguments into DIRECTORY
  -T, --no-target-directory    treat DEST as a normal file
  -u, --update                 move only when the SOURCE file is newer
                                 than the destination file or when the
                                 destination file is missing
  -p, --pattern=PATTERN        move only matched files
  -v, --verbose                explain what is being done
      --help     display this help and exit
      --version  output version information and exit

The backup suffix is '~', unless set with --suffix or SUFFIX.
Here are the values:

  none, off       never make backups (even if --backup is given)
  numbered, t     make numbered backups
  existing, nil   numbered if numbered backups exist, simple otherwise
  simple, never   always make simple backups

Envirounment variables:

PROCESSING_MODE can be NO_CLOBBER, INTERACTIVE, FORCE : -n, -i, -f option
CONTROL can be none/off, numbered/t, existing/nil, simple/never : --backup option
STRIP_TRAILING_SLASHES can be TRUE : --strip-trailing-slashes option
SUFFIX : --suffix option
TARGET_DIRECTORY : --no-target-directory option
NO_TARGET_DIRECTORY can be TRUE : --no-target-directory option
UPDATE can be TRUE : --update option
VERBOSE_MODE can be TRUE : --verbose option
PATTERN : --pattern option

Report mv bugs to webzepter@gmail.com
For complete documentation, run: man mv"
  end

  def self.version
    puts "mv 1.0
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Serhij Korochans'kyj"
  end
end