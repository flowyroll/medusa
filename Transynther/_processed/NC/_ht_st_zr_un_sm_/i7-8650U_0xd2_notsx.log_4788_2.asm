.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a345, %rsi
lea addresses_D_ht+0x152f9, %rdi
and %r8, %r8
mov $27, %rcx
rep movsw
cmp %rbx, %rbx
lea addresses_WT_ht+0x7345, %r10
nop
nop
add %r13, %r13
movb (%r10), %bl
nop
nop
nop
nop
nop
sub $18834, %r8
lea addresses_D_ht+0x3479, %rbx
nop
nop
nop
and $38045, %r13
movl $0x61626364, (%rbx)
nop
nop
nop
inc %r8
lea addresses_WC_ht+0xe045, %r8
inc %r10
movl $0x61626364, (%r8)
nop
nop
inc %r13
lea addresses_A_ht+0x19345, %rdi
nop
sub $15295, %r13
movw $0x6162, (%rdi)
cmp $3329, %r13
lea addresses_D_ht+0xce85, %rsi
lea addresses_normal_ht+0x145d5, %rdi
nop
nop
nop
nop
nop
xor $29926, %rbp
mov $70, %rcx
rep movsq
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x6f05, %r8
nop
nop
nop
and %rsi, %rsi
vmovups (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
sub $4837, %rbx
lea addresses_A_ht+0x12295, %rsi
lea addresses_WC_ht+0x1e2c5, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $21, %rcx
rep movsb
nop
dec %r8
lea addresses_A_ht+0x1e345, %rsi
lea addresses_WC_ht+0x1b25, %rdi
nop
nop
nop
and $37846, %rbx
mov $37, %rcx
rep movsq
nop
nop
cmp $34909, %rsi
lea addresses_WC_ht+0x1b7e4, %rsi
lea addresses_D_ht+0xc345, %rdi
nop
nop
xor %r10, %r10
mov $73, %rcx
rep movsb
nop
and %rbp, %rbp
lea addresses_WT_ht+0x10c85, %rbp
nop
add $55030, %r10
mov (%rbp), %cx
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rdi
push %rdx
push %rsi

// Store
mov $0x270fe10000000345, %rdx
nop
nop
nop
nop
xor $50067, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovntdq %ymm1, (%rdx)
nop
dec %rdi

// Load
lea addresses_US+0xd2c8, %rsi
nop
nop
nop
sub $14651, %rdi
mov (%rsi), %r11
nop
nop
nop
nop
nop
dec %r11

// Faulty Load
mov $0x270fe10000000345, %rdx
nop
nop
nop
nop
nop
dec %r9
mov (%rdx), %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'58': 4147, '96': 3, '68': 4, '00': 135, '60': 5, 'ac': 5, '9a': 4, '1a': 8, 'ee': 4, '42': 6, 'bc': 8, '8a': 9, 'f6': 12, '0e': 3, 'e4': 7, '50': 7, 'f2': 5, '90': 4, '7e': 5, '9c': 5, 'f0': 9, '3c': 2, '62': 4, '6c': 3, 'fe': 4, '64': 5, '88': 6, '70': 6, '18': 7, '82': 1, '52': 2, 'be': 3, '24': 4, 'c8': 12, 'b4': 3, 'c4': 6, 'ea': 7, '4e': 8, 'a2': 6, 'fc': 7, '56': 2, '44': 12, '22': 4, '80': 2, 'aa': 6, '94': 2, 'd4': 7, '78': 1, '7c': 6, 'a0': 8, '72': 5, 'f8': 1, 'ae': 3, 'b8': 4, 'c6': 1, '02': 5, '0c': 4, '30': 3, 'd0': 5, '5c': 3, 'f4': 5, '74': 7, 'd2': 3, '36': 2, '6a': 2, '3e': 3, '92': 2, 'e6': 3, '6e': 4, 'd8': 7, 'e0': 4, '66': 4, '4a': 5, '3a': 3, '76': 4, 'fa': 5, 'b0': 7, '10': 4, 'e2': 4, '16': 3, '2e': 3, '54': 5, '5a': 2, 'a4': 4, '2a': 4, '1c': 4, 'd6': 3, 'c2': 6, '48': 4, '9e': 3, '28': 3, 'ca': 1, 'ec': 3, '46': 4, '08': 3, 'dc': 5, '38': 8, 'da': 4, '32': 1, 'ba': 3, '86': 4, '4c': 2, 'cc': 4, '40': 3, '5e': 2, 'de': 1, '0a': 1, 'c0': 5, '98': 2, 'a6': 2, '84': 4, 'a8': 4, '04': 4, '06': 2, '26': 1, '1e': 1, 'e8': 3, '34': 2, '12': 3, 'b2': 2, '20': 3, 'b3': 1, 'ce': 1, '7a': 1, '8c': 1}
58 58 58 58 58 58 58 96 58 58 58 58 68 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 ac 58 58 58 58 58 58 9a 58 96 58 58 58 1a 58 58 58 58 58 58 58 00 ee 58 58 58 58 58 42 58 58 58 58 58 58 58 bc 58 8a 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 f6 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 0e 58 0e 58 58 58 58 58 58 58 58 58 58 e4 58 58 58 58 58 58 50 58 58 f2 58 58 58 58 e4 58 90 58 58 58 58 58 58 58 58 7e 58 9c 58 58 f0 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 3c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 62 58 58 58 6c 58 58 58 58 58 fe 58 58 00 58 58 58 58 58 58 58 58 8a 58 58 58 64 58 58 58 58 58 58 58 58 58 88 70 58 58 58 58 58 58 18 58 58 58 58 82 58 58 58 58 58 00 58 58 58 58 52 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 be 58 00 58 58 24 58 58 58 58 58 58 58 58 58 58 c8 58 58 b4 58 c4 18 58 58 ea 58 4e 58 58 58 58 58 58 58 58 58 a2 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 1a 58 58 58 58 58 58 00 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 fc 58 58 58 58 58 58 58 58 58 58 58 c8 58 56 58 58 58 58 58 58 58 fc 58 58 44 58 58 00 00 58 00 58 58 58 58 58 22 58 58 58 80 50 58 58 58 58 58 58 58 58 aa 58 58 58 58 58 58 94 58 d4 58 58 58 58 58 58 58 58 58 78 58 58 58 58 58 58 58 58 58 58 58 7c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 a0 58 58 58 58 58 58 72 58 58 58 58 58 58 58 58 00 58 58 58 58 58 ac 58 58 c8 58 58 58 58 58 58 88 58 58 f6 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 88 58 f8 58 58 58 58 58 58 58 58 58 58 58 58 44 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 f6 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 f0 58 58 58 00 58 a0 c4 58 58 58 58 58 58 58 58 58 58 58 58 58 ae 58 58 58 58 58 58 58 58 c8 58 58 58 58 58 58 b8 58 58 58 58 c8 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 c6 58 58 58 58 58 58 fc 58 58 02 58 0c 58 30 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 d0 58 58 58 58 58 d4 5c 58 58 ea 58 58 58 9c 58 58 58 58 58 58 58 58 f4 58 58 58 58 58 58 58 00 58 58 58 00 58 c8 74 58 58 58 58 58 58 58 8a 58 58 58 58 58 58 58 58 58 58 d2 58 58 62 00 58 36 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 50 58 64 6a 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 3e 58 58 58 58 58 58 58 5c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 92 58 58 58 58 00 58 00 58 58 58 f4 58 58 58 58 58 58 58 1a 00 58 44 58 58 58 58 00 58 58 58 58 58 58 58 e6 58 58 58 58 58 58 58 58 58 58 6e a2 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 d8 58 58 58 58 58 58 58 58 58 58 58 58 58 60 50 74 58 58 58 58 58 58 58 58 58 58 58 58 4e 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 ea 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58
*/
