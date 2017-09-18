<?=@create_function('','echo '.strtr(preg_replace("/[^\dPNTV\.]/",'',$argv[1]),PNTV,'+-*/').';')();
