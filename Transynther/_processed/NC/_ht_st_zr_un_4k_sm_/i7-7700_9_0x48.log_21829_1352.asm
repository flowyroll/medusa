.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xc23c, %rsi
lea addresses_normal_ht+0x14e3c, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $105, %rcx
rep movsq
nop
sub $48548, %rax
lea addresses_D_ht+0x6d6c, %r12
xor %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r12)
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xd73c, %rsi
lea addresses_WC_ht+0x15df4, %rdi
clflush (%rsi)
inc %r13
mov $66, %rcx
rep movsl
xor $27599, %rsi
lea addresses_WC_ht+0x687c, %r8
nop
nop
nop
nop
nop
sub %rax, %rax
mov (%r8), %r12d
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x13a3c, %rsi
nop
sub $20091, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
and $0xffffffffffffffc0, %rsi
movntdq %xmm7, (%rsi)
nop
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rdx

// Store
lea addresses_UC+0x963c, %r11
nop
nop
dec %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%r11)
nop
nop
nop
nop
nop
xor %r14, %r14

// Store
mov $0x6db73e0000000e3c, %rax
clflush (%rax)
inc %r13
movl $0x51525354, (%rax)
sub $29299, %r13

// Store
lea addresses_US+0xee3c, %r12
add $35119, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%r12)
nop
nop
xor %r14, %r14

// Store
mov $0x6db73e0000000e3c, %r12
nop
nop
add %rdx, %rdx
movw $0x5152, (%r12)
nop
dec %r11

// Faulty Load
mov $0x6db73e0000000e3c, %rax
nop
dec %rdx
mov (%rax), %r14w
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rdx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
{'2a': 3, 'ae': 6, '3c': 2, '4e': 2, '9e': 3, '44': 1, 'fe': 2, '86': 3, 'a0': 5, '92': 2, '70': 2, '74': 4, '06': 2, '6a': 4, '66': 6, 'a8': 2, '8a': 1, 'aa': 2, 'e4': 3, 'e8': 4, '8e': 1, '04': 3, 'e7': 2, '8c': 4, 'e0': 3, '4c': 2, '64': 2, 'f6': 4, 'ca': 2, 'f0': 3, 'f4': 4, '6c': 3, '80': 3, '1a': 4, '52': 20108, '4a': 2, '50': 1, '00': 558, '38': 5, 'd2': 4, 'b8': 2, '26': 2, '42': 3, '2e': 3, 'be': 5, '48': 2, '2c': 3, 'b2': 2, '72': 5, '7e': 3, '88': 3, '5c': 1, 'c4': 4, 'bc': 8, '12': 3, '24': 4, 'ce': 1, '3a': 6, 'e2': 3, 'd8': 2, 'd6': 1, '14': 2, '36': 2, '20': 1, 'dc': 3, '40': 4, 'a6': 6, '7c': 3, 'fa': 6, '6e': 2, '08': 1, 'ba': 1, 'c2': 3, '30': 1, 'ea': 1, 'ec': 4, '54': 70, '68': 1, '58': 752, 'd0': 3, '98': 2, '22': 3, 'e6': 5, 'ee': 9, '32': 3, 'b6': 3, 'a2': 2, '7a': 1, 'b0': 2, 'f8': 3, 'f2': 7, '0a': 5, 'd4': 1, 'c6': 1, 'cc': 3, '18': 2, '34': 3, '62': 2, 'a4': 3, '0c': 2, '60': 6, '56': 1, '9c': 7, 'c8': 5, 'b4': 2, '90': 5, 'c0': 2, '46': 3, '96': 3, '84': 1, '9a': 1, '1c': 4, '78': 2, '0e': 4, '76': 2, '10': 4, '28': 2, '5a': 4}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 54 9e 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 58 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 58 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 c2 00 52 52 52 52 58 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6a 52 52 52 04 52 52 52 52 52 52 52 52 58 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 58 52 52 52 52 52 52 58 52 52 58 58 52 52 52 52 52 58 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 58 52 52 52 00 52 52 58 52 52 52 52 52 c0 52 52 52 52 52 52 52 fa 52 52 52 52 52 52 58 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 58 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 58 ae 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 58 52 52 52 52 52 52 58 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 58 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 58 52 52 52 52 52 52 52 52 52 54 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 ce 52 52 52 00 52 52 52 52 52 58 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 24 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 58 52 52 52 58 52 52 20 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 58 52 52 52 52 52 58 52 52 52 52 52 52 52 52 52 58 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 58 52 52 52 52 52 52 52 52 52 52 00 52 52 58 52 00 10 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 58 52 52 52 52 52 52 52 52 58 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 ae 52 52 52 52 52 32 52 52 52 52 52 52 96 1c 52 52 52 52 52 52 52 52 52 00 52 52 52 28 52 52 52 52 52 52 74 52 52 52 52 52 00 52 00 52 58 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 58 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 58 52 52 52 52 52 58 fa 52 52 e0 52 52 52 52 52 52 52 52 50 58 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 0e 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 9c 52 52 52 52 00 52 52 52 52 52 52 52 52 52
*/
