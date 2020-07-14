.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x38d9, %rsi
lea addresses_UC_ht+0x16499, %rdi
nop
nop
nop
xor $39771, %r14
mov $20, %rcx
rep movsb
cmp %r15, %r15
lea addresses_WC_ht+0x4714, %r13
nop
nop
nop
nop
nop
cmp %r10, %r10
mov (%r13), %r15d
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x12699, %r14
nop
nop
add %rcx, %rcx
mov (%r14), %rsi
nop
nop
nop
and %r10, %r10
lea addresses_UC_ht+0xd099, %r15
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
nop
cmp %r10, %r10
lea addresses_UC_ht+0x11c17, %r15
nop
nop
nop
nop
nop
dec %rcx
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x8d39, %rcx
clflush (%rcx)
nop
nop
xor $34651, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
nop
and $25059, %rdi
lea addresses_WT_ht+0x10ff1, %rsi
lea addresses_D_ht+0x1d899, %rdi
nop
nop
nop
cmp $28364, %r9
mov $36, %rcx
rep movsq
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0x1d899, %rsi
lea addresses_WT_ht+0x12f0b, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r9
mov $79, %rcx
rep movsq
nop
and %rdi, %rdi
lea addresses_UC_ht+0x1d099, %r15
nop
nop
nop
nop
nop
sub $62678, %rsi
movb $0x61, (%r15)
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1b299, %rsi
lea addresses_WT_ht+0x5399, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $58, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $30044, %rcx
lea addresses_UC_ht+0x1c899, %r10
nop
nop
nop
nop
sub %rdi, %rdi
movups (%r10), %xmm0
vpextrq $1, %xmm0, %r13
add $41527, %rdi
lea addresses_WT_ht+0x8d93, %r14
nop
nop
nop
cmp $57289, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
mfence
lea addresses_A_ht+0x10719, %r14
nop
nop
nop
sub %rsi, %rsi
movb (%r14), %r10b
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x8259, %r13
nop
nop
nop
nop
xor %r15, %r15
mov (%r13), %si
inc %r14
lea addresses_normal_ht+0x12699, %r10
nop
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm6
and $0xffffffffffffffc0, %r10
movaps %xmm6, (%r10)
nop
nop
nop
add $62735, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_WT+0x4499, %r13
xor %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r13)
and %r15, %r15

// Store
mov $0x559, %r13
nop
nop
nop
and %rcx, %rcx
movb $0x51, (%r13)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Faulty Load
lea addresses_A+0x1f099, %r14
nop
nop
cmp $13705, %rbp
mov (%r14), %r15w
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'src': {'same': True, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
