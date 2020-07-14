.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x14e3b, %rdx
nop
nop
nop
nop
nop
xor $2552, %r12
mov $0x6162636465666768, %r10
movq %r10, (%rdx)
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x1393b, %rcx
nop
nop
nop
nop
nop
cmp %rax, %rax
mov (%rcx), %r13d
nop
nop
nop
sub %r8, %r8
lea addresses_A_ht+0x17c43, %r13
and $5998, %rax
movups (%r13), %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0xd6bb, %r12
nop
nop
nop
cmp $11750, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
and %r12, %r12
lea addresses_A_ht+0x193b5, %r12
nop
nop
dec %rdx
movl $0x61626364, (%r12)
nop
sub %rax, %rax
lea addresses_D_ht+0x14f3b, %rsi
lea addresses_UC_ht+0x1976f, %rdi
nop
nop
nop
cmp %rax, %rax
mov $53, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $6485, %rax
lea addresses_WC_ht+0x243b, %r8
nop
nop
nop
nop
add $56240, %r12
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
and $47508, %r13
lea addresses_A_ht+0x19e83, %rsi
lea addresses_normal_ht+0x10dfb, %rdi
nop
and $23334, %rdx
mov $107, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x6d3b, %r10
clflush (%r10)
nop
nop
nop
sub $27408, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm3
and $0xffffffffffffffc0, %r10
vmovaps %ymm3, (%r10)
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_A_ht+0xa93b, %rsi
lea addresses_WT_ht+0x185fb, %rdi
clflush (%rsi)
nop
nop
nop
nop
mfence
mov $10, %rcx
rep movsb
nop
nop
inc %r10
lea addresses_UC_ht+0xb87b, %r12
nop
nop
cmp $59547, %rdx
movups (%r12), %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
nop
nop
nop
and $46404, %r8
lea addresses_D_ht+0x8eb, %rcx
xor %rdi, %rdi
mov (%rcx), %r12
nop
nop
and $40241, %r12
lea addresses_D_ht+0xa8bb, %rsi
and $7707, %r12
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x1953b, %r13
nop
nop
nop
sub %r10, %r10
mov (%r13), %rsi
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rsi

// Store
lea addresses_D+0x4e3b, %r13
nop
nop
nop
nop
add $55113, %r8
movw $0x5152, (%r13)
xor %r12, %r12

// Store
lea addresses_D+0x176b, %r12
nop
and %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, (%r12)
nop
nop
add $10924, %r8

// Load
lea addresses_D+0x14420, %rsi
nop
nop
nop
nop
cmp %r12, %r12
mov (%rsi), %r14w
nop
nop
nop
sub $41422, %rsi

// Faulty Load
mov $0x93b, %r12
nop
nop
cmp %rsi, %rsi
mov (%r12), %r8
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 32, 'NT': True, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'00': 128}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
