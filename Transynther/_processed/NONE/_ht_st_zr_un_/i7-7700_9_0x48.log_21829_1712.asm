.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x89ba, %r14
nop
nop
sub $57742, %rsi
mov (%r14), %r15
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x1d7c8, %rbx
nop
sub %rax, %rax
mov (%rbx), %r15w
nop
nop
nop
nop
nop
and $50775, %rax
lea addresses_normal_ht+0x1dfb0, %rbx
nop
and $27192, %r11
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm5
vpextrq $0, %xmm5, %rsi
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0xe920, %rsi
lea addresses_normal_ht+0x123d0, %rdi
nop
dec %rbx
mov $3, %rcx
rep movsq
cmp %rbx, %rbx
lea addresses_normal_ht+0x13fd0, %r11
nop
nop
xor %rax, %rax
mov (%r11), %r14
nop
and %rsi, %rsi
lea addresses_D_ht+0x43d0, %rsi
lea addresses_WC_ht+0xea50, %rdi
and %rbp, %rbp
mov $5, %rcx
rep movsb
nop
nop
nop
nop
sub $36362, %rcx
lea addresses_UC_ht+0x1d1d0, %rsi
lea addresses_WT_ht+0xbd0, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp $10091, %rax
mov $60, %rcx
rep movsq
xor $18373, %rax
lea addresses_UC_ht+0x19f7a, %rsi
lea addresses_WT_ht+0x1d150, %rdi
nop
nop
nop
nop
xor $32063, %rbx
mov $110, %rcx
rep movsq
nop
nop
cmp $20003, %rdi
lea addresses_normal_ht+0x63d0, %r14
sub $17157, %rdi
mov $0x6162636465666768, %rax
movq %rax, (%r14)
dec %rsi
lea addresses_UC_ht+0x12fbc, %r11
nop
nop
sub $37950, %rax
movw $0x6162, (%r11)
cmp %r15, %r15
lea addresses_A_ht+0xcd82, %rbx
clflush (%rbx)
add %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm5
and $0xffffffffffffffc0, %rbx
vmovntdq %ymm5, (%rbx)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbx
push %rdx

// Faulty Load
lea addresses_WT+0xcbd0, %rdx
nop
nop
and %r15, %r15
mov (%rdx), %bx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': True}}
{'2a': 4, 'ae': 110, '3c': 10, '4e': 5, '9e': 17, 'cc': 17, '94': 81, '44': 11, 'de': 13, '86': 1057, '82': 177, 'a0': 18, '92': 166, '70': 2536, '74': 1935, '06': 6, '02': 13, '16': 13, '66': 6, 'a8': 184, 'e4': 21, 'e8': 20, '8e': 738, '1e': 7, '04': 11, '3a': 22, '7a': 350, 'e0': 12, 'be': 6, '4c': 6, '64': 5, 'f6': 20, 'ca': 20, 'f0': 8, 'e2': 10, '6c': 647, '80': 139, '1a': 44, '52': 7, '4a': 7, '50': 8, '00': 92, '38': 20, 'd2': 10, 'b8': 10, '9c': 14, '42': 8, '8a': 1759, '5e': 2, '48': 9, '2c': 9, 'b2': 18, '72': 2652, '88': 1592, 'da': 12, '5c': 7, 'c4': 7, '28': 3, 'bc': 19, '12': 20, '24': 3, 'ce': 8, '8c': 1276, '20': 2, 'f4': 11, 'd8': 14, '3e': 4, '14': 18, 'ac': 188, '36': 9, '40': 15, 'dc': 9, 'b4': 18, 'a6': 111, '7c': 213, 'fa': 18, '6e': 1616, '08': 15, 'ba': 12, 'c2': 10, '30': 5, 'ea': 13, 'ec': 8, '54': 1, '68': 7, '58': 5, 'd0': 13, '98': 23, '22': 5, 'e6': 24, 'ee': 9, '32': 12, 'fc': 11, 'b6': 11, 'a2': 21, 'b0': 44, 'f8': 13, '5a': 4, 'f2': 12, '78': 552, 'aa': 211, 'c6': 16, 'd6': 18, '18': 9, '0e': 5, '62': 1, 'a4': 42, '0c': 20, '60': 1, '2e': 5, '56': 5, '7e': 134, 'c8': 11, '26': 7, 'd4': 14, '90': 322, 'c0': 12, '46': 6, 'fe': 17, '84': 481, '9a': 29, '6a': 128, '0a': 17, '34': 7, '76': 1141, '10': 15, '96': 25, '1c': 17}
6e 70 8a 70 7e 6e 72 6e ea 8c 72 8a 86 74 74 70 fe 88 6e 84 8e 90 70 74 72 ac 8a 70 8c 70 8a 72 70 76 6e 74 6e 8c 6e 88 6e 76 6e cc 1c 70 8a 6e 8e 70 74 7e 78 8a 72 8a 6e 7a 72 6e 8a 6e 84 8a 8a 72 86 74 6c 70 72 8c 6e 8c 70 6e 74 74 72 aa 8c 48 88 92 88 72 72 70 ac 8c 70 88 6e 8c 6e 80 70 d2 90 70 8a 6e 74 70 72 88 6a 88 74 8a 70 72 74 aa 8e 82 88 1a 74 72 a8 8a 74 8c 78 88 78 6c 72 8e 14 7c 90 6c 84 7e aa 88 6c 8c 70 88 74 70 74 70 72 8a 72 82 78 6c 76 a8 8e 86 8c 70 88 80 8a 76 6e 8c a8 90 f6 8c 6e 74 6e 9e 8c 74 84 72 74 72 70 8e 78 8e 74 8c 76 78 70 7c 9a 6e 8e 76 86 72 70 d4 e6 8a 70 8c 7a 8e 78 72 6c a8 8c 72 88 70 78 74 9c 8a 6e 86 72 7a 70 76 8e 70 88 70 86 fa 86 74 70 72 ae 8a 74 82 76 86 6e 70 70 ac 86 80 8a 70 8c 6e 72 76 08 8a 70 84 70 84 72 72 6e ae 86 74 86 76 70 76 70 70 8e 78 8e 7a 72 70 aa 86 76 8c 8a 72 70 76 ae 8a 1e 86 70 8c 88 88 72 70 7a f2 8a 74 8c 72 8e 8a 76 72 70 e4 84 72 8c 6c 74 6a e6 8c 72 8e 74 8c 72 78 76 10 86 70 86 6a 70 72 70 72 a8 88 76 70 72 72 d8 8e 72 8e 72 86 72 70 6e 7e 8c aa 84 6e 88 74 72 74 ae 8a 70 8a 6c 6e 72 ac 70 70 8c 70 74 6c 72 72 ce 8c 70 88 72 8a 72 7c 8c 70 8e 70 86 84 70 72 70 b4 8a 6e 94 1a 70 72 70 6e 72 84 18 8c 72 8c 72 88 72 74 72 6e 88 72 84 74 8e 6e 76 6a 24 8e 70 90 8c 94 70 6c 72 ba 8c 6c 8e 70 8c 72 70 8c c2 8e 6e 88 74 6a 6e 00 8e 78 86 76 86 70 74 76 9a 86 74 8c 72 88 70 7c 7a 7e 8c 6e 86 74 78 70 ea 86 72 88 74 86 72 72 74 ae 8a 72 8a 72 18 7a ae 8c 74 8a 70 76 74 70 8e 6e 8a 72 8a 70 6c 6a 70 8c 74 8c 6e 8c 72 70 7a 8e 8e 72 8e 6e 6e 6e 86 8a 76 90 6e 8e 00 76 70 a6 8a 70 88 80 88 70 8a 70 74 72 6e 8c 38 88 74 86 70 6e 6e ac 8a 7c 8c 6e 88 6e 74 72 6e 88 72 8e 88 80 72 aa 8a 78 8e 72 72 72 8a 6e 90 6e 88 72 70 74 ae 8c 70 84 6c 72 70 ac 72 72 30 6e 8a 74 8a 72 8a 6c 6e 70 78 8a 72 88 72 94 72 70 72 d8 86 72 8a 38 88 70 72 70 76 8c 74 8e 74 74 74 72 8e 6e 8a 70 8e 6e 8c 72 70 70 e4 8e 70 90 6e 70 aa 8c 6e 86 78 88 6a 78 76 80 86 82 90 88 8a 76 78 72 70 8e 82 88 76 86 76 92 70 a8 8a 72 8c 74 88 70 74 72 aa 6e 7a 8a 74 8e 72 8a 72 aa 82 0a 34 70 86 8a 88 72 8a 6c 78 6e 76 88 94 86 76 8a 6e 6c 72 72 86 6e 84 70 70 70 72 88 6e 86 74 8c 70 8c 6e 7c 74 f0 88 74 8a 86 86 70 70 7c ac 8c 72 8a 70 76 72 0c 72 98 8c 72 88 70 72 70 70 8e 72 88 76 86 74 8c 6e 72 6e aa 8a 88 88 72 70 70 a6 8a 70 88 78 70 78 c2 8a 70 88 72 6c 72 80 8e 70 8e 96 88 6e 6c 72 cc 8e 72 86 72 74 ae 86 6e 84 70 8c 6e 72 72 78 32 74 8e 8a 70 74 78 8a 6a 8e 70 8e 74 8c 74 74 8c 66 88 70 86 88 72 7a 2c 76 88 ca 90 84 90 88 88 70 6e 70 d4 8a 72 88 6e 8c 74 72 7a e4 88 6e 8a 6c 8e 70 72 80 70 8a 74 8a 8c 72 70 76 a2 86 6e 90 72 8e 6e 6a 6e 6e 86 74 38 72 8a 72 6c 70 84 8c 74 84 6e 8a 74 88 72 72 72 9a 8a 6e 8a 74 86 6e 72 72 ac 7c 8a 88 74 24 74 9c 86 86 88 6e 8c 70 70 72 ae 8e 70 8c 70 74 70 6e 88 7c 8a 74 84 72 78 7c 92 8a 82 92 8a 88 72 76 76 a6 88 6c 88 70 8c 6e 74 70 8a 74 8c 6e 86 70 72 70 a0 12 6c 84 72 8c 6e 80 72 1c 88 76 8c 70 86 76 72 7c e8 8a 70 88 90 7e 70 70 70 9e 88 7a 8a 82 8a 70 72 6e ac 8a 76 8a 70 70 72
*/
