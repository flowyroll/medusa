.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x15cf4, %r14
nop
nop
nop
inc %r9
movw $0x5152, (%r14)
nop
nop
add $2363, %rdi

// Store
lea addresses_normal+0xbb74, %r14
nop
cmp $41803, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r14)
nop
xor $14524, %rsi

// Store
lea addresses_UC+0x7574, %r11
nop
nop
nop
nop
xor $24764, %r12
movl $0x51525354, (%r11)
nop
nop
xor %r11, %r11

// Store
lea addresses_UC+0xa4ec, %r14
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
nop
nop
nop
sub $64152, %r11

// Store
lea addresses_D+0x1c05c, %r9
nop
add $16560, %r12
movw $0x5152, (%r9)
nop
nop
nop
inc %rdi

// Store
mov $0x95f, %r11
nop
nop
nop
nop
nop
sub $41484, %rdi
movl $0x51525354, (%r11)
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_D+0x145f4, %r14
nop
nop
nop
xor %rsi, %rsi
movw $0x5152, (%r14)
nop
nop
nop
nop
xor $36804, %rdi

// Faulty Load
lea addresses_normal+0x90f4, %r11
clflush (%r11)
nop
nop
nop
nop
nop
cmp $19781, %r9
vmovups (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'34': 34}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
