.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x11dd8, %rsi
lea addresses_WT_ht+0x1b31c, %rdi
nop
nop
nop
nop
inc %r8
mov $46, %rcx
rep movsq
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x87be, %rdx
clflush (%rdx)
sub $392, %rbx
movb $0x61, (%rdx)
nop
xor %rcx, %rcx
lea addresses_D_ht+0xdb4c, %r11
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r11), %di
nop
nop
nop
nop
nop
inc %r11
lea addresses_UC_ht+0xfaac, %rbx
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
nop
lfence
lea addresses_D_ht+0xe4ec, %rsi
lea addresses_A_ht+0x1e3ec, %rdi
nop
cmp %rbx, %rbx
mov $114, %rcx
rep movsw
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0xdf8c, %rsi
lea addresses_WT_ht+0x3bec, %rdi
nop
nop
nop
nop
and $21632, %rax
mov $115, %rcx
rep movsl
nop
nop
nop
nop
sub $46817, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbx
push %rdi

// Faulty Load
mov $0x3ec, %r8
nop
nop
nop
nop
sub $4636, %r10
movb (%r8), %bl
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'00': 112}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
