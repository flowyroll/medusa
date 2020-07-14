.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rdx

// Store
lea addresses_normal+0x17829, %rbx
nop
nop
add $57100, %rbp
mov $0x5152535455565758, %r12
movq %r12, (%rbx)
nop
nop
nop
nop
xor $55449, %r12

// Store
lea addresses_A+0x1c941, %rbp
clflush (%rbp)
nop
nop
nop
nop
inc %rdx
movb $0x51, (%rbp)
nop
nop
nop
add $30443, %rdx

// Load
lea addresses_A+0xff11, %rbp
and %r15, %r15
movups (%rbp), %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
add $55280, %rbx

// Load
lea addresses_WT+0x6d41, %r15
nop
nop
nop
nop
nop
cmp %r9, %r9
movb (%r15), %r11b
nop
nop
nop
nop
nop
sub $41233, %rbp

// Store
mov $0x1d1, %rbx
nop
add %r11, %r11
movw $0x5152, (%rbx)
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_A+0x1c941, %rbp
sub %rdx, %rdx
vmovups (%rbp), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'35': 70}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
