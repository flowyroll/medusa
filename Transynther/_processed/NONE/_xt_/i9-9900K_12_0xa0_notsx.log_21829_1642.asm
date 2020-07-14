.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xaca6, %rsi
lea addresses_WC_ht+0xc9ee, %rdi
sub %r11, %r11
mov $40, %rcx
rep movsw
nop
add $55274, %rax
lea addresses_A_ht+0x69a6, %rsi
lea addresses_WC_ht+0x189a6, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $85, %rcx
rep movsb
nop
nop
add $42726, %rcx
lea addresses_WC_ht+0x1e206, %rdi
and %rcx, %rcx
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %rbp
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0xe666, %rsi
lea addresses_UC_ht+0xcea6, %rdi
nop
dec %r9
mov $72, %rcx
rep movsl
cmp %rsi, %rsi
lea addresses_UC_ht+0x2162, %rsi
lea addresses_UC_ht+0xe2c2, %rdi
nop
nop
nop
xor $62017, %r12
mov $7, %rcx
rep movsl
nop
nop
add %rax, %rax
lea addresses_A_ht+0x145a6, %rsi
lea addresses_A_ht+0x1b66, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %rbp, %rbp
mov $84, %rcx
rep movsl
nop
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x17e6a, %r12
and $13630, %rsi
mov (%r12), %r11w
nop
nop
cmp $52712, %rdi
lea addresses_D_ht+0x8a26, %rsi
lea addresses_WC_ht+0x8cd6, %rdi
nop
nop
cmp $58452, %r12
mov $127, %rcx
rep movsq
sub %r11, %r11
lea addresses_normal_ht+0xf9a6, %rsi
lea addresses_UC_ht+0x48c4, %rdi
nop
nop
nop
sub $14139, %r9
mov $26, %rcx
rep movsq
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x127a6, %r12
nop
nop
nop
nop
nop
dec %rsi
movups (%r12), %xmm2
vpextrq $0, %xmm2, %r11
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x16a66, %r11
sub %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r11)
cmp $33627, %rcx
lea addresses_A_ht+0x4cfc, %rbp
cmp %r12, %r12
movups (%rbp), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
sub $7213, %rbp
lea addresses_UC_ht+0x11026, %rsi
add $1331, %r9
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %rax
cmp %rsi, %rsi
lea addresses_D_ht+0x7226, %rdi
nop
nop
nop
nop
xor $41376, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm1
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm1, (%rdi)
nop
inc %rbp
lea addresses_normal_ht+0x159a6, %rsi
lea addresses_normal_ht+0x9c06, %rdi
nop
sub %rbp, %rbp
mov $106, %rcx
rep movsl
cmp $60179, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1aa26, %r11
nop
nop
sub $31928, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r11)
sub %r14, %r14

// Store
lea addresses_UC+0xe7c6, %rax
nop
cmp $5807, %rbp
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
cmp $30446, %rax

// Store
lea addresses_A+0x31a6, %rbp
clflush (%rbp)
mfence
movl $0x51525354, (%rbp)
add $59221, %rbp

// Store
lea addresses_normal+0x195a6, %rcx
and $33146, %r11
movw $0x5152, (%rcx)
nop
nop
nop
inc %rax

// REPMOV
lea addresses_A+0x1455, %rsi
lea addresses_WT+0xd982, %rdi
clflush (%rdi)
xor %rbp, %rbp
mov $29, %rcx
rep movsb
and $20449, %rdi

// Store
lea addresses_WT+0x1232c, %r13
nop
nop
inc %r14
movl $0x51525354, (%r13)
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_WT+0xe8a6, %r13
nop
cmp $36469, %r14
movw $0x5152, (%r13)
nop
add $19361, %rcx

// Store
lea addresses_WC+0x193a6, %r11
nop
nop
nop
xor $64173, %rax
mov $0x5152535455565758, %r14
movq %r14, (%r11)
sub $57549, %rbp

// Faulty Load
lea addresses_D+0x1c9a6, %r11
clflush (%r11)
nop
nop
nop
add $49311, %rsi
mov (%r11), %rax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_A', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
