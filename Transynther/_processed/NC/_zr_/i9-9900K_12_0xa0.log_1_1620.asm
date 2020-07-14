.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x36e, %rsi
lea addresses_D_ht+0xd9de, %rdi
nop
xor $18778, %r12
mov $118, %rcx
rep movsl
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x1997f, %rbp
nop
nop
nop
nop
nop
and $57412, %r11
vmovups (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
xor $58076, %r13
lea addresses_A_ht+0xc7c, %rsi
lea addresses_normal_ht+0x83de, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $51, %rcx
rep movsb
nop
nop
nop
nop
and $1907, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1c11e, %rsi
lea addresses_WT+0x1fde, %rdi
nop
nop
and $32624, %r8
mov $33, %rcx
rep movsw
nop
nop
dec %r8

// Store
lea addresses_RW+0xc8cc, %rbx
nop
nop
nop
nop
nop
cmp $35854, %rax
movb $0x51, (%rbx)
nop
nop
add $31047, %rax

// Store
mov $0x321ecb00000008e2, %rbx
nop
nop
nop
nop
nop
dec %r11
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
sub $5286, %rdi

// Faulty Load
mov $0x6ab04a00000003de, %rsi
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%rsi), %ecx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'00': 1}
00
*/
