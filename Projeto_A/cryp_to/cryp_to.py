def cryp_to(passwd):
    new_passwd = []
    passwd_to = []
    for i in passwd:
        passwd_to.append((ord(i)))
    new_passwd = ';'.join(map(str, passwd_to))
    print("Sua senha é: {}".format(new_passwd))

def cryp_turn(passwd):
    turn_passwd = []
    original = []
    turn_passwd.extend(passwd.split((';')))
    for i in turn_passwd:
        original.append(chr(int(i)))
    old_passwd = ''.join(map(str, original))
    print("Sua senha original é: {}".format(old_passwd))