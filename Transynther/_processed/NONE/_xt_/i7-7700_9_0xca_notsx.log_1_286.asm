.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x1c45200000000956, %rcx
nop
nop
nop
nop
nop
and $45267, %rsi
movb $0x51, (%rcx)
nop
inc %r12

// Load
lea addresses_A+0x2156, %rdi
nop
nop
nop
xor %r8, %r8
movb (%rdi), %r9b
nop
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_WC+0x1b1d6, %rsi
nop
nop
cmp $60005, %r8
movw $0x5152, (%rsi)
nop
nop
nop
nop
inc %rcx

// Store
mov $0x31e, %r9
nop
nop
nop
add %rdi, %rdi
movb $0x51, (%r9)
nop
nop
nop
nop
and $58662, %r8

// Load
lea addresses_D+0x396, %rcx
nop
nop
nop
cmp %r8, %r8
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
and $39418, %r8

// Store
lea addresses_WT+0xa966, %rsi
nop
nop
xor %rdi, %rdi
movl $0x51525354, (%rsi)
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_normal+0x11156, %r12
nop
nop
nop
nop
sub $32005, %rcx
mov (%r12), %dx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'34': 1}
34
*/
