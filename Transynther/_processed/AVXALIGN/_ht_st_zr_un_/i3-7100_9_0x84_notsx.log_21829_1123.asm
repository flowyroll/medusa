.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rcx
push %rdx
lea addresses_normal_ht+0xb7d2, %r11
and %rcx, %rcx
movw $0x6162, (%r11)
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x2e62, %r10
nop
nop
nop
add $51306, %rdx
movl $0x61626364, (%r10)
nop
and %r11, %r11
pop %rdx
pop %rcx
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x10652, %r8
nop
cmp %rbp, %rbp
mov (%r8), %rsi
nop
nop
nop
xor %rbx, %rbx

// REPMOV
lea addresses_PSE+0x1b4b2, %rsi
lea addresses_WT+0x2b4e, %rdi
nop
nop
nop
inc %r15
mov $49, %rcx
rep movsl
nop
dec %rbx

// Load
lea addresses_A+0x16ab2, %r15
nop
nop
sub %rcx, %rcx
mov (%r15), %r8w
nop
nop
cmp $22173, %rdi

// Faulty Load
lea addresses_UC+0x36b2, %r15
nop
nop
nop
xor $7367, %rsi
vmovaps (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'33': 3, '4f': 1, '12': 14, '79': 1, '02': 1, '49': 1, '00': 533, '06': 21275}
06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 00 06 06 00 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 00 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 00 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 00 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 00 00 06 00 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 00 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 00 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 00 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 00 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06
*/
