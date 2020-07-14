.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x18e89, %rbp
nop
nop
nop
nop
and %rdx, %rdx
movl $0x61626364, (%rbp)
nop
add $40634, %rcx
lea addresses_normal_ht+0x2909, %r8
nop
nop
nop
nop
nop
add $35730, %r9
mov (%r8), %ebx
nop
nop
nop
nop
cmp $49475, %r9
lea addresses_D_ht+0x17889, %rsi
lea addresses_normal_ht+0xbb09, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $44, %rcx
rep movsl
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0xd789, %rbx
nop
sub $10971, %r8
mov $0x6162636465666768, %rbp
movq %rbp, (%rbx)
nop
nop
nop
and $33396, %rdi
lea addresses_WC_ht+0xe00, %rbx
nop
sub $38234, %rdi
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %r9
nop
add $28375, %rbx
lea addresses_UC_ht+0x154d9, %rsi
nop
nop
nop
cmp %r9, %r9
mov (%rsi), %r8w
nop
nop
nop
nop
xor $32699, %r9
lea addresses_WT_ht+0x4f89, %r8
nop
nop
nop
and $32292, %rbx
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
dec %r9
lea addresses_D_ht+0x9ac9, %rcx
clflush (%rcx)
xor %rbx, %rbx
mov (%rcx), %r9d
add %rsi, %rsi
lea addresses_normal_ht+0xa789, %rsi
lea addresses_normal_ht+0xdf89, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $46, %rcx
rep movsl
nop
nop
nop
xor $59468, %rcx
lea addresses_WC_ht+0x1c789, %rsi
lea addresses_D_ht+0x3989, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $64, %rcx
rep movsw
nop
xor $36786, %rcx
lea addresses_normal_ht+0x11389, %rsi
lea addresses_UC_ht+0xc8f9, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $74, %rcx
rep movsq
and $12347, %rdi
lea addresses_D_ht+0x12515, %rsi
cmp $22219, %rcx
mov $0x6162636465666768, %r8
movq %r8, (%rsi)
nop
nop
and %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x13869, %r11
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%r11)
nop
nop
nop
sub $62242, %r10

// REPMOV
lea addresses_normal+0xcf5, %rsi
lea addresses_normal+0xd389, %rdi
clflush (%rdi)
nop
nop
add $14847, %r14
mov $89, %rcx
rep movsq
nop
nop
inc %r12

// Store
lea addresses_WC+0x1b589, %r10
nop
nop
nop
nop
nop
add %rcx, %rcx
movw $0x5152, (%r10)
nop
nop
nop
and $60438, %r10

// Store
lea addresses_PSE+0x10789, %r10
and %rbx, %rbx
movw $0x5152, (%r10)
nop
nop
nop
nop
cmp %r11, %r11

// Store
mov $0x78ce820000000389, %rbx
nop
and %r10, %r10
movl $0x51525354, (%rbx)
nop
xor $18654, %r11

// Store
lea addresses_D+0x12f89, %rdi
nop
nop
add $36984, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
nop
sub %r12, %r12

// Faulty Load
lea addresses_D+0x12f89, %rbx
nop
nop
cmp %r11, %r11
mov (%rbx), %esi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 4, 'NT': True, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'58': 52}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
