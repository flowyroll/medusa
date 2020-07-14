#!/usr/bin/env python
import operator, base64, sys


o_priexp = 148
o_p = 279
o_q = 346
o_dp = 413
o_dq = 479 
o_coef = 545

sz_priexp = 128
sz_p = 64
sz_q = 64
sz_dp = 64
sz_dq = 64
sz_coef = 64

'''
junk   3082025d02010002818100 (11)
public e64ef4238ed1ad9c8a8cc2699a2d6f988db613b0d47c3c6297afbf22630acc57961ee151b20704baa8b0f8b3f1330b31880f0916095c7e8151ef876c065b5e437687f481502d00c911ea0440072e1390afba60548a0328e61ef2827c51ef73d968785183ca39b014591f770ce9a579c7d56c2dd0e967c8253519b435c3b007bb (128)
junk   020301000102818100 (9)
priexp cc83ae2ee9436f4d0487cc98642e16dc3c73447711a9a521d41b5fba9482e144a1ed981ea8ddaca868e686639c3bbca3e6739b98f3052cdd7fba19e2a69e7a4bf47cef994b3e822982dbbb31b6217501f271c9ecdb87de569c7e2bc357809f834c859d32be3031bfc5356acb0ac24ecb259130980bf5d93975395ede73df6159 (128)
junk   024100 (3)
p1     fe72d6421302e183ccd0ba8cb602b37e041d27bbdbaf8dd65553690bf74dfe26d401223fdd8c18d2e52da928e2948821218ee946886b3c9e969ed489c3450085 (64)
junk   024100 (3)
p2     e7b66fd71f88e4c5297c725388f7d79564ba515f4f22fa1b05e2ffb9afa5c0c28b10cb351ca4b918a099d2a3b4852b017d29c238176ba9e2a89ebdd631317b3f (64)
junk   024100 (3)
ex1    9c319640bd36d98474a7f4bc07c6a4b44886352be6715f9a208ab1433d2e4d433c84eda752b27b528a887afcb40a057e81011f45c2dc413c00adc33e45f60799 (64)
junk   0240 (2)
ex2    3c6b7cf44a5bc6d38682d5c8e48143ecc7ac31c5b97bf45d9186648a45bbe1ec9898937450f8beef2609963c6bb901c2cca153ec8e66db90a7c964d4f254e5bf (64)
junk   0240 (2)
coef   017a9122fbe650416d055c9599de733ed8235c5d80ad4e08b86c692f9d93e9ff5a40cbdae379525885bf1a713467b7e754fae67be024ed7eecd44d92ce22e55e (64)


RSA Private-Key: (1024 bit, 2 primes)
modulus:
    00:e6:4e:f4:23:8e:d1:ad:9c:8a:8c:c2:69:9a:2d:
    6f:98:8d:b6:13:b0:d4:7c:3c:62:97:af:bf:22:63:
    0a:cc:57:96:1e:e1:51:b2:07:04:ba:a8:b0:f8:b3:
    f1:33:0b:31:88:0f:09:16:09:5c:7e:81:51:ef:87:
    6c:06:5b:5e:43:76:87:f4:81:50:2d:00:c9:11:ea:
    04:40:07:2e:13:90:af:ba:60:54:8a:03:28:e6:1e:
    f2:82:7c:51:ef:73:d9:68:78:51:83:ca:39:b0:14:
    59:1f:77:0c:e9:a5:79:c7:d5:6c:2d:d0:e9:67:c8:
    25:35:19:b4:35:c3:b0:07:bb
publicExponent: 65537 (0x10001)
privateExponent:
    00:cc:83:ae:2e:e9:43:6f:4d:04:87:cc:98:64:2e:
    16:dc:3c:73:44:77:11:a9:a5:21:d4:1b:5f:ba:94:
    82:e1:44:a1:ed:98:1e:a8:dd:ac:a8:68:e6:86:63:
    9c:3b:bc:a3:e6:73:9b:98:f3:05:2c:dd:7f:ba:19:
    e2:a6:9e:7a:4b:f4:7c:ef:99:4b:3e:82:29:82:db:
    bb:31:b6:21:75:01:f2:71:c9:ec:db:87:de:56:9c:
    7e:2b:c3:57:80:9f:83:4c:85:9d:32:be:30:31:bf:
    c5:35:6a:cb:0a:c2:4e:cb:25:91:30:98:0b:f5:d9:
    39:75:39:5e:de:73:df:61:59
prime1:
    00:fe:72:d6:42:13:02:e1:83:cc:d0:ba:8c:b6:02:
    b3:7e:04:1d:27:bb:db:af:8d:d6:55:53:69:0b:f7:
    4d:fe:26:d4:01:22:3f:dd:8c:18:d2:e5:2d:a9:28:
    e2:94:88:21:21:8e:e9:46:88:6b:3c:9e:96:9e:d4:
    89:c3:45:00:85
prime2:
    00:e7:b6:6f:d7:1f:88:e4:c5:29:7c:72:53:88:f7:
    d7:95:64:ba:51:5f:4f:22:fa:1b:05:e2:ff:b9:af:
    a5:c0:c2:8b:10:cb:35:1c:a4:b9:18:a0:99:d2:a3:
    b4:85:2b:01:7d:29:c2:38:17:6b:a9:e2:a8:9e:bd:
    d6:31:31:7b:3f
exponent1:
    00:9c:31:96:40:bd:36:d9:84:74:a7:f4:bc:07:c6:
    a4:b4:48:86:35:2b:e6:71:5f:9a:20:8a:b1:43:3d:
    2e:4d:43:3c:84:ed:a7:52:b2:7b:52:8a:88:7a:fc:
    b4:0a:05:7e:81:01:1f:45:c2:dc:41:3c:00:ad:c3:
    3e:45:f6:07:99
exponent2:
    3c:6b:7c:f4:4a:5b:c6:d3:86:82:d5:c8:e4:81:43:
    ec:c7:ac:31:c5:b9:7b:f4:5d:91:86:64:8a:45:bb:
    e1:ec:98:98:93:74:50:f8:be:ef:26:09:96:3c:6b:
    b9:01:c2:cc:a1:53:ec:8e:66:db:90:a7:c9:64:d4:
    f2:54:e5:bf
coefficient:
    01:7a:91:22:fb:e6:50:41:6d:05:5c:95:99:de:73:
    3e:d8:23:5c:5d:80:ad:4e:08:b8:6c:69:2f:9d:93:
    e9:ff:5a:40:cb:da:e3:79:52:58:85:bf:1a:71:34:
    67:b7:e7:54:fa:e6:7b:e0:24:ed:7e:ec:d4:4d:92:
    ce:22:e5:5e
writing RSA key
'''

def is_ascii(s):
    return all(ord(c) < 128 for c in s)

def is_base64(s):
    base64_friendly = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/='
    for _ in s:
        if _ not in base64_friendly:
            return False
    return True

if False:
    None
else:
    base64_key = '''MIICXQIBAAKBgQDmTvQjjtGtnIqMwmmaLW+YjbYTsNR8PGKXr78iYwrMV5Ye4VGy
BwS6qLD4s/EzCzGIDwkWCVx+gVHvh2wGW15Ddof0gVAtAMkR6gRABy4TkK+6YFSK
AyjmHvKCfFHvc9loeFGDyjmwFFkfdwzppXnH1Wwt0OlnyCU1GbQ1w7AHuwIDAQAB
AoGBAMyDri7pQ29NBIfMmGQuFtw8c0R3EamlIdQbX7qUguFEoe2YHqjdrKho5oZj
nDu8o+Zzm5jzBSzdf7oZ4qaeekv0fO+ZSz6CKYLbuzG2IXUB8nHJ7NuH3lacfivD
V4Cfg0yFnTK+MDG/xTVqywrCTsslkTCYC/XZOXU5Xt5z32FZAkEA/nLWQhMC4YPM
0LqMtgKzfgQdJ7vbr43WVVNpC/dN/ibUASI/3YwY0uUtqSjilIghIY7pRohrPJ6W
ntSJw0UAhQJBAOe2b9cfiOTFKXxyU4j315VkulFfTyL6GwXi/7mvpcDCixDLNRyk
uRigmdKjtIUrAX0pwjgXa6niqJ691jExez8CQQCcMZZAvTbZhHSn9LwHxqS0SIY1
K+ZxX5ogirFDPS5NQzyE7adSsntSioh6/LQKBX6BAR9FwtxBPACtwz5F9geZAkA8
a3z0SlvG04aC1cjkgUPsx6wxxbl79F2RhmSKRbvh7JiYk3RQ+L7vJgmWPGu5AcLM
oVPsjmbbkKfJZNTyVOW/AkABepEi++ZQQW0FXJWZ3nM+2CNcXYCtTgi4bGkvnZPp
/1pAy9rjeVJYhb8acTRnt+dU+uZ74CTtfuzUTZLOIuVe'''


raw_key = base64.decodestring(base64_key)
Base64_key_hex = base64_key.encode('hex')

# print raw_key.encode('hex')
# raw_key_hex = base64.decodestring(base64_key).encode('hex')


def rank_keys(prefix, x, i):
    fl = open("data/%d/%s_x%d.txt"%(x, prefix, i))

    line = fl.readline()
    ht = {}
    while line:
        k = line.strip()        
        if True:
            if ht.has_key(k):
                ht[k] += 1
            else:
                ht.update({k : 1})

        line = fl.readline()    
    return ht


def process_offset(ranks, kc, i):    
    kc_group_prev = {}
    kc_group_next = {}
    for x in list(kc.items()):    
        k_prev, score1 = x[0], x[1]
        for y in list(ranks[i].items()):
            k_next, score2 = y[0], y[1]
            if k_prev[i*2:] == k_next[0:4]:
                k_new = "%s%s"%(k_prev, k_next[-2:])
                total_score = score1 + score2
                if kc_group_prev.has_key(k_prev):
                    kc_group_prev[k_prev].update({k_new: total_score})
                else:
                    kc_group_prev.update({k_prev : {k_new: total_score}})

                if kc_group_next.has_key(k_next):
                    kc_group_next[k_next].update({k_new: total_score})
                else:
                    kc_group_next.update({k_next : {k_new: total_score}})

    kc1 = {}
    for k in kc_group_prev:
        sorted_entry = sorted(kc_group_prev[k].items(), key=operator.itemgetter(1)) 
        k_new, score = sorted_entry[-1]
        kc1.update({k_new : score})
        
    kc2 = {}
    for k in kc_group_next:
        sorted_entry = sorted(kc_group_next[k].items(), key=operator.itemgetter(1)) 
        k_new, score = sorted_entry[-1]
        kc2.update({k_new : score})

    kc = {}
    for k1 in kc1:
        for k2 in kc2:
            if k1 == k2:
                kc.update({k1: kc1[k1]})
    return kc

def process_subsection(x, prefix):
    ranks = [()] * 6
    for i in xrange(6):
        ranks[i] = rank_keys(prefix, x, i)

    kc = ranks[0]
    kc = process_offset(ranks, kc, 1)    
    kc = process_offset(ranks, kc, 2)    
    kc = process_offset(ranks, kc, 3)
    kc = process_offset(ranks, kc, 4)
    kc = process_offset(ranks, kc, 5)


    print "%s\t%s\t%s\t%s\t%s"%("Key       ", "Score       ", "b64(raw)   ", "ascii", "keypart")

    candidateCount = trueCandidateCount = 0
    for k, v in sorted(kc.items(), key=operator.itemgetter(1)):
        strk = k.decode('hex')
        if is_base64(strk):
            base64_offset = Base64_key_hex.find(k) / 2
            raw_offset  = (base64_offset * 6)/8
            x = ""
            if raw_offset >= o_priexp and raw_offset < o_priexp + sz_priexp:
                x = "priexp(%s)"%(raw_offset - o_priexp)
            
            if raw_offset >= o_p and raw_offset < o_p + sz_p:
                x = "p(%s)"%(raw_offset - o_p)
            
            if raw_offset >= o_q and raw_offset < o_q + sz_q:
                x = "q(%s)"%(raw_offset - o_q)
            
            if raw_offset >= o_dp and raw_offset < o_dp + sz_dp:
                x = "dp(%s)"%(raw_offset - o_dp)
            
            if raw_offset >= o_dq and raw_offset < o_dq + sz_dq:
                x = "dq(%s)"%(raw_offset - o_dq)
            
            if raw_offset >= o_coef and raw_offset < o_coef + sz_coef:
                x = "coef(%s)"%(raw_offset - o_coef)


            print "%s\t%s\t%s(%s)    \t%s\t%s"%(k, v, base64_offset, raw_offset ,strk, x)
            if base64_offset > -1:
                trueCandidateCount += 1
            candidateCount += 1

    print candidateCount, trueCandidateCount

x = int(sys.argv[1])
process_subsection(x, "leak_ymmm_0_xmm_1")
process_subsection(x, "leak_ymmm_1_xmm_0")
process_subsection(x, "leak_ymmm_1_xmm_1")

