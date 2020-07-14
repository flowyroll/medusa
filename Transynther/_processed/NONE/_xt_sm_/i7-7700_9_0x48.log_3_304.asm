.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x7091, %rcx
nop
nop
and $17356, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
nop
nop
dec %rcx

// Store
lea addresses_WC+0x3109, %rdx
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
dec %rdx

// Faulty Load
lea addresses_WC+0x7091, %rsi
nop
nop
nop
nop
xor %r9, %r9
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'58': 3}
58 58 58
*/
