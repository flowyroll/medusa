.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1ac39, %rsi
clflush (%rsi)
nop
add %r9, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
nop
cmp $40870, %rax
lea addresses_normal_ht+0x12609, %rsi
lea addresses_WC_ht+0x14d09, %rdi
nop
nop
xor %r14, %r14
mov $31, %rcx
rep movsw
nop
nop
xor $26142, %rsi
lea addresses_D_ht+0x1109, %r14
nop
nop
nop
add %rdi, %rdi
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x10c09, %rdi
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%rdi)
dec %rax
lea addresses_WC_ht+0x5c9, %rsi
lea addresses_normal_ht+0x13509, %rdi
nop
nop
sub %r9, %r9
mov $27, %rcx
rep movsb
cmp %rcx, %rcx
lea addresses_D_ht+0x1e0a9, %r14
nop
nop
nop
nop
sub $7473, %rax
mov (%r14), %rdi
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x19651, %rcx
cmp %rsi, %rsi
mov (%rcx), %eax
sub %rdi, %rdi
lea addresses_normal_ht+0x172cc, %rsi
lea addresses_WC_ht+0x10249, %rdi
nop
nop
nop
cmp $29099, %r11
mov $65, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $38203, %rdi
lea addresses_WT_ht+0x8509, %rcx
nop
nop
nop
nop
nop
cmp $38335, %rax
movb $0x61, (%rcx)
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x5009, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $2706, %r9
mov (%rdi), %r12w
sub %r12, %r12
lea addresses_A_ht+0xd4a9, %rsi
lea addresses_A_ht+0x1c875, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $112, %rcx
rep movsl
nop
nop
cmp $50247, %rdi
lea addresses_normal_ht+0x1589, %r14
nop
nop
mfence
movups (%r14), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x1509, %rcx
nop
sub %r11, %r11
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0xf909, %rsi
lea addresses_A_ht+0x983c, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $48344, %r14
mov $99, %rcx
rep movsl
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0x9909, %rsi
lea addresses_WC_ht+0x3c09, %rdi
clflush (%rsi)
nop
nop
nop
sub $52833, %r9
mov $105, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rbx

// Store
lea addresses_A+0x9419, %r13
nop
nop
nop
nop
nop
dec %r9
movw $0x5152, (%r13)
inc %rbp

// Faulty Load
lea addresses_US+0x4109, %r13
clflush (%r13)
nop
nop
nop
nop
sub %rbx, %rbx
mov (%r13), %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'00': 618}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
