.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rcx
push %rdx
lea addresses_WT_ht+0x9f89, %rcx
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
add %r10, %r10
pop %rdx
pop %rcx
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0x162a9, %r9
nop
nop
sub $46366, %rsi
movl $0x51525354, (%r9)
xor $59915, %rsi

// Load
lea addresses_RW+0x173e1, %rbp
sub $17614, %r8
vmovntdqa (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
dec %rcx

// Store
lea addresses_D+0x1c799, %r8
nop
nop
add $49082, %rdx
movb $0x51, (%r8)
nop
nop
nop
nop
dec %r8

// Faulty Load
mov $0x7ae72b0000000f89, %rcx
nop
inc %rsi
vmovntdqa (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'e2': 1, '08': 1}
08 e2
*/
