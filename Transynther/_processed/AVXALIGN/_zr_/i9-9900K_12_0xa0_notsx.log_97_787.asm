.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x810, %rsi
nop
nop
nop
nop
add $58527, %rdx
mov (%rsi), %eax
add $34234, %r13
lea addresses_UC_ht+0x16016, %rsi
lea addresses_normal_ht+0x147e8, %rdi
nop
nop
sub $3219, %r13
mov $114, %rcx
rep movsw
nop
xor %rsi, %rsi
lea addresses_WC_ht+0xf786, %rsi
lea addresses_normal_ht+0x1e446, %rdi
nop
nop
dec %r15
mov $97, %rcx
rep movsl
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x10c96, %rsi
lea addresses_D_ht+0x7e86, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $108, %rcx
rep movsq
inc %rax
lea addresses_A_ht+0x3686, %rcx
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
nop
add $47090, %r15
lea addresses_WT_ht+0x2586, %rsi
lea addresses_WT_ht+0x1d5f6, %rdi
nop
nop
nop
nop
xor $12315, %r13
mov $57, %rcx
rep movsl
nop
nop
xor %rax, %rax
lea addresses_D_ht+0x1c2c6, %r15
nop
sub %r13, %r13
movl $0x61626364, (%r15)
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0xeb86, %rsi
lea addresses_UC_ht+0x1b86, %rdi
nop
nop
nop
nop
nop
xor $55588, %r13
mov $61, %rcx
rep movsl
sub %rdx, %rdx
lea addresses_normal_ht+0x173a6, %rsi
lea addresses_WT_ht+0x1286, %rdi
clflush (%rdi)
and $35728, %r14
mov $122, %rcx
rep movsl
nop
cmp $12612, %rsi
lea addresses_A_ht+0xb7f6, %rsi
lea addresses_A_ht+0xba26, %rdi
nop
nop
nop
nop
nop
sub $44344, %rax
mov $96, %rcx
rep movsb
and $42842, %r13
lea addresses_WC_ht+0x19bce, %rcx
nop
cmp %r14, %r14
movb (%rcx), %al
cmp %rdx, %rdx
lea addresses_D_ht+0xbf86, %r14
nop
nop
cmp $37990, %rdi
mov (%r14), %r15w
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x12d86, %rsi
lea addresses_normal_ht+0x4bc6, %rdi
nop
and %r13, %r13
mov $36, %rcx
rep movsb
nop
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rbx

// Load
mov $0x659f270000000c8e, %r9
and %r13, %r13
mov (%r9), %r15
nop
nop
nop
nop
cmp %r13, %r13

// Faulty Load
lea addresses_A+0x1eb86, %rbx
nop
nop
nop
nop
dec %r9
mov (%rbx), %ax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 5}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'00': 97}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
