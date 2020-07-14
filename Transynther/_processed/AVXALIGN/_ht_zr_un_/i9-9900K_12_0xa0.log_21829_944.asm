.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xd283, %rdx
nop
dec %r8
mov (%rdx), %rcx
and %r8, %r8
lea addresses_normal_ht+0x170e3, %rsi
lea addresses_WC_ht+0x105ab, %rdi
nop
nop
add %rbp, %rbp
mov $70, %rcx
rep movsl
nop
nop
nop
nop
and $9637, %rdi
lea addresses_normal_ht+0x17b03, %rdx
nop
nop
nop
nop
xor $19014, %rsi
movb (%rdx), %r8b
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x1ca83, %rsi
lea addresses_WT_ht+0x1bf8f, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $64364, %r12
mov $32, %rcx
rep movsw
nop
nop
inc %rbp
lea addresses_A_ht+0x8067, %rdx
nop
nop
nop
nop
nop
and %rcx, %rcx
mov (%rdx), %rsi
nop
nop
nop
nop
xor $40924, %rdx
lea addresses_UC_ht+0x7a83, %rsi
lea addresses_WC_ht+0x1c283, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $81, %rcx
rep movsw
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x1a083, %rcx
add $12656, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm4
and $0xffffffffffffffc0, %rcx
vmovaps %ymm4, (%rcx)
nop
nop
nop
nop
add $9602, %rbp
lea addresses_UC_ht+0x1c7c3, %rsi
nop
nop
nop
nop
nop
add %r8, %r8
mov (%rsi), %bp
xor %rsi, %rsi
lea addresses_WT_ht+0x1d683, %r12
sub %rdi, %rdi
movups (%r12), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x19003, %rsi
lea addresses_WT_ht+0x1d033, %rdi
sub %rdx, %rdx
mov $90, %rcx
rep movsw
nop
inc %rsi
lea addresses_WC_ht+0x10383, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
movw $0x6162, (%rdi)
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x441b, %rdx
nop
nop
nop
xor %rbp, %rbp
movl $0x61626364, (%rdx)
and $21096, %rbp
lea addresses_UC_ht+0xc583, %rsi
nop
nop
xor %r15, %r15
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdx
dec %r12
lea addresses_D_ht+0xce91, %rcx
dec %rdx
movb (%rcx), %r12b
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0xd203, %rbp
and $29852, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rbp)
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rdx

// Load
lea addresses_A+0x1b103, %rdx
nop
nop
nop
nop
nop
and $43024, %r8
movb (%rdx), %bl
nop
nop
inc %rbp

// Store
lea addresses_D+0x6fbb, %rbp
nop
add %r9, %r9
movw $0x5152, (%rbp)
nop
nop
nop
cmp $46454, %rbx

// Faulty Load
lea addresses_WC+0x14a83, %r13
nop
add $53994, %rdx
vmovaps (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'44': 17390, '47': 7, '08': 8, '00': 4416, '72': 8}
44 44 44 00 44 44 44 00 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 00 44 44 44 00 44 44 44 00 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 00 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 00 44 44 44 44 44 44 00 00 00 44 00 44 44 44 44 44 00 44 44 44 44 00 00 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 00 00 44 44 44 44 44 44 00 44 00 44 44 44 44 44 00 00 44 44 44 44 44 00 44 00 44 44 44 44 00 00 44 44 44 44 00 44 00 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 00 00 44 44 00 44 44 44 00 44 44 44 44 44 44 00 00 44 44 00 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 44 00 00 00 44 00 44 44 44 44 44 00 44 44 44 44 44 00 44 00 00 44 44 44 44 44 44 00 00 00 44 00 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 00 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 00 00 44 00 44 44 44 44 00 44 44 44 44 44 44 00 44 00 44 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 00 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44
*/
