.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x5761, %rsi
lea addresses_D_ht+0x15361, %rdi
nop
nop
nop
and %r11, %r11
mov $21, %rcx
rep movsb
nop
add $16275, %rbx
lea addresses_normal_ht+0x8361, %r12
nop
nop
nop
nop
nop
dec %r11
movw $0x6162, (%r12)
nop
nop
cmp $20160, %rsi
lea addresses_WT_ht+0xef39, %r11
clflush (%r11)
nop
nop
nop
nop
nop
xor $24438, %rbp
movb (%r11), %r12b
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x10881, %rcx
and %rbp, %rbp
mov (%rcx), %rsi
nop
xor $5344, %r12
lea addresses_D_ht+0x1e1a1, %rdi
nop
and %r12, %r12
mov (%rdi), %ebx
and $59979, %rsi
lea addresses_normal_ht+0xcaa1, %rbx
nop
nop
nop
nop
and $44505, %r11
mov (%rbx), %edi
nop
add $62291, %rsi
lea addresses_WT_ht+0x11961, %rsi
lea addresses_UC_ht+0x14661, %rdi
clflush (%rdi)
nop
nop
and %r15, %r15
mov $63, %rcx
rep movsq
nop
nop
nop
nop
cmp $34367, %rbp
lea addresses_UC_ht+0x10661, %rcx
nop
nop
nop
nop
add $22312, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x98f1, %rbx
dec %r12
mov (%rbx), %r11w
nop
nop
add $48106, %r15
lea addresses_A_ht+0x120b, %rbp
xor $1986, %r11
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
xor $51697, %rcx
lea addresses_D_ht+0x1c261, %rsi
lea addresses_WT_ht+0x19361, %rdi
dec %r15
mov $35, %rcx
rep movsq
and %rbp, %rbp
lea addresses_UC_ht+0xf0e, %rbx
nop
nop
nop
add %rdi, %rdi
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %r11
nop
xor $46320, %r11
lea addresses_D_ht+0x5161, %rsi
lea addresses_D_ht+0x11621, %rdi
nop
nop
nop
nop
add $1838, %r12
mov $94, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $14630, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx

// Load
lea addresses_WT+0x18999, %r12
nop
nop
nop
sub $57508, %rbx
mov (%r12), %rcx
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_A+0x701, %r15
nop
nop
nop
nop
nop
cmp $29331, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%r15)
nop
nop
nop
inc %r9

// Store
lea addresses_UC+0x10961, %r8
nop
nop
nop
nop
nop
sub $62798, %r14
movl $0x51525354, (%r8)
sub %r14, %r14

// Store
lea addresses_UC+0x1a361, %r9
nop
nop
nop
nop
nop
sub $32044, %r14
movb $0x51, (%r9)
nop
nop
nop
nop
nop
and $29275, %rcx

// Store
mov $0x5a1cbf0000000161, %r8
clflush (%r8)
nop
nop
nop
inc %r14
movl $0x51525354, (%r8)
nop
nop
nop
and $4441, %r8

// Store
lea addresses_WT+0x17f61, %r15
add $52045, %rbx
movw $0x5152, (%r15)
nop
nop
nop
cmp %rcx, %rcx

// Load
mov $0x341, %r12
add $37269, %rcx
mov (%r12), %ebx

// Exception!!!
nop
nop
nop
mov (0), %r12
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_WC+0x15211, %r8
nop
nop
nop
nop
sub $53929, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movaps %xmm5, (%r8)
add %r9, %r9

// Store
lea addresses_US+0x13b61, %r12
nop
nop
add $32804, %rbx
mov $0x5152535455565758, %r14
movq %r14, (%r12)
nop
nop
nop
cmp $38190, %r9

// Faulty Load
lea addresses_US+0x13b61, %rcx
cmp %r12, %r12
movb (%rcx), %r15b
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'58': 73}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
