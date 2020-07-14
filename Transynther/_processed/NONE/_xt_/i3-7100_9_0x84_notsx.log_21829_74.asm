.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1110f, %rsi
lea addresses_D_ht+0xd26f, %rdi
nop
nop
xor $35514, %r11
mov $105, %rcx
rep movsb
nop
nop
nop
nop
xor $58440, %rbp
lea addresses_normal_ht+0x54d7, %rsi
lea addresses_D_ht+0x1a70f, %rdi
clflush (%rsi)
nop
nop
xor %rdx, %rdx
mov $97, %rcx
rep movsl
dec %rbp
lea addresses_UC_ht+0x45af, %r11
nop
nop
nop
nop
nop
sub $25327, %rax
and $0xffffffffffffffc0, %r11
vmovntdqa (%r11), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
sub $50724, %rdi
lea addresses_WC_ht+0x1c60f, %rdi
nop
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rdi)
sub %rdi, %rdi
lea addresses_UC_ht+0xdf0f, %rsi
lea addresses_normal_ht+0x100af, %rdi
nop
nop
xor $24197, %r12
mov $85, %rcx
rep movsl
and $24794, %rax
lea addresses_normal_ht+0x1dd0f, %rcx
nop
nop
inc %rsi
mov (%rcx), %ebp
nop
nop
nop
add $62729, %rsi
lea addresses_UC_ht+0x1b00f, %rsi
clflush (%rsi)
nop
nop
nop
and $7426, %r11
mov (%rsi), %rbp
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x1b68f, %rsi
lea addresses_D_ht+0x1b2ac, %rdi
nop
nop
nop
nop
inc %r12
mov $91, %rcx
rep movsq
inc %rbp
lea addresses_D_ht+0x1130f, %r11
nop
nop
nop
nop
xor %rax, %rax
movw $0x6162, (%r11)
nop
nop
nop
sub $41521, %rdx
lea addresses_A_ht+0x1ae0f, %rsi
lea addresses_A_ht+0x210f, %rdi
nop
nop
add %r11, %r11
mov $37, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0x10a9f, %rsi
lea addresses_UC_ht+0x15c57, %rdi
nop
add $6504, %r11
mov $92, %rcx
rep movsw
nop
sub $62891, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rcx
push %rdx
push %rsi

// Faulty Load
lea addresses_normal+0x350f, %rcx
nop
nop
nop
nop
add $46769, %rsi
mov (%rcx), %r13w
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
