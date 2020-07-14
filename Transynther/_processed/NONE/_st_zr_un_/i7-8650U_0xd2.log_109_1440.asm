.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x15e49, %rax
nop
xor $41326, %r13
movb (%rax), %dl
nop
inc %rdx
lea addresses_D_ht+0xff49, %rbx
cmp $42525, %r9
mov (%rbx), %si
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x18439, %rsi
lea addresses_WC_ht+0x1425d, %rdi
clflush (%rdi)
nop
nop
nop
mfence
mov $3, %rcx
rep movsw
nop
nop
nop
nop
add %rax, %rax
lea addresses_WT_ht+0xa975, %rsi
lea addresses_WC_ht+0xfcc9, %rdi
nop
nop
add $64626, %rax
mov $110, %rcx
rep movsb
nop
nop
nop
nop
add $56813, %rdi
lea addresses_normal_ht+0x16849, %rsi
lea addresses_UC_ht+0xdf49, %rdi
clflush (%rsi)
nop
cmp %rdx, %rdx
mov $42, %rcx
rep movsw
sub $43909, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xf4a9, %rsi
nop
nop
cmp $7137, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovaps %ymm4, (%rsi)
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_D+0x7609, %r8
nop
nop
nop
inc %r9
movw $0x5152, (%r8)
nop
nop
nop
and $37005, %rdx

// Store
lea addresses_WC+0x2f49, %rbp
clflush (%rbp)
inc %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
nop
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_UC+0xef49, %rdi
nop
nop
cmp %r10, %r10
mov (%rdi), %r9w
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'58': 74, '30': 1, '06': 5, '00': 4, '16': 1, '10': 1, '08': 1, '20': 1, '18': 2, '0e': 2, '26': 4, '38': 3, '0c': 2, '92': 1, '1e': 1, '14': 1, '0a': 1, '1a': 1, '28': 3}
58 58 58 30 58 58 58 58 58 58 58 58 06 58 58 00 16 58 10 58 58 58 08 58 58 20 58 00 06 58 58 18 58 58 0e 58 58 26 26 58 38 0c 58 58 58 0c 26 58 58 58 92 58 58 1e 06 58 58 58 58 58 58 58 58 58 58 58 00 06 58 58 58 58 58 14 58 0a 26 58 38 58 58 1a 58 58 58 58 06 28 38 58 58 18 58 58 58 28 58 58 58 58 58 00 28 58 58 58 58 0e 58
*/
