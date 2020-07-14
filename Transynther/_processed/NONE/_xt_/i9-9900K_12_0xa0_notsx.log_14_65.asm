.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rsi

// Load
lea addresses_US+0x1eedc, %r14
nop
nop
nop
nop
nop
and %r15, %r15
mov (%r14), %rbx
nop
nop
nop
sub %r15, %r15

// Load
lea addresses_RW+0xcaa4, %r8
nop
nop
nop
nop
nop
add %rsi, %rsi
mov (%r8), %rbx
nop
nop
add %r14, %r14

// Store
lea addresses_UC+0x1ecf4, %rbx
clflush (%rbx)
nop
nop
nop
sub %r8, %r8
movl $0x51525354, (%rbx)
nop
nop
dec %rbx

// Store
lea addresses_RW+0x1235c, %rsi
add $41778, %r8
movb $0x51, (%rsi)
nop
inc %r14

// Store
lea addresses_WT+0x1b6ce, %r15
and $7623, %rsi
mov $0x5152535455565758, %r8
movq %r8, (%r15)
nop
nop
nop
xor $42001, %r15

// Faulty Load
lea addresses_RW+0x1edc, %r13
nop
nop
inc %r9
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rsi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'32': 14}
32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
