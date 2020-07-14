.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdx
lea addresses_D_ht+0x817d, %rdx
dec %rcx
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
nop
nop
nop
nop
nop
inc %r10
lea addresses_D_ht+0xc71d, %rcx
nop
nop
nop
and %r13, %r13
movb (%rcx), %bl
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0x1da9d, %rdx
nop
nop
nop
sub %rbp, %rbp
movb (%rdx), %r13b
nop
nop
inc %rbp
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0x1cd9d, %rdx
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movb $0x51, (%rdx)
nop
nop
nop
nop
sub $44772, %rsi

// Store
mov $0xe1d, %r13
nop
nop
nop
nop
nop
xor %r14, %r14
movl $0x51525354, (%r13)
nop
nop
nop
add %rdx, %rdx

// Store
mov $0x4afb59000000077d, %r14
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%r14)
xor $44187, %r14

// Load
lea addresses_A+0x1b17d, %rdx
nop
cmp %rbx, %rbx
vmovups (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_US+0x197d, %r10
clflush (%r10)
nop
nop
nop
nop
sub $50285, %r13
movw $0x5152, (%r10)
nop
nop
nop
add %rsi, %rsi

// Faulty Load
mov $0x750016000000097d, %r14
clflush (%r14)
sub %r10, %r10
movb (%r14), %r13b
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 7654, '52': 14175}
52 52 52 52 00 52 00 00 52 52 52 52 52 00 00 52 00 00 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 00 00 52 52 52 52 00 52 52 52 52 00 52 00 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 00 52 00 52 52 00 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 00 52 52 00 52 52 00 52 52 52 00 52 52 52 00 52 00 00 00 00 00 00 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 00 00 52 52 52 52 52 52 00 52 52 00 00 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 00 52 52 00 52 00 52 52 52 52 00 52 00 00 52 52 52 00 52 52 52 52 52 52 00 52 00 00 00 52 00 52 00 52 52 52 52 00 00 52 52 52 52 00 52 52 52 00 52 52 52 52 00 52 52 52 52 00 52 52 00 00 00 52 52 52 00 00 00 00 52 52 52 52 52 00 52 52 52 00 52 52 00 52 52 00 00 00 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 00 52 00 52 00 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 00 52 00 52 52 00 52 52 52 52 52 52 52 52 00 00 52 00 52 52 00 52 00 52 52 52 00 00 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 00 00 52 52 00 52 52 00 00 52 00 00 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 00 52 52 52 52 00 00 00 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 00 52 52 52 52 52 00 52 52 52 52 00 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 00 52 52 00 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 00 00 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 00 52 52 00 52 00 52 52 52 00 52 52 00 00 52 00 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 00 52 00 52 52 52 52 00 52 52 00 52 52 52 00 52 52 00 52 00 00 00 00 00 52 00 52 52 52 52 52 00 52 52 00 52 00 52 52 52 52 52 52 00 00 00 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 00 00 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 00 52 52 00 00 52 52 52 00 52 00 52 52 52 00 52 52 52 00 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 00 00 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 00 00 00 52 52 00 52 00 52 00 00 00 52 52 00 52 52 52 00 52 52 00 52 52 52 00 52 52 52 52 00 00 52 52 00 00 00 52 52 52 52 00 52 52 52 52 52 52 52 00 00 52 00 52 52 52 52 52 52 00 52 52 00 52 00 00 52 52 52 52 00 52 00 52 52 52 52 00 52 00 52 52 52 00 00 52 52 52 00 00 52 00 00 52 52 52 00 52 52 52 52 52 52 00 00 52 52 52 52 00 52 52 00 00 52 52 00 00 52 52 00 00 00 00 00 00 52 00 52 52 52 00 52 52 52 52 00 00 00 52 52 52 52 52 52 52 00 52 52 52 00 52 52 00 00 52 52 52 52 52 00 00 52 52 52 52 00 52 52 52 52 52 00 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 00 00 00 52 00 52 00 52 00 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 00 52 00 00 00 52 52 52 52 52 52 52 52 52 00 00 52 00 52 52 52 52 00 52 52 52 52 52 00 52 00 52 52 00 52 52 52 00
*/
