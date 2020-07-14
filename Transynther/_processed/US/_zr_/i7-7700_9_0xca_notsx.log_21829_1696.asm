.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb281, %r12
nop
nop
nop
nop
nop
add %rdi, %rdi
movw $0x6162, (%r12)
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x17481, %rax
nop
nop
nop
nop
nop
inc %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
dec %rdi
lea addresses_normal_ht+0x19965, %rdi
nop
nop
nop
cmp %r8, %r8
movl $0x61626364, (%rdi)
nop
nop
nop
nop
cmp $64494, %r9
lea addresses_D_ht+0xbe81, %rsi
lea addresses_normal_ht+0xc371, %rdi
nop
xor %rax, %rax
mov $127, %rcx
rep movsl
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x14e81, %rcx
nop
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm5
and $0xffffffffffffffc0, %rcx
movaps %xmm5, (%rcx)
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x1d641, %rsi
lea addresses_WC_ht+0x189c1, %rdi
nop
nop
nop
add $15735, %r9
mov $2, %rcx
rep movsq
nop
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x19a81, %rsi
lea addresses_UC_ht+0x169a3, %rdi
nop
and $24033, %r12
mov $92, %rcx
rep movsq
nop
sub %r10, %r10
lea addresses_UC_ht+0x18ff5, %r8
and %rsi, %rsi
movb (%r8), %r9b
nop
xor %r10, %r10
lea addresses_WC_ht+0x8e81, %r8
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r8)
nop
xor %r9, %r9
lea addresses_normal_ht+0x6e81, %rsi
lea addresses_D_ht+0x193c1, %rdi
nop
nop
and %r10, %r10
mov $18, %rcx
rep movsw
nop
nop
mfence
lea addresses_WT_ht+0x10551, %rsi
lea addresses_normal_ht+0x9d21, %rdi
nop
nop
nop
nop
sub $390, %r8
mov $14, %rcx
rep movsq
nop
nop
inc %r9
lea addresses_WT_ht+0x1ee81, %r8
nop
nop
sub $776, %r12
mov (%r8), %ecx
nop
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x19381, %rsi
lea addresses_UC_ht+0x7299, %rdi
clflush (%rdi)
nop
cmp %r10, %r10
mov $65, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x97dd, %r12
nop
and %r10, %r10
vmovups (%r12), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x1981, %r12
nop
nop
nop
xor $27506, %r9
mov (%r12), %r8w
nop
nop
nop
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0x1a781, %rsi
lea addresses_WC+0xce81, %rdi
nop
nop
nop
nop
dec %r14
mov $29, %rcx
rep movsl
nop
nop
nop
nop
cmp $36188, %rdx

// Store
lea addresses_RW+0x182c3, %r12
nop
nop
nop
nop
nop
cmp $32013, %r15
movb $0x51, (%r12)
nop
nop
nop
nop
cmp $19340, %rsi

// Load
lea addresses_US+0x1681, %r15
inc %rsi
mov (%r15), %r14w
cmp %rsi, %rsi

// Store
lea addresses_D+0x422d, %r12
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_US+0x1681, %rdi
nop
nop
nop
nop
sub $48448, %rdx
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
