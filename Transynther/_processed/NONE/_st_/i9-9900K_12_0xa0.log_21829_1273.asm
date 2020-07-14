.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1793e, %r11
nop
and %r10, %r10
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r8
nop
nop
inc %rbp
lea addresses_A_ht+0x1404, %rsi
lea addresses_UC_ht+0xbfc4, %rdi
add $55802, %r12
mov $119, %rcx
rep movsb
nop
nop
nop
nop
nop
add $20270, %r8
lea addresses_WT_ht+0x9e84, %rsi
lea addresses_WT_ht+0x7404, %rdi
nop
xor $34281, %r8
mov $30, %rcx
rep movsq
nop
nop
and $2508, %rcx
lea addresses_D_ht+0x17f84, %rdi
nop
nop
nop
xor %r10, %r10
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x3e84, %r12
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
movups %xmm2, (%r12)
nop
nop
inc %rsi
lea addresses_D_ht+0x7e84, %rcx
and $35302, %r11
movb $0x61, (%rcx)
nop
nop
nop
and $5318, %r8
lea addresses_WT_ht+0x11cf2, %r12
inc %r11
movl $0x61626364, (%r12)
nop
nop
nop
nop
and $30699, %r12
lea addresses_UC_ht+0x14f5c, %rsi
lea addresses_WT_ht+0x440a, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $5, %rcx
rep movsw
cmp $56776, %r10
lea addresses_normal_ht+0xef04, %r10
nop
nop
nop
nop
add $62823, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r10)
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rdx
push %rsi

// Load
lea addresses_WC+0x10a84, %rbp
nop
nop
nop
nop
and %rbx, %rbx
mov (%rbp), %r15
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_RW+0xbadc, %r13
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_A+0x2284, %rbp
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rbp)

// Exception!!!
nop
nop
nop
nop
mov (0), %rbp
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
mov $0x684, %rsi
nop
nop
nop
cmp $7892, %r14
movw $0x5152, (%rsi)
nop
nop
xor $57143, %r13

// Store
lea addresses_RW+0x154d4, %rsi
nop
nop
nop
nop
nop
and $56292, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
and %rbx, %rbx

// Faulty Load
lea addresses_WT+0x2684, %r13
clflush (%r13)
nop
dec %r15
mov (%r13), %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_RW', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': True, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
