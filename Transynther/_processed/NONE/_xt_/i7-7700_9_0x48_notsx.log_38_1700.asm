.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1182e, %rsi
lea addresses_WT_ht+0x12084, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $13, %rcx
rep movsb
nop
nop
nop
nop
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdx

// Store
mov $0x5aa, %r12
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_PSE+0x25d4, %r8
nop
nop
nop
add $489, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rdx
sub %rdx, %rdx

// Store
lea addresses_A+0x3f74, %r8
nop
xor %rdx, %rdx
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
sub $35818, %rcx

// Store
lea addresses_WC+0x8f74, %r14
nop
nop
nop
nop
nop
and $2688, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r14)
nop
nop
xor $50685, %rdx

// Store
lea addresses_normal+0x2374, %rbp
xor %rdx, %rdx
movw $0x5152, (%rbp)
inc %r14

// Faulty Load
lea addresses_RW+0x1cb74, %r10
nop
nop
nop
cmp $50129, %r12
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_PSE', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'32': 38}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
