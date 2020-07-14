.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xe34f, %rbp
nop
xor $64697, %r8
movups (%rbp), %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
nop
nop
xor $65066, %r13
lea addresses_normal_ht+0xdbcf, %rsi
lea addresses_D_ht+0x169cf, %rdi
nop
nop
dec %r11
mov $114, %rcx
rep movsw
nop
dec %r11
lea addresses_WT_ht+0x14e6f, %rsi
lea addresses_WC_ht+0xc54f, %rdi
nop
nop
nop
cmp $54598, %r8
mov $120, %rcx
rep movsw
nop
nop
xor $31075, %r8
lea addresses_UC_ht+0x1cb4f, %rcx
nop
nop
nop
nop
xor $2690, %rbp
mov (%rcx), %eax
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x162af, %rsi
lea addresses_UC_ht+0x20cf, %rdi
clflush (%rsi)
dec %r11
mov $106, %rcx
rep movsl
nop
nop
nop
nop
nop
and $11122, %rdi
lea addresses_normal_ht+0x1734f, %r8
nop
nop
nop
nop
nop
dec %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r8)
add $58215, %r8
lea addresses_WT_ht+0x1cb4f, %rax
nop
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rax)
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbp
push %rcx
push %rsi

// Faulty Load
mov $0x4673fb0000000b4f, %rcx
nop
nop
nop
nop
nop
add $29008, %rbp
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'44': 1, '45': 14893, '7f': 3, '00': 6932}
45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 00 00 45 00 00 45 45 45 45 45 45 45 45 00 45 45 00 00 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 00 45 45 45 00 00 45 45 45 45 00 45 00 00 00 45 45 45 00 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 00 45 00 00 00 45 45 45 45 45 45 00 45 45 00 45 45 45 00 00 45 45 00 45 45 45 45 45 45 45 00 00 00 00 45 00 00 45 45 00 45 45 45 45 45 00 00 00 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 00 45 45 00 00 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 45 00 45 00 45 45 45 00 45 00 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 00 45 00 00 00 45 45 45 45 45 00 45 45 00 45 00 45 45 00 45 45 45 45 45 45 45 45 00 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 00 00 00 45 45 45 45 00 45 45 45 45 45 45 00 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 00 00 45 45 00 00 00 00 45 00 00 00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 00 45 00 45 00 00 45 45 45 45 45 45 00 45 45 45 45 45 00 00 00 45 00 45 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 00 45 00 45 45 00 00 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 00 00 45 45 00 45 00 45 00 00 45 45 45 45 45 00 00 00 45 00 45 00 00 00 45 45 00 45 45 00 00 45 45 00 45 45 45 00 45 45 00 45 00 45 45 45 45 45 45 00 00 00 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 00 45 00 00 00 45 00 00 45 00 45 45 45 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 00 00 45 45 45 45 7f 45 45 00 45 00 45 45 45 45 45 45 45 45 45 00 00 45 45 00 00 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 00 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 00 00 45 00 00 45 00 45 00 45 45 45 45 00 45 00 00 00 45 45 45 45 00 45 45 45 45 00 45 45 00 45 45 45 45 00 45 00 00 45 45 45 00 45 00 00 45 00 45 00 00 00 45 00 45 45 00 00 45 45 45 45 45 45 00 00 45 00 45 45 00 00 00 00 00 00 45 45 00 45 45 00 45 45 00 45 45 45 00 00 45 00 00 00 45 00 00 45 45 45 00 00 00 00 45 45 00 45 45 45 45 45 45 00 00 00 00 00 45 00 45 45 00 45 00 00 00 45 45 00 45 45 00 45 45 45 45 00 00 00 45 45 45 45 45 45 00 00 00 00 00 00 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 00 00 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 00 45 00 00 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 45 45 00 00 45 45 45 45 00 45 45 45 45 45 00 45 00 00 45 00 00 45 45 45 45 45 45 00 00 45 45 45 45 00 00 00 45 45 00 00 45 45 45 00 45 45 45 45 45 45 00 00 00 00 00 45 45 00 45 00 00 45 45 45 45 45 45 45 45 00 45 45 45 00 00 45 00 45 45 00 00 00 00 00 45 00 00 00 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 00 00 45 45 45 00 00 00 45 45 00 45 45 00 45 45 45 45 45 00 45 45 00 00 00 00 45 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45
*/
