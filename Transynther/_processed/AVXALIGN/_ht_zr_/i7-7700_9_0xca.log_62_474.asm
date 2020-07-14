.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6d6, %rsi
lea addresses_WT_ht+0x19d18, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r14, %r14
mov $89, %rcx
rep movsq
sub %r13, %r13
lea addresses_WT_ht+0xab1a, %rsi
lea addresses_WT_ht+0x135de, %rdi
nop
nop
nop
nop
nop
cmp $65406, %r8
mov $52, %rcx
rep movsq
nop
nop
nop
nop
and $59305, %rcx
lea addresses_normal_ht+0xf824, %r14
nop
nop
nop
nop
nop
inc %rcx
movups (%r14), %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
sub $5475, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbx
push %rdi
push %rdx

// Store
lea addresses_RW+0x1e4fc, %r14
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)
and $22337, %r14

// Faulty Load
lea addresses_D+0x140b4, %r12
nop
nop
nop
nop
sub %rdi, %rdi
vmovaps (%r12), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r13
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rdx
pop %rdi
pop %rbx
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'46': 16, '44': 7, '49': 21, '00': 18}
00 00 46 46 49 46 00 49 00 46 49 49 44 49 44 49 00 44 00 49 44 49 00 46 46 49 00 49 49 44 49 49 49 49 49 46 49 46 00 46 49 00 00 46 00 49 46 46 00 00 46 49 46 44 46 46 44 00 49 00 00 00
*/
