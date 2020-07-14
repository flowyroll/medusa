.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r8
push %r9
push %rcx
lea addresses_D_ht+0x14097, %rcx
sub %r10, %r10
mov (%rcx), %r9w
nop
nop
nop
nop
nop
inc %r8
lea addresses_normal_ht+0x13287, %r14
nop
and $18997, %r8
movl $0x61626364, (%r14)
nop
nop
nop
nop
add $58034, %r10
lea addresses_UC_ht+0xdd87, %rcx
nop
nop
nop
nop
and $6773, %r12
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
cmp $61241, %r12
lea addresses_WT_ht+0x7587, %r12
nop
and %r14, %r14
mov (%r12), %r9
nop
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x1cd87, %r13
xor $24511, %r12
mov (%r13), %r8d
nop
and %r9, %r9
lea addresses_UC_ht+0x17587, %rcx
nop
nop
nop
nop
add $23679, %r12
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
nop
nop
nop
and $36051, %r13
lea addresses_WT_ht+0x186ef, %r10
nop
nop
nop
add $14089, %r12
movb (%r10), %r13b
nop
nop
nop
nop
nop
dec %r13
lea addresses_WT_ht+0xa985, %rcx
xor $33907, %r8
movb (%rcx), %r9b
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x2665, %r13
clflush (%r13)
nop
sub %r8, %r8
mov $0x6162636465666768, %r14
movq %r14, (%r13)
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0xbf87, %r9
nop
nop
and $17023, %r13
movb (%r9), %cl
nop
nop
nop
sub $62349, %r10
lea addresses_WC_ht+0xcc87, %r9
nop
nop
nop
nop
dec %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
xor $40503, %r12
lea addresses_normal_ht+0xd583, %r10
nop
sub %r13, %r13
mov (%r10), %r9
and %r12, %r12
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rbx
push %rdi

// Store
lea addresses_WC+0x18dc7, %r15
nop
nop
nop
nop
nop
and %r13, %r13
movb $0x51, (%r15)
and %rdi, %rdi

// Store
mov $0xf5e1e0000000387, %r14
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %r15
movq %r15, (%r14)
nop
nop
nop
nop
xor $12115, %r15

// Load
lea addresses_WT+0xa587, %r15
nop
nop
nop
xor $12214, %r14
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
nop
add %r9, %r9

// Faulty Load
lea addresses_WT+0xe587, %r12
clflush (%r12)
nop
nop
nop
nop
nop
and %r9, %r9
mov (%r12), %edi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'39': 5}
39 39 39 39 39
*/
