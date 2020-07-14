.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_US+0x1cbdb, %r10
clflush (%r10)
nop
nop
sub %rcx, %rcx
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
xor $2330, %rcx

// Store
lea addresses_D+0xd2eb, %r10
sub $29311, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r10)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_WC+0xceed, %r10
nop
sub %r8, %r8
movb $0x51, (%r10)
nop
nop
nop
nop
xor %rcx, %rcx

// Store
mov $0x75f4570000000ddb, %rcx
and %r12, %r12
movb $0x51, (%rcx)
nop
nop
and $58269, %rdx

// Store
lea addresses_D+0x105db, %r12
nop
nop
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r12)
nop
nop
cmp %r8, %r8

// Store
lea addresses_US+0xd0db, %rdx
nop
nop
cmp %r8, %r8
movb $0x51, (%rdx)
nop
nop
xor %rdx, %rdx

// Store
lea addresses_D+0x77db, %rcx
nop
nop
nop
nop
nop
and $52908, %rax
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_D+0x105db, %r12
nop
nop
nop
add %r10, %r10
movb (%r12), %dl
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 360}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
