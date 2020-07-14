.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rsi

// Load
lea addresses_D+0x725c, %r12
nop
inc %rbp
mov (%r12), %r8d
nop
nop
nop
nop
nop
and $51477, %rbp

// Store
lea addresses_RW+0x1a2a8, %r12
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
xor $13397, %rsi

// Store
mov $0x42338f00000003dc, %rsi
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
nop
nop
nop
nop
nop
and $30800, %rbx

// Store
lea addresses_normal+0xf5c, %rbp
cmp %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_A+0x1971c, %rbx
nop
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rbx)
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_PSE+0x1315c, %rsi
nop
nop
nop
dec %r13
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'33': 2}
33 33
*/
