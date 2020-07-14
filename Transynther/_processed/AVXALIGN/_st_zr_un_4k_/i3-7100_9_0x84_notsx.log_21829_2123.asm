.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rbx
lea addresses_WC_ht+0x2c08, %rbx
nop
nop
nop
nop
cmp $8131, %r12
movb $0x61, (%rbx)
and $33540, %rax
pop %rbx
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0x1e4b3, %rcx
nop
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_WC+0xd88, %r9
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%r9)
nop
nop
sub $53898, %r9

// Store
lea addresses_WC+0xd88, %r9
nop
nop
nop
xor $27738, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
add %r8, %r8

// Store
lea addresses_D+0x1588, %rdx
nop
nop
cmp $37926, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
nop
nop
sub $56655, %r14

// Store
lea addresses_RW+0x1fd88, %r14
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
and %r9, %r9

// Load
lea addresses_UC+0xa0d0, %rdx
clflush (%rdx)
nop
nop
nop
add %r14, %r14
movups (%rdx), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_WT+0x2628, %r13
sub $1100, %r14
movb $0x51, (%r13)
nop
xor %rdi, %rdi

// Store
lea addresses_A+0x7c88, %rcx
nop
nop
nop
xor $32649, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%rcx)
sub $22976, %r9

// Store
lea addresses_normal+0xec8, %r9
nop
nop
nop
cmp $63595, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%r9)
nop
inc %r14

// Faulty Load
lea addresses_PSE+0xe588, %r14
and %r13, %r13
vmovaps (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 3407, '08': 3, '58': 1, '07': 17060, '50': 1358}
07 00 07 07 07 07 50 07 07 07 07 07 50 07 07 07 07 07 07 07 07 07 00 07 07 07 07 00 07 07 07 00 07 07 07 00 00 00 07 07 07 50 07 07 07 07 07 07 07 07 07 50 07 07 07 07 07 07 00 07 07 07 07 07 07 07 00 50 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 07 00 07 07 07 50 07 07 50 07 07 07 00 07 07 07 07 50 07 07 00 50 07 07 07 00 07 07 07 07 07 07 00 50 07 07 07 07 07 50 07 07 50 07 07 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 00 07 07 50 07 07 07 07 07 07 00 50 07 00 07 50 07 07 00 50 07 07 07 50 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 50 07 50 07 07 07 00 07 07 07 07 00 07 07 07 07 00 50 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 07 07 07 00 07 07 07 07 07 07 07 07 07 07 07 50 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 00 07 07 07 07 07 07 07 07 07 07 00 00 07 07 07 00 50 07 07 07 07 07 07 07 07 07 07 00 50 07 07 07 00 07 07 07 07 07 07 00 07 07 07 07 07 07 07 50 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 07 00 07 00 07 07 00 07 07 07 07 00 00 07 07 50 07 00 07 07 07 07 07 07 07 00 07 07 00 07 00 07 07 00 07 07 07 07 00 50 07 07 07 07 07 07 07 07 07 07 00 07 50 00 00 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 50 00 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 50 07 07 50 07 07 00 07 07 07 00 07 07 07 07 07 07 07 07 07 00 07 07 07 07 07 07 07 07 07 00 07 07 07 00 00 50 07 50 07 07 07 50 07 07 00 07 07 07 07 07 00 07 07 00 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 00 07 07 07 07 07 07 07 07 07 07 07 07 07 50 07 07 07 07 07 07 07 07 50 07 07 07 00 07 07 07 07 07 07 07 07 50 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 07 07 07 07 07 00 07 07 07 07 50 07 50 07 07 07 07 50 07 07 07 07 07 07 07 07 07 07 50 07 07 07 07 07 00 07 07 07 00 07 00 07 07 07 07 07 07 07 07 07 50 00 07 07 07 07 07 00 07 07 07 07 07 07 00 50 07 07 07 07 07 07 07 07 07 07 07 00 00 07 00 07 50 07 07 07 07 00 07 07 07 07 07 07 07 07 07 07 00 50 07 07 07 07 07 07 00 50 07 07 00 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 07 50 00 07 07 07 00 07 07 07 07 07 07 07 00 07 00 07 07 07 07 07 07 07 00 00 07 07 00 50 07 07 07 07 00 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 50 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 07 00 07 00 07 07 07 07 07 07 50 07 07 07 00 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 07 00 07 07 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 07 00 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 50 00 07 07 07 07 07 07 07 07 07 07 07 07 00 07 07 07 00 00 50 00 07 07 07 07 07 07 07 07 07 07 07 07 07 07 00 07 07 50 07 07 07 00 07 07 07 07 07 07 50 00 00 07 00 07 07 07 07 07 07 07 07 50 07 07 07 07 07 07 07 07 50 07 07 07 07 07 07 07 07 00 07 07 07 00 00 07 07 07 50 07 07 07 07 07 07 00 07 07 07 50 07 50 07 50 07 07 07 07 07 50 50 07 07 50 50 07 00 00 50 07 50 00
*/
