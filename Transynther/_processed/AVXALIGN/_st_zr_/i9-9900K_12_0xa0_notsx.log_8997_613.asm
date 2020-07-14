.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x793b, %rsi
lea addresses_normal_ht+0x3230, %rdi
nop
nop
nop
nop
nop
add $24131, %r15
mov $111, %rcx
rep movsq
add $38296, %r8
lea addresses_A_ht+0x113bb, %r9
nop
add %r8, %r8
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0xf93b, %rsi
lea addresses_D_ht+0x853b, %rdi
nop
nop
nop
cmp %rax, %rax
mov $7, %rcx
rep movsq
nop
add %r15, %r15
lea addresses_normal_ht+0xeb3b, %rsi
nop
nop
nop
nop
nop
and $60172, %rdi
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
dec %rdi
lea addresses_A_ht+0x17bb, %rsi
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rsi)
add %rcx, %rcx
lea addresses_WC_ht+0x17b3b, %rdi
nop
mfence
mov (%rdi), %r9d
nop
nop
nop
nop
xor $17927, %rcx
lea addresses_UC_ht+0x929b, %r8
nop
and $56412, %rsi
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
and %r8, %r8
lea addresses_A_ht+0x357b, %rcx
xor %rsi, %rsi
mov (%rcx), %r15
and %rsi, %rsi
lea addresses_UC_ht+0xdf3b, %rax
nop
nop
nop
nop
nop
inc %r9
mov (%rax), %di
nop
nop
nop
cmp $19416, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rax
push %rbx

// Store
lea addresses_WT+0x7d3b, %rax
nop
nop
nop
nop
nop
add $38176, %rbx
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
nop
nop
sub %r12, %r12

// Load
lea addresses_RW+0x4eb, %r9
nop
nop
nop
nop
sub $62747, %r11
movb (%r9), %r13b
nop
xor $1082, %r9

// Store
lea addresses_WC+0xd029, %rbx
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
xor $8594, %r12

// Load
lea addresses_normal+0x157c3, %rax
nop
nop
nop
nop
nop
dec %rbx
mov (%rax), %r13w
nop
cmp $45003, %r13

// Store
lea addresses_RW+0x1133b, %r11
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, (%r11)
nop
nop
dec %rax

// Faulty Load
lea addresses_A+0x14d3b, %r9
nop
nop
cmp %rax, %rax
mov (%r9), %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': True, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'58': 881, '00': 8116}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 58 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 58 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 58 00 00 00 00 58 00 58 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 58 58 00 00 00 00 58 58 00 00 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 58 00 58 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 58 58 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58
*/
