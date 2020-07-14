#!/usr/bin/env python
import operator, base64, sys


o_priexp = 277
o_p = 537
o_q = 669
o_dp = 800
o_dq = 931 
o_coef = 1063

sz_priexp = 256
sz_p = 128
sz_q = 128
sz_dp = 128
sz_dq = 128
sz_coef = 128

'''
junk(12)     308204a30201000282010100
modulus(256) cbc0dbbfca6ba49ff490a86519e258a33a36b7ad041bc2f4e7ad60d77476f4bbcc479872bc6665189a669fae7e038c475c89c96223ee2b3aca52702978b67ebf0d47a1c38066d58ad33debdbab80f2441838a5fd42dfc36c276fb05f7017c8112b4a6dc7d33a475dcdbc1c6f5500297dcf6307d9d3ce984e80ce0988462f955f052e183dc99a2f31877a5b07f76a85caf3dd554314ebfe4418a2ad58a7eebc8ba4f89cdabb3560be50d563407c4d40c40ccd4ea55825fccf2837c87f3c38042451721729f43e364bd843573168ca153e963bdbe795b612b3a4c7b21e4067edc8ae9a4e6a80b4c42407d66697b87f8785663fd173c63c263d884b99153e3532c1
junk(9)      020301000102820100
priexp(256)  3860d6ed4cbf58400255fca26cf51a7d9fe00016d9aa2cd9c33950308dc354989a3fbd4912246b18d1b04fc2e28f6cc35a31ae0d7fcfa91a8d5d1e37fb74d3c15d9552875c0218585f7724ca15bc8a4c993f237ede8037fcb734ca62be0b768a79a6109658362a0524a6465fefef298bec5484999b67f0f0d7e72af0102b9e72bbe19158164639e4bd2be2db62f3b072b8ca847cfaea6e1b79d29d815022c7a344e62c268cd5e4b5242524c0a36ed74d5e0ff1a35fc6e241b6a7f30ed472dc29f7b53791600625e3dd08e5be0be3259921d5ab3629381a3ce06a65a3f4dfbdfc567620db7212caf7d3fed780ad51adc6b9853fbf77f44bc914aa45d704f1b839
junk(4)      02818100
P(128)       eedd03477ef3b7e744272fb9be6ef34a637ded57a7c1024558c8ae9641c66b4c94de52dab31c6e9b4a14b677488de9c8bd2c7ab7763e6a02b617710f6dbd00679c19d69d485ece2f92d81e43049205da9c33c2d9143bd9b8f6e842726845d22477ad979cfe5e9081080407cea7cbf6c05a527c4ee7347daee02a405cd485f47b
junk(4)      02818100
Q(128)       da5f0326b0c4e66f4a927f89e25f807467de04bd6280f1770e7b8fa15ebb069822680808e21db9509cd788328aa1aef4e92d03e1707be3338b5f5d4c6863cc21d8651be4a07907cda02e651386565cdc844891f5495811193f67042dafb4be9bc42555581913782e43e9cfd05dc6a2eb2c3a398c8d35da74bb39ca5117b5c6f3
junk(3)      028180
dP(128)      556187048d6a8cb80bf27deac5195fb99d6aabe6033ec893053366c4aaea43fc71d22e87a2326d8ef0a20abf049e458ccda21293759ec5c20658c6bf1f18ca063f143554af43c42bd92f8b51a55694e519a49ee77d860f43406eb121b8080d1f9fefdb1bf108d85a670519cd52c963804a48e5ca4676cade319ea8b705f883f5
junk(3)      028180
dQ(128)      6a8b811617997a75428548051696522e799f31e0d576e4599a8f5efcf5237b8c2efd632e32651e4ddeb8aa933e60b4e47a00a4ac121de034fe03819a0e34e31c806094c370289d4e0ea1945f7a6418dadf102966ec6a33ad85e9d578150ab3157d165a15a9e67df4d4ddf7af4a91e85ba630a2739952754c0f2d9b3105c88351
junk(4)      02818100
coef(128)    9aa2a18b3cacae9e5f303ccb060b8ea4cbbbfc9048b067ff8b5adfa2bc0f20a82cd94dc52ba8c7e039c3acf6bc47d15500eae079b8bc1ce3762dd07d82cd913893a8b72f81667e797e38a205ed7530ceedcf8678c296cf85d7b8949454be7e0958ca2e364427a41cd9664b97de314b02fbd44e351f861c8959d2090c55738270


modulus:
    00:cb:c0:db:bf:ca:6b:a4:9f:f4:90:a8:65:19:e2:
    58:a3:3a:36:b7:ad:04:1b:c2:f4:e7:ad:60:d7:74:
    76:f4:bb:cc:47:98:72:bc:66:65:18:9a:66:9f:ae:
    7e:03:8c:47:5c:89:c9:62:23:ee:2b:3a:ca:52:70:
    29:78:b6:7e:bf:0d:47:a1:c3:80:66:d5:8a:d3:3d:
    eb:db:ab:80:f2:44:18:38:a5:fd:42:df:c3:6c:27:
    6f:b0:5f:70:17:c8:11:2b:4a:6d:c7:d3:3a:47:5d:
    cd:bc:1c:6f:55:00:29:7d:cf:63:07:d9:d3:ce:98:
    4e:80:ce:09:88:46:2f:95:5f:05:2e:18:3d:c9:9a:
    2f:31:87:7a:5b:07:f7:6a:85:ca:f3:dd:55:43:14:
    eb:fe:44:18:a2:ad:58:a7:ee:bc:8b:a4:f8:9c:da:
    bb:35:60:be:50:d5:63:40:7c:4d:40:c4:0c:cd:4e:
    a5:58:25:fc:cf:28:37:c8:7f:3c:38:04:24:51:72:
    17:29:f4:3e:36:4b:d8:43:57:31:68:ca:15:3e:96:
    3b:db:e7:95:b6:12:b3:a4:c7:b2:1e:40:67:ed:c8:
    ae:9a:4e:6a:80:b4:c4:24:07:d6:66:97:b8:7f:87:
    85:66:3f:d1:73:c6:3c:26:3d:88:4b:99:15:3e:35:
    32:c1
publicExponent: 65537 (0x10001)
privateExponent:
    38:60:d6:ed:4c:bf:58:40:02:55:fc:a2:6c:f5:1a:
    7d:9f:e0:00:16:d9:aa:2c:d9:c3:39:50:30:8d:c3:
    54:98:9a:3f:bd:49:12:24:6b:18:d1:b0:4f:c2:e2:
    8f:6c:c3:5a:31:ae:0d:7f:cf:a9:1a:8d:5d:1e:37:
    fb:74:d3:c1:5d:95:52:87:5c:02:18:58:5f:77:24:
    ca:15:bc:8a:4c:99:3f:23:7e:de:80:37:fc:b7:34:
    ca:62:be:0b:76:8a:79:a6:10:96:58:36:2a:05:24:
    a6:46:5f:ef:ef:29:8b:ec:54:84:99:9b:67:f0:f0:
    d7:e7:2a:f0:10:2b:9e:72:bb:e1:91:58:16:46:39:
    e4:bd:2b:e2:db:62:f3:b0:72:b8:ca:84:7c:fa:ea:
    6e:1b:79:d2:9d:81:50:22:c7:a3:44:e6:2c:26:8c:
    d5:e4:b5:24:25:24:c0:a3:6e:d7:4d:5e:0f:f1:a3:
    5f:c6:e2:41:b6:a7:f3:0e:d4:72:dc:29:f7:b5:37:
    91:60:06:25:e3:dd:08:e5:be:0b:e3:25:99:21:d5:
    ab:36:29:38:1a:3c:e0:6a:65:a3:f4:df:bd:fc:56:
    76:20:db:72:12:ca:f7:d3:fe:d7:80:ad:51:ad:c6:
    b9:85:3f:bf:77:f4:4b:c9:14:aa:45:d7:04:f1:b8:
    39
prime1:
    00:ee:dd:03:47:7e:f3:b7:e7:44:27:2f:b9:be:6e:
    f3:4a:63:7d:ed:57:a7:c1:02:45:58:c8:ae:96:41:
    c6:6b:4c:94:de:52:da:b3:1c:6e:9b:4a:14:b6:77:
    48:8d:e9:c8:bd:2c:7a:b7:76:3e:6a:02:b6:17:71:
    0f:6d:bd:00:67:9c:19:d6:9d:48:5e:ce:2f:92:d8:
    1e:43:04:92:05:da:9c:33:c2:d9:14:3b:d9:b8:f6:
    e8:42:72:68:45:d2:24:77:ad:97:9c:fe:5e:90:81:
    08:04:07:ce:a7:cb:f6:c0:5a:52:7c:4e:e7:34:7d:
    ae:e0:2a:40:5c:d4:85:f4:7b
prime2:
    00:da:5f:03:26:b0:c4:e6:6f:4a:92:7f:89:e2:5f:
    80:74:67:de:04:bd:62:80:f1:77:0e:7b:8f:a1:5e:
    bb:06:98:22:68:08:08:e2:1d:b9:50:9c:d7:88:32:
    8a:a1:ae:f4:e9:2d:03:e1:70:7b:e3:33:8b:5f:5d:
    4c:68:63:cc:21:d8:65:1b:e4:a0:79:07:cd:a0:2e:
    65:13:86:56:5c:dc:84:48:91:f5:49:58:11:19:3f:
    67:04:2d:af:b4:be:9b:c4:25:55:58:19:13:78:2e:
    43:e9:cf:d0:5d:c6:a2:eb:2c:3a:39:8c:8d:35:da:
    74:bb:39:ca:51:17:b5:c6:f3
exponent1:
    55:61:87:04:8d:6a:8c:b8:0b:f2:7d:ea:c5:19:5f:
    b9:9d:6a:ab:e6:03:3e:c8:93:05:33:66:c4:aa:ea:
    43:fc:71:d2:2e:87:a2:32:6d:8e:f0:a2:0a:bf:04:
    9e:45:8c:cd:a2:12:93:75:9e:c5:c2:06:58:c6:bf:
    1f:18:ca:06:3f:14:35:54:af:43:c4:2b:d9:2f:8b:
    51:a5:56:94:e5:19:a4:9e:e7:7d:86:0f:43:40:6e:
    b1:21:b8:08:0d:1f:9f:ef:db:1b:f1:08:d8:5a:67:
    05:19:cd:52:c9:63:80:4a:48:e5:ca:46:76:ca:de:
    31:9e:a8:b7:05:f8:83:f5
exponent2:
    6a:8b:81:16:17:99:7a:75:42:85:48:05:16:96:52:
    2e:79:9f:31:e0:d5:76:e4:59:9a:8f:5e:fc:f5:23:
    7b:8c:2e:fd:63:2e:32:65:1e:4d:de:b8:aa:93:3e:
    60:b4:e4:7a:00:a4:ac:12:1d:e0:34:fe:03:81:9a:
    0e:34:e3:1c:80:60:94:c3:70:28:9d:4e:0e:a1:94:
    5f:7a:64:18:da:df:10:29:66:ec:6a:33:ad:85:e9:
    d5:78:15:0a:b3:15:7d:16:5a:15:a9:e6:7d:f4:d4:
    dd:f7:af:4a:91:e8:5b:a6:30:a2:73:99:52:75:4c:
    0f:2d:9b:31:05:c8:83:51
coefficient:
    00:9a:a2:a1:8b:3c:ac:ae:9e:5f:30:3c:cb:06:0b:
    8e:a4:cb:bb:fc:90:48:b0:67:ff:8b:5a:df:a2:bc:
    0f:20:a8:2c:d9:4d:c5:2b:a8:c7:e0:39:c3:ac:f6:
    bc:47:d1:55:00:ea:e0:79:b8:bc:1c:e3:76:2d:d0:
    7d:82:cd:91:38:93:a8:b7:2f:81:66:7e:79:7e:38:
    a2:05:ed:75:30:ce:ed:cf:86:78:c2:96:cf:85:d7:
    b8:94:94:54:be:7e:09:58:ca:2e:36:44:27:a4:1c:
    d9:66:4b:97:de:31:4b:02:fb:d4:4e:35:1f:86:1c:
    89:59:d2:09:0c:55:73:82:70
'''

def is_ascii(s):
    return all(ord(c) < 128 for c in s)

def is_base64(s):
    base64_friendly = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/='
    for _ in s:
        if _ not in base64_friendly:
            return False
    return True


base64_key = '''MIIEowIBAAKCAQEAy8Dbv8prpJ/0kKhlGeJYozo2t60EG8L0561g13R29LvMR5hy
vGZlGJpmn65+A4xHXInJYiPuKzrKUnApeLZ+vw1HocOAZtWK0z3r26uA8kQYOKX9
Qt/DbCdvsF9wF8gRK0ptx9M6R13NvBxvVQApfc9jB9nTzphOgM4JiEYvlV8FLhg9
yZovMYd6Wwf3aoXK891VQxTr/kQYoq1Yp+68i6T4nNq7NWC+UNVjQHxNQMQMzU6l
WCX8zyg3yH88OAQkUXIXKfQ+NkvYQ1cxaMoVPpY72+eVthKzpMeyHkBn7ciumk5q
gLTEJAfWZpe4f4eFZj/Rc8Y8Jj2IS5kVPjUywQIDAQABAoIBADhg1u1Mv1hAAlX8
omz1Gn2f4AAW2aos2cM5UDCNw1SYmj+9SRIkaxjRsE/C4o9sw1oxrg1/z6kajV0e
N/t008FdlVKHXAIYWF93JMoVvIpMmT8jft6AN/y3NMpivgt2inmmEJZYNioFJKZG
X+/vKYvsVISZm2fw8NfnKvAQK55yu+GRWBZGOeS9K+LbYvOwcrjKhHz66m4bedKd
gVAix6NE5iwmjNXktSQlJMCjbtdNXg/xo1/G4kG2p/MO1HLcKfe1N5FgBiXj3Qjl
vgvjJZkh1as2KTgaPOBqZaP03738VnYg23ISyvfT/teArVGtxrmFP7939EvJFKpF
1wTxuDkCgYEA7t0DR37zt+dEJy+5vm7zSmN97VenwQJFWMiulkHGa0yU3lLasxxu
m0oUtndIjenIvSx6t3Y+agK2F3EPbb0AZ5wZ1p1IXs4vktgeQwSSBdqcM8LZFDvZ
uPboQnJoRdIkd62XnP5ekIEIBAfOp8v2wFpSfE7nNH2u4CpAXNSF9HsCgYEA2l8D
JrDE5m9Kkn+J4l+AdGfeBL1igPF3DnuPoV67BpgiaAgI4h25UJzXiDKKoa706S0D
4XB74zOLX11MaGPMIdhlG+SgeQfNoC5lE4ZWXNyESJH1SVgRGT9nBC2vtL6bxCVV
WBkTeC5D6c/QXcai6yw6OYyNNdp0uznKURe1xvMCgYBVYYcEjWqMuAvyferFGV+5
nWqr5gM+yJMFM2bEqupD/HHSLoeiMm2O8KIKvwSeRYzNohKTdZ7FwgZYxr8fGMoG
PxQ1VK9DxCvZL4tRpVaU5Rmknud9hg9DQG6xIbgIDR+f79sb8QjYWmcFGc1SyWOA
SkjlykZ2yt4xnqi3BfiD9QKBgGqLgRYXmXp1QoVIBRaWUi55nzHg1XbkWZqPXvz1
I3uMLv1jLjJlHk3euKqTPmC05HoApKwSHeA0/gOBmg404xyAYJTDcCidTg6hlF96
ZBja3xApZuxqM62F6dV4FQqzFX0WWhWp5n301N33r0qR6FumMKJzmVJ1TA8tmzEF
yINRAoGBAJqioYs8rK6eXzA8ywYLjqTLu/yQSLBn/4ta36K8DyCoLNlNxSuox+A5
w6z2vEfRVQDq4Hm4vBzjdi3QfYLNkTiTqLcvgWZ+eX44ogXtdTDO7c+GeMKWz4XX
uJSUVL5+CVjKLjZEJ6Qc2WZLl94xSwL71E41H4YciVnSCQxVc4Jw'''


raw_key = base64.decodestring(base64_key)
Base64_key_hex = base64_key.encode('hex')

# print raw_key.encode('hex')
# print len(raw_key)
# raw_key_hex = base64.decodestring(base64_key).encode('hex')


def rank_keys(prefix, x, i):
    fl = open("data2048/%d/%s_x%d.txt"%(x, prefix, i))

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

