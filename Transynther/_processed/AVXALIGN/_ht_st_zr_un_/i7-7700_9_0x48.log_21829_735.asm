.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1435, %rsi
nop
nop
xor $13419, %r11
mov (%rsi), %r12
nop
nop
nop
nop
nop
cmp $24094, %r13
lea addresses_normal_ht+0x16335, %rsi
lea addresses_normal_ht+0xaab8, %rdi
nop
nop
cmp %rax, %rax
mov $124, %rcx
rep movsb
xor %r12, %r12
lea addresses_UC_ht+0x25b5, %rcx
nop
sub %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
add $34854, %r12
lea addresses_normal_ht+0x1925, %r11
nop
inc %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r11)
xor %rcx, %rcx
lea addresses_WT_ht+0xc935, %rax
nop
nop
nop
nop
nop
sub $10266, %r11
movl $0x61626364, (%rax)
dec %rdi
lea addresses_WT_ht+0x80b5, %rsi
lea addresses_UC_ht+0x178d5, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
add $22518, %r11
mov $68, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x20b5, %rsi
lea addresses_D_ht+0x9cf5, %rdi
nop
nop
sub $6527, %rbx
mov $65, %rcx
rep movsw
nop
nop
nop
dec %r13
lea addresses_A_ht+0x11cb5, %rcx
nop
nop
nop
xor $17238, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xc5d5, %rcx
xor %rdi, %rdi
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
cmp $49170, %rbx
lea addresses_WT_ht+0x12d55, %rsi
lea addresses_A_ht+0x1e8ab, %rdi
nop
nop
nop
xor %rax, %rax
mov $7, %rcx
rep movsq
xor $541, %rax
lea addresses_WT_ht+0x1a8b5, %rsi
lea addresses_normal_ht+0x64b5, %rdi
nop
nop
nop
nop
nop
and $40991, %rbx
mov $94, %rcx
rep movsw
nop
nop
nop
cmp $12295, %r12
lea addresses_UC_ht+0xe4b5, %rdi
cmp %rcx, %rcx
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
nop
nop
nop
add $2052, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r8
push %rdi

// Store
lea addresses_UC+0x5c35, %r13
nop
nop
nop
cmp $53789, %rdi
movl $0x51525354, (%r13)
nop
nop
sub $65477, %r14

// Load
lea addresses_RW+0xde25, %r11
clflush (%r11)
sub %r8, %r8
movb (%r11), %r10b
nop
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_UC+0x1dbec, %r10
nop
nop
nop
nop
nop
cmp %r13, %r13
movb $0x51, (%r10)
nop
nop
dec %r10

// Store
lea addresses_normal+0x4705, %r8
nop
and %r11, %r11
movw $0x5152, (%r8)
nop
nop
nop
add $45439, %r13

// Store
lea addresses_WC+0x20bd, %r11
nop
nop
nop
nop
nop
xor $46583, %r15
movl $0x51525354, (%r11)
nop
nop
dec %r11

// Store
lea addresses_UC+0x12cb5, %r15
cmp %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
dec %r8

// Faulty Load
mov $0x5945170000000cb5, %r14
nop
inc %r15
mov (%r14), %edi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'2a': 2, 'ae': 1, '3c': 2, '4e': 1, '94': 1, '44': 2, '82': 1, '92': 1, '06': 1, '02': 2, '6a': 1, '66': 1, 'a8': 4, 'e4': 1, 'e8': 3, '8e': 1, '1e': 1, '04': 2, 'e0': 1, '4c': 1, '64': 1, 'f6': 2, 'ca': 1, 'f0': 1, 'f4': 3, '6c': 3, '80': 2, '50': 2, '00': 249, '38': 1, 'd2': 2, '9c': 2, '8a': 1, 'da': 1, '48': 1, '2c': 1, 'b2': 2, '14': 1, '88': 2, 'be': 2, '5c': 2, 'c4': 1, '28': 1, 'bc': 1, '12': 1, '3a': 1, '20': 2, 'e2': 2, '72': 1, '36': 1, 'b4': 3, '40': 2, 'a6': 1, 'fa': 2, '6e': 1, 'fc': 1, 'c2': 2, '30': 3, 'ec': 3, '54': 2, '68': 1, '58': 21443, 'd0': 1, '98': 1, '22': 2, '32': 1, 'b6': 1, 'a2': 1, 'b0': 2, 'f2': 1, '78': 1, 'd4': 1, 'd6': 1, '18': 4, '0e': 1, '62': 1, 'a4': 1, '0c': 1, '56': 2, '7e': 3, 'c8': 3, '26': 3, '90': 3, '46': 1, '96': 1, '34': 1, '76': 1, '10': 1, 'fe': 1, '1c': 1}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 36 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 18 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 02 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 30 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 50 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 c2 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
