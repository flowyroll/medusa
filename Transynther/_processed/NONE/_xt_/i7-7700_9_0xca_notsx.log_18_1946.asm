.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x2832, %rdx
cmp $48184, %r12
vmovups (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
and %rax, %rax
lea addresses_A_ht+0x5c89, %rsi
lea addresses_D_ht+0x585a, %rdi
nop
nop
and $32040, %rdx
mov $62, %rcx
rep movsb
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x18962, %rbp
nop
nop
dec %r12
vmovups (%rbp), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
add $23292, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rdx
push %rsi

// Store
mov $0x5c2, %r14
nop
nop
nop
nop
nop
and $40098, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovaps %ymm1, (%r14)
nop
nop
dec %rdx

// Store
mov $0x6f3c9e00000001f2, %r9
nop
nop
nop
nop
and %r14, %r14
movw $0x5152, (%r9)
cmp $34665, %r9

// Load
lea addresses_RW+0x4672, %rdx
nop
nop
sub %rsi, %rsi
mov (%rdx), %bp

// Exception!!!
nop
nop
mov (0), %rsi
nop
add %r9, %r9

// Faulty Load
lea addresses_RW+0x1b5f2, %r9
nop
nop
xor $30250, %r13
mov (%r9), %esi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'32': 18}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
