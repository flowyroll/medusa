.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rcx
lea addresses_A_ht+0x16573, %r11
xor %r9, %r9
mov (%r11), %r10d
nop
add $21056, %rbp
lea addresses_WT_ht+0x14f3, %rbx
nop
nop
sub $9454, %r13
mov (%rbx), %cx
nop
xor %rcx, %rcx
lea addresses_UC_ht+0xe9f3, %r11
nop
xor %rbp, %rbp
movb (%r11), %r9b
and %rcx, %rcx
lea addresses_A_ht+0x139b3, %rbp
nop
nop
nop
xor $14319, %r11
movw $0x6162, (%rbp)
and $23159, %r9
lea addresses_UC_ht+0x4ef3, %rbx
nop
nop
nop
nop
xor %r9, %r9
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
nop
and $32672, %r9
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x13f3b, %rcx
clflush (%rcx)
nop
nop
nop
nop
and $17565, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_US+0x5f73, %r8
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
nop
nop
nop
nop
inc %r9

// Store
lea addresses_WT+0x2f73, %rdx
add %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
xor $48411, %r9

// Load
lea addresses_normal+0x433, %rcx
nop
cmp %r8, %r8
mov (%rcx), %r14
nop
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_US+0x5f73, %rdi
dec %r9
movntdqa (%rdi), %xmm5
vpextrq $0, %xmm5, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 4899, '58': 16930}
58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 00 58 58 00 00 00 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 00 00 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 00 58 00 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 00 00 00 58 58 00 58 00 00 00 00 58 00 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 58 00 00 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 00 00 00 00 00 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 00 58 58 00 58 00 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 00 00 00 58 58 58 00 58 58 58 58 00 58 00 00 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 00 00 00 58 00 58 00 00 00 58 58 58 00 58 58 58 58 58 00 58 58 00 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 00 00 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 00 58 00 58 58 00 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 00 00 58 58 00 58 00 58 00 00 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 00 58 58 58 00 00 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 00 00 58 58 58 58 00 58 58 58 00 58 58 00 58 00 58 58 58 00 58 58 58 00 58 58 00 00 00 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 00 00 58 58 58 58 00 00 58 58 00 00 58 58 58 58 58 00 00 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 00 00 58 58 58 00 58 00 00 00 58 58 58 00 00 58 58 00 00 58 58 00 00 58 00 00 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 00 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 00 58 58 00 58 58 00 00 58 58 58 00 58 58 58 00 58 58 58 00 58 00 58 58 58 00 58 00 58 00 58 58 58 58 00 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 00 00 58 58 58 00 58 00 00 00 00 00 00 00 58 00 58 58 58 00 00 58 58 58 00 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
