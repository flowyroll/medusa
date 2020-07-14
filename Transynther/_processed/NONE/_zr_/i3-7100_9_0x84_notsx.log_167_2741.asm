.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1f671, %rbx
nop
nop
and $62480, %r15
movb $0x51, (%rbx)
nop
xor $26068, %rdi

// REPMOV
lea addresses_A+0x383, %rsi
lea addresses_WT+0x24f1, %rdi
nop
nop
cmp $47806, %rdx
mov $74, %rcx
rep movsb
add %rsi, %rsi

// Store
lea addresses_WT+0x2891, %rdi
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
add $39849, %rsi

// Store
lea addresses_RW+0x147f1, %r15
nop
inc %r12
movl $0x51525354, (%r15)
nop
nop
nop
xor $2399, %r12

// Store
lea addresses_UC+0x6d75, %rdx
nop
nop
nop
nop
nop
and %rbx, %rbx
movb $0x51, (%rdx)
nop
nop
nop
nop
sub $28432, %rsi

// Store
lea addresses_WC+0xa651, %r15
xor $26747, %rdx
movb $0x51, (%r15)
nop
nop
inc %rbx

// Store
lea addresses_A+0xe4e1, %rsi
cmp %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
nop
nop
sub $1328, %r10

// Faulty Load
lea addresses_A+0xd4f1, %rsi
xor $666, %rcx
mov (%rsi), %r12w
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 11, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 167}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
