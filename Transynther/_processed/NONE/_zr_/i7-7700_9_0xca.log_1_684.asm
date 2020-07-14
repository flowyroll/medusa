.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x9466, %r12
xor $57653, %r15
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WC+0x16e2c, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
and $47566, %r12

// Load
lea addresses_WC+0x1ee86, %rdx
clflush (%rdx)
nop
nop
nop
add $39816, %rsi
movups (%rdx), %xmm5
vpextrq $1, %xmm5, %r9

// Exception!!!
nop
nop
nop
mov (0), %rsi
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_D+0xa816, %r12
nop
nop
nop
and $19754, %r15
movw $0x5152, (%r12)
nop
nop
and $39572, %rsi

// Store
lea addresses_RW+0x15e86, %rdx
nop
nop
nop
nop
nop
inc %rsi
movl $0x51525354, (%rdx)
nop
nop
cmp $41537, %rdi

// Faulty Load
lea addresses_WC+0x1ee86, %rdx
nop
cmp %rdi, %rdi
vmovups (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 1}
00
*/
