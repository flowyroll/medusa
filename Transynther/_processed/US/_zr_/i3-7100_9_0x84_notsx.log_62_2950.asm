.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x92e5, %rsi
lea addresses_D_ht+0x97c5, %rdi
nop
nop
nop
xor %r11, %r11
mov $64, %rcx
rep movsw
nop
inc %r12
lea addresses_normal_ht+0x1334a, %r13
nop
nop
nop
sub %rax, %rax
mov (%r13), %di
nop
and %rax, %rax
lea addresses_normal_ht+0x90e5, %r12
nop
nop
nop
cmp $23327, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x15c5, %rsi
nop
nop
and $33683, %rdi
mov (%rsi), %r12w
nop
nop
nop
nop
add $34046, %rsi
lea addresses_UC_ht+0x7063, %rsi
lea addresses_UC_ht+0x3555, %rdi
clflush (%rsi)
nop
nop
nop
add $4737, %rbp
mov $89, %rcx
rep movsl
nop
nop
nop
xor $34241, %r11
lea addresses_normal_ht+0x1cdd, %rsi
lea addresses_D_ht+0x1cae5, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $33, %rcx
rep movsb
and $27798, %rax
lea addresses_A_ht+0x67e5, %rsi
lea addresses_UC_ht+0x1b361, %rdi
nop
sub $47294, %r11
mov $109, %rcx
rep movsq
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_A+0x18a95, %rdx
nop
nop
nop
nop
nop
sub %r15, %r15
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_US+0x17ee5, %rsi
sub $21132, %r15
mov (%rsi), %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'00': 62}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
