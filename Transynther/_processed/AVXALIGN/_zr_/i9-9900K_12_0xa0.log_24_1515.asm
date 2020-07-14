.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Load
lea addresses_normal+0xb182, %r13
nop
nop
nop
nop
nop
xor $22313, %rcx
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_UC+0x171ce, %rbx
nop
nop
nop
nop
nop
xor $6281, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
add $486, %r14

// Store
lea addresses_PSE+0x1cd1e, %rbx
clflush (%rbx)
nop
nop
nop
cmp $31835, %rax
movb $0x51, (%rbx)
xor %rcx, %rcx

// Store
lea addresses_WC+0x2c1e, %r9
nop
and $3221, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%r9)
nop
nop
dec %rax

// Faulty Load
mov $0x6c5d9c000000051e, %rax
nop
sub %rdx, %rdx
mov (%rax), %r13
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 24}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
