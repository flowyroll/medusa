.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x9ef4, %rsi
nop
nop
nop
nop
nop
and $59874, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rsi)
nop
xor %r12, %r12
lea addresses_A_ht+0xf0f4, %r9
nop
sub $54322, %rbx
mov (%r9), %r8d
nop
nop
nop
nop
nop
cmp $54534, %r12
lea addresses_WT_ht+0x1a6f4, %r8
nop
nop
nop
nop
xor %r13, %r13
movw $0x6162, (%r8)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x12cbc, %r12
clflush (%r12)
nop
nop
nop
nop
nop
xor %r9, %r9
mov (%r12), %rsi
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x2ef4, %rsi
lea addresses_WC_ht+0x4620, %rdi
cmp $1617, %r9
mov $112, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x164f4, %rsi
lea addresses_D_ht+0x15ef4, %rdi
clflush (%rsi)
and $22617, %rbx
mov $106, %rcx
rep movsq
nop
add $59490, %r9
lea addresses_D_ht+0x1e474, %r12
nop
nop
nop
sub %rdi, %rdi
mov (%r12), %r13d
nop
nop
nop
nop
cmp $64871, %r9
lea addresses_normal_ht+0x1d7d8, %r13
nop
nop
nop
add %r12, %r12
movups (%r13), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x1e2c, %rbx
nop
nop
nop
cmp $806, %r13
movb (%rbx), %r9b
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0xe934, %rsi
lea addresses_WC_ht+0x1baf4, %rdi
nop
nop
nop
nop
add $44392, %r8
mov $66, %rcx
rep movsl
nop
nop
nop
nop
nop
and $57130, %r8
lea addresses_normal_ht+0x10318, %rdi
nop
nop
xor %rsi, %rsi
mov (%rdi), %cx
sub %r9, %r9
lea addresses_WT_ht+0x89f4, %rsi
lea addresses_WC_ht+0x1ecca, %rdi
clflush (%rdi)
nop
and $52507, %r9
mov $126, %rcx
rep movsb
nop
nop
nop
add $48938, %rbx
lea addresses_A_ht+0xe8c4, %rsi
lea addresses_UC_ht+0x12ae0, %rdi
nop
nop
nop
nop
nop
add $32873, %r12
mov $118, %rcx
rep movsq
sub $49556, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_A+0x143f4, %rcx
nop
nop
nop
add $41507, %rbp
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
nop
nop
and %rcx, %rcx

// REPMOV
lea addresses_WC+0x76f4, %rsi
lea addresses_WT+0x186f4, %rdi
nop
inc %rbp
mov $74, %rcx
rep movsw
nop
nop
xor %r11, %r11

// Load
lea addresses_normal+0x15074, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov (%rdi), %r12
nop
add %r12, %r12

// Store
lea addresses_A+0x10bf8, %rsi
nop
dec %rcx
movl $0x51525354, (%rsi)
nop
add %r12, %r12

// Store
lea addresses_WT+0xb6f4, %rdi
nop
nop
nop
xor $29932, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
nop
dec %rsi

// Load
lea addresses_UC+0x4876, %rbx
cmp $51490, %r11
mov (%rbx), %edi
cmp %rbp, %rbp

// Faulty Load
lea addresses_UC+0x1a6f4, %rbx
nop
nop
nop
nop
nop
dec %rcx
mov (%rbx), %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}}
{'37': 526}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
