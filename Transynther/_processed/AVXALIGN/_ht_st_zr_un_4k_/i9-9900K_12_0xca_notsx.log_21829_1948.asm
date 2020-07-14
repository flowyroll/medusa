.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xf470, %r8
nop
sub %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, (%r8)
nop
nop
nop
nop
nop
and $45051, %r15
lea addresses_UC_ht+0x4c70, %r14
nop
cmp %rbp, %rbp
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
add $21612, %r8
lea addresses_A_ht+0xce70, %rsi
lea addresses_A_ht+0xe4f0, %rdi
nop
nop
and %r14, %r14
mov $89, %rcx
rep movsb
nop
nop
dec %r12
lea addresses_WT_ht+0x11bf2, %r11
nop
nop
nop
inc %rsi
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
and %r14, %r14
lea addresses_UC_ht+0x1e590, %rcx
nop
nop
nop
nop
xor $23880, %r14
movw $0x6162, (%rcx)
nop
add $29548, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rsi

// Store
lea addresses_RW+0x4c70, %rsi
nop
cmp $41344, %rax
movb $0x51, (%rsi)
nop
nop
and %r11, %r11

// Load
mov $0x51a2710000000b70, %r14
nop
nop
nop
xor $45574, %r12
mov (%r14), %bp
nop
nop
and $22201, %rax

// Store
lea addresses_RW+0x1e470, %rsi
nop
nop
nop
nop
cmp $4056, %rbp
movb $0x51, (%rsi)
xor %r10, %r10

// Faulty Load
mov $0x7e95330000000c70, %rsi
nop
nop
nop
nop
sub %r10, %r10
movb (%rsi), %r11b
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rsi
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'26': 36, '66': 48, '64': 19, '08': 46, 'ae': 58, 'aa': 44, 'b2': 43, '9a': 49, '58': 49, 'f6': 46, '84': 55, '68': 49, 'a6': 43, '98': 50, 'd2': 62, 'c2': 43, 'f2': 67, 'b0': 42, 'a4': 48, '44': 40, 'ca': 54, '82': 42, '56': 55, '4e': 61, '6c': 50, '04': 46, '4a': 49, '40': 60, 'c8': 59, 'ba': 48, '94': 20, 'f8': 46, '72': 50, 'e4': 41, 'b8': 61, '12': 49, '8a': 38, 'cc': 43, 'ce': 49, 'd4': 32, '60': 39, '1c': 44, 'e0': 57, '1e': 57, '06': 56, '5a': 50, 'c6': 55, '9c': 56, 'a0': 46, 'ec': 52, '28': 65, '70': 42, 'e6': 60, '24': 51, '36': 51, '50': 54, '34': 11, 'c0': 47, 'fe': 52, 'b6': 43, '10': 44, '9e': 48, '0e': 62, '52': 49, 'a2': 57, '51': 14961, 'c4': 38, 'e8': 58, '80': 45, '78': 61, '96': 46, '30': 46, '86': 52, '14': 49, '3e': 63, 'f4': 51, 'be': 50, '76': 44, 'fa': 51, '62': 64, 'b4': 38, '02': 39, '38': 53, '42': 63, 'dc': 39, '20': 48, '46': 39, '92': 48, 'd0': 37, 'ee': 37, 'ea': 51, '6e': 45, '48': 50, 'bc': 53, 'd8': 45, 'de': 65, '18': 44, 'fc': 48, '54': 26, '32': 53, '0c': 50, '3c': 50, 'e2': 58, '16': 49, '0a': 56, '22': 47, '2c': 50, 'a8': 54, '2a': 56, 'd6': 51, '3a': 48, '8e': 40, '7a': 36, '74': 52, 'ac': 48, '7c': 53, 'da': 60, '7e': 59, '2e': 50, '88': 59, '8c': 43, '4c': 37, '90': 52, '6a': 55, '00': 676, '1a': 65, '5c': 45, '5e': 45, 'f0': 47}
51 51 b2 92 51 51 51 f0 51 04 51 66 51 51 51 ea 51 51 51 51 51 51 51 a2 58 0a 6a 74 0e 2e 51 51 51 51 e8 51 0a 82 51 51 51 51 51 00 b8 51 51 51 51 51 51 00 51 a6 51 51 12 51 51 9c 51 51 51 51 78 51 51 aa 51 51 51 51 51 51 51 ee 51 51 ac 51 51 51 74 51 51 51 b0 51 de 51 e2 51 51 51 51 f2 51 a8 0e 51 51 51 51 51 d8 a2 51 51 51 51 51 ce 51 c2 51 1c 48 51 51 51 d8 51 51 51 51 51 51 b6 51 51 a2 51 51 51 e0 51 f4 00 c4 51 51 51 e8 51 51 51 51 51 51 a4 51 51 51 04 d0 51 51 51 51 51 51 51 ce 51 26 51 06 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 38 51 51 51 f2 51 51 51 51 51 51 51 51 51 51 51 51 51 ac 28 51 da 51 51 51 51 51 51 51 51 51 51 51 51 e0 aa 51 51 51 51 51 cc 51 cc 51 51 51 36 51 fe a4 74 51 51 51 51 51 51 51 51 51 51 51 51 51 51 2c 51 51 51 51 ea 51 d2 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 e8 51 51 51 51 51 51 51 da 51 51 51 c8 72 51 51 1a ee 51 51 51 51 51 51 f4 51 40 51 51 51 51 51 51 51 51 1c 51 51 51 51 84 51 51 51 2c 51 51 51 bc 51 0e 0e 51 40 51 51 51 51 51 51 51 26 90 51 2e f6 51 51 51 5e 51 0a 08 51 51 51 51 56 51 f0 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 b2 dc 51 5e 51 51 28 72 51 72 51 51 51 51 51 51 ec 51 51 51 51 51 51 32 51 51 3e 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 6c 51 51 24 51 24 de 51 51 51 51 51 a8 51 4c 44 51 51 51 1c 51 51 51 a2 51 51 51 51 51 51 51 51 51 51 51 51 51 da 51 51 51 52 51 c4 02 51 51 51 51 51 51 51 8c 51 51 51 51 51 0e 51 51 51 c8 d0 51 70 51 36 5e 51 0e a4 51 51 51 51 00 00 51 b4 51 06 44 51 51 51 ce 51 51 51 51 9e 51 51 51 51 4e 51 51 51 51 51 6e 51 51 51 51 d4 51 68 a4 51 51 51 51 51 3c 51 51 51 51 51 51 51 51 51 51 12 51 de 51 51 51 f2 51 00 51 51 02 51 e0 51 51 51 51 51 5a 51 51 51 51 18 51 51 51 51 51 51 51 51 ba 51 b0 51 1a 51 51 51 51 6e be 12 a8 51 51 a6 51 f0 51 a4 51 51 1a 0a 51 51 51 51 51 0a 51 51 58 51 51 51 51 51 51 51 51 51 51 90 ae 51 51 76 51 51 51 51 b8 51 2e 0e 00 58 51 51 b0 51 51 6e ea 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 d6 51 51 51 28 51 51 c6 51 51 51 51 51 51 e6 51 51 d8 51 51 86 51 1c 51 51 51 51 51 51 51 51 51 51 90 51 51 51 51 51 51 51 da 51 51 ce 51 51 cc 51 51 51 51 51 51 51 e0 51 51 7a 51 51 51 32 51 51 51 5c 51 51 1a 51 38 51 b8 51 51 51 51 51 51 51 51 51 92 51 4e fa 51 2a 00 51 4e 48 51 51 51 51 51 00 51 51 51 51 ca 51 aa f4 51 51 51 51 51 51 51 da 51 51 51 1e 00 50 00 51 51 6c 51 60 00 51 51 00 12 7a 51 12 36 51 51 51 51 51 51 00 51 51 51 51 10 51 4e fc 51 51 51 51 51 de 0e 60 51 51 fc 51 f0 51 c8 51 51 51 51 51 51 ba 51 51 51 e2 51 51 51 51 51 f6 51 51 51 de 51 51 51 51 51 51 7c 51 51 7a 51 fe 51 5a 8c 51 51 51 51 51 7e 51 c8 51 51 51 51 51 51 51 51 51 6a 51 51 51 51 51 de 51 51 16 f0 51 51 51 51 b2 51 51 ec 51 51 51 51 51 8c 00 51 7e 51 40 51 51 51 51 51 7c 51 51 51 92 51 51 51 51 00 26 a2 51 4e 51 51 51 51 3e 51 51 51 58 51 51 51 51 51 51 4e ce 51 51 51 51 51 20 51 51 51 51 51 51 51 51 51 00 24 51 51 51 51 51 51 d0 51 06 51 51 51 51 51 ee 51 51 51 6c 51 51 40 51 51 51 51 51 51 06 51 51 cc 51 51 d2 51 51 86 c0
*/
