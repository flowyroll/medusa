.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x11331, %r10
nop
nop
nop
xor %r15, %r15
movups (%r10), %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0xfaf4, %rsi
lea addresses_UC_ht+0x1b894, %rdi
clflush (%rsi)
nop
cmp $47090, %rbx
mov $36, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $36898, %r10
lea addresses_normal_ht+0x11244, %rsi
lea addresses_WT_ht+0x18d54, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $75, %rcx
rep movsl
nop
xor $6246, %r10
lea addresses_WT_ht+0xee04, %rsi
lea addresses_D_ht+0x19fb4, %rdi
nop
xor %r15, %r15
mov $59, %rcx
rep movsw
nop
nop
add %r12, %r12
lea addresses_WC_ht+0xfacc, %r15
nop
nop
nop
add $40652, %rdi
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
nop
xor $9078, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdx
push %rsi

// Store
mov $0x122be90000000ef4, %r13
sub %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, (%r13)
nop
cmp %r11, %r11

// Load
mov $0x122be90000000ef4, %rcx
nop
nop
nop
nop
add %r14, %r14
movb (%rcx), %dl
nop
xor $42008, %rdx

// Faulty Load
mov $0x122be90000000ef4, %r14
nop
cmp %rcx, %rcx
mov (%r14), %bp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'dst': {'same': True, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'4a': 16, '48': 17, '12': 13, '36': 22, '2e': 14, '92': 9, 'ba': 11, '84': 13, 'e6': 14, '16': 12, '6c': 15, '3a': 9, '18': 14, 'bc': 14, 'e0': 18, '60': 15, 'c8': 12, 'de': 14, 'b6': 16, '58': 19640, '3e': 8, '9a': 20, '9e': 10, '26': 14, 'a6': 16, '0a': 10, 'b0': 12, 'ce': 9, '68': 15, 'd4': 20, '72': 18, '08': 15, 'f6': 11, '34': 19, '8e': 15, '14': 10, '70': 11, 'a2': 18, '88': 13, '76': 16, '80': 15, 'f2': 14, '82': 13, '86': 11, '10': 10, 'fe': 15, 'e2': 14, '04': 14, '56': 5, '5e': 18, '52': 21, 'a0': 14, 'd2': 25, '0e': 11, 'f8': 14, 'ec': 13, '74': 19, 'ae': 7, 'c6': 14, 'ac': 11, 'aa': 13, '90': 14, '78': 11, '7e': 14, 'dc': 18, '44': 14, 'f0': 14, 'ca': 21, 'd6': 16, '1e': 12, 'da': 19, '24': 20, '20': 14, 'fc': 20, 'ee': 16, 'b8': 12, '5a': 14, '28': 12, 'c2': 15, '2a': 9, '6a': 9, '02': 12, '1a': 13, 'e8': 24, '5c': 17, '0c': 15, '40': 12, 'fa': 16, '9c': 14, 'e4': 23, '4c': 19, 'd8': 20, '3c': 25, 'c0': 17, 'f4': 19, '7a': 16, '94': 19, 'b4': 10, '8a': 16, '2c': 16, 'a8': 17, '06': 17, '54': 16, '00': 329, '8c': 9, 'b2': 6, 'a4': 20, 'c4': 18, 'be': 11, '64': 11, '38': 16, '50': 14, '7c': 21, '66': 12, 'd0': 14, '46': 13, 'ea': 13, 'cc': 13, '30': 13, '22': 18, '6e': 18, '62': 19, '98': 19, '96': 15, '1c': 13, '42': 15, '32': 17, '4e': 16}
32 62 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 28 58 58 00 58 58 58 58 58 aa 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 f0 fa 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 b6 58 58 90 58 58 58 30 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 98 58 58 58 58 58 58 58 58 6c 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 d4 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 78 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 c6 58 58 58 58 58 58 58 58 58 c2 58 58 58 00 58 58 58 58 58 58 58 58 cc 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e4 58 58 58 58 58 58 58 58 3a 58 58 5a 58 58 58 58 58 58 58 58 aa 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 48 58 58 58 58 f8 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e2 58 58 58 da 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 d6 58 58 58 58 de 58 58 58 58 fa 18 2a 58 58 00 58 58 58 58 58 58 58 58 10 42 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 18 58 f8 58 58 58 2e 58 58 58 58 58 58 58 58 58 58 06 58 58 58 58 58 58 de 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 9a 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 0c 58 58 58 58 58 58 58 58 00 2c 58 58 58 3c 58 58 58 58 58 58 58 58 a2 a6 94 58 58 58 58 58 58 58 58 58 58 6a 58 58 58 58 58 58 00 00 58 58 58 34 58 58 58 58 58 58 58 58 20 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 ce 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e4 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 46 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 ea d0 58 58 58 58 58 58 22 58 58 58 58 58 58 58 58 58 58 58 58 58 e8 58 58 58 58 58 58 58 58 58 2c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 62 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 7e 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 12 58 58 58 58 58 58 58 62 58 58 58 58 58 58 58 58 06 58 58 58 52 58 58 58 58 00 aa 58 58 58 58 58 58 58 58 e0 58 58 58 dc 58 58 58 58 58 58 58 5c 58 58 58 58 58 7c 58 58 58 58 58 58 58 c0 58 58 58 40 58 58 de 58 58 58 58 58 ee 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 a4 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 12 58 58 58 58 c0 58 58 58 58 58 1a 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 4c 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
