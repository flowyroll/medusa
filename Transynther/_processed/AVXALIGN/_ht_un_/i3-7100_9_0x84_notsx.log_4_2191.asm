.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rax
push %rsi
lea addresses_UC_ht+0x1227d, %r14
nop
nop
nop
nop
nop
sub $42899, %r9
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_A_ht+0xa231, %r10
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r10), %r8d
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x6add, %r8
sub $13122, %rsi
movw $0x6162, (%r8)
nop
nop
nop
cmp %r11, %r11
pop %rsi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi

// Load
lea addresses_PSE+0xa1bd, %rcx
nop
nop
nop
nop
dec %rdi
movb (%rcx), %r8b
dec %rcx

// Store
lea addresses_WC+0x567d, %r12
nop
nop
nop
nop
add %r13, %r13
movl $0x51525354, (%r12)
lfence

// Faulty Load
mov $0x67d, %r14
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r14), %r13d
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'de': 1, '47': 3}
47 47 47 de
*/
