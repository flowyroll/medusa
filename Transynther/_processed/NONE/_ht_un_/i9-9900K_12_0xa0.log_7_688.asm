.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rcx
push %rsi
lea addresses_WT_ht+0x1dd4d, %rcx
nop
cmp $49179, %r12
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
nop
sub $47899, %rsi
pop %rsi
pop %rcx
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rdx

// Faulty Load
lea addresses_WT+0x6b7a, %r12
nop
nop
nop
sub $63421, %r11
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'48': 1, '7e': 4, '66': 1, '93': 1}
7e 48 66 7e 7e 93 7e
*/
