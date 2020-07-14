.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rcx
push %rdx
push %rsi

// Store
lea addresses_UC+0x186d5, %r8
nop
nop
nop
nop
nop
cmp %r10, %r10
movl $0x51525354, (%r8)
nop
xor $16454, %rsi

// Load
lea addresses_US+0xb9d5, %rdx
dec %r10
mov (%rdx), %si
sub %r12, %r12

// Store
lea addresses_US+0xa203, %r8
nop
add %rdx, %rdx
movl $0x51525354, (%r8)
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_normal+0x126d5, %rsi
nop
nop
dec %rdx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
xor $40045, %rdx

// Store
lea addresses_D+0xf9, %r12
nop
nop
sub $25829, %r15
mov $0x5152535455565758, %r10
movq %r10, (%r12)
nop
nop
and $42822, %r10

// Faulty Load
lea addresses_PSE+0x2ed5, %rdx
nop
nop
nop
nop
nop
sub %r12, %r12
vmovups (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'33': 8}
33 33 33 33 33 33 33 33
*/
