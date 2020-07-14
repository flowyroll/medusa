.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1cfe1, %rcx
nop
nop
nop
xor %r12, %r12
mov (%rcx), %rax
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x8721, %r8
nop
nop
nop
nop
add $32477, %r15
mov $0x6162636465666768, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r8)
add %r10, %r10
lea addresses_UC_ht+0x1b851, %rsi
lea addresses_normal_ht+0xc651, %rdi
nop
add %r10, %r10
mov $82, %rcx
rep movsw
nop
and %rsi, %rsi
lea addresses_WC_ht+0x851, %rsi
nop
nop
nop
xor $2191, %r13
movl $0x61626364, (%rsi)
nop
nop
inc %r15
lea addresses_WC_ht+0x1ac51, %r13
nop
nop
nop
cmp $15009, %r8
mov (%r13), %rsi
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0xd371, %rsi
lea addresses_normal_ht+0x15e51, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $79, %rcx
rep movsq
nop
add %r8, %r8
lea addresses_D_ht+0x1af7f, %rax
nop
nop
nop
nop
nop
and %r10, %r10
mov (%rax), %rcx
nop
nop
add $37891, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi

// Store
lea addresses_WC+0x15051, %r8
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
nop
nop
xor $34331, %r8

// Load
lea addresses_WC+0x7851, %rcx
clflush (%rcx)
nop
nop
nop
inc %rdi
mov (%rcx), %r13
nop
nop
nop
nop
nop
cmp $39940, %rcx

// Store
lea addresses_D+0x8c51, %rdi
nop
nop
add %r12, %r12
movl $0x51525354, (%rdi)
xor %rdi, %rdi

// Store
lea addresses_normal+0x8451, %rdi
nop
nop
nop
cmp %r10, %r10
movb $0x51, (%rdi)
nop
nop
nop
nop
and %rax, %rax

// Faulty Load
lea addresses_WC+0x7851, %r12
nop
nop
dec %rdi
movups (%r12), %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal', 'AVXalign': True, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'92': 3, '3a': 1, '49': 4000, '08': 9, '00': 17816}
00 49 00 49 00 00 00 00 49 00 49 00 00 00 00 49 00 00 49 00 49 00 49 49 00 00 00 00 49 00 00 00 00 00 00 00 49 49 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 49 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 49 49 00 00 00 49 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 49 49 00 00 00 00 49 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 49 00 49 00 00 49 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 49 49 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 49 49 00 49 49 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 49 49 00 00 49 49 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 49 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 49 49 00 00 49 49 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 49 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 49 00 00 00 00 00 49 00 49 49 00 49 49 00 49 49 00 49 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 00 49 00 49 00 00 00 49 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 49 00 49 00 00 49 49 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 00 49 00 49 00 49 49 00 00 00 00 00 00 49 00 49 00 49 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 49 00 00 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 49 00 49 49 00 00 00 49 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 49 49 00 49 00 00 00 00 00 49 00 00 00 00 49 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 49 49 00 00 49 49 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 49 49 00 49 00 00 00 00 00 49 00 00 00 00 49 00 00 00 49 49 49 49 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 49 00 49 00 08 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 49
*/
