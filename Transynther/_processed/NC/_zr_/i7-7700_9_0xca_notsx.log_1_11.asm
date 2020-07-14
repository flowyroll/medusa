.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x340d, %rdx
nop
nop
nop
add $37561, %r9
vmovups (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
nop
nop
nop
xor %r12, %r12
lea addresses_D_ht+0x6f7d, %rsi
lea addresses_normal_ht+0x30fd, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $84, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x99fd, %rsi
mov $0x419cf00000003fd, %rdi
and $31025, %r15
mov $3, %rcx
rep movsl
nop
nop
nop
nop
add $11226, %rsi

// Store
mov $0x3fd, %rax
nop
add $11401, %r11
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
and $63191, %r15

// Load
lea addresses_WC+0x746d, %rsi
nop
nop
nop
nop
nop
and %r15, %r15
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
nop
nop
nop
sub $16475, %r11

// Faulty Load
mov $0x7863a80000000bfd, %r8
nop
nop
nop
nop
nop
add %rax, %rax
vmovups (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'00': 1}
00
*/
