.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x818a, %rsi
lea addresses_A_ht+0xb7ba, %rdi
clflush (%rsi)
nop
nop
nop
add %rbx, %rbx
mov $99, %rcx
rep movsw
nop
nop
nop
inc %rcx
lea addresses_A_ht+0xe9ba, %rsi
lea addresses_WC_ht+0x1e85a, %rdi
nop
nop
nop
nop
sub $52231, %r13
mov $91, %rcx
rep movsw
nop
and %rbx, %rbx
lea addresses_WC_ht+0x5e7a, %rsi
lea addresses_UC_ht+0x47ba, %rdi
nop
nop
nop
sub %r12, %r12
mov $114, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0xd3ba, %r12
nop
nop
sub $42581, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%r12)
nop
nop
nop
add $48124, %r12
lea addresses_UC_ht+0x9ba, %rsi
lea addresses_normal_ht+0x36ba, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $107, %rcx
rep movsl
nop
nop
nop
and $60936, %rbx
lea addresses_A_ht+0x6576, %r14
nop
nop
nop
add %rbx, %rbx
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
sub $11941, %r12
lea addresses_WT_ht+0x119ba, %r13
nop
nop
nop
nop
inc %rcx
vmovups (%r13), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
sub $12911, %rsi
lea addresses_UC_ht+0x17e9a, %r12
cmp %rbx, %rbx
movl $0x61626364, (%r12)
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rbp
push %rdx

// Faulty Load
lea addresses_US+0x1b7ba, %rbp
cmp %r14, %r14
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %rax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rdx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'00': 114, '49': 1, '1a': 2, 'e0': 3, 'be': 1, '47': 5, '79': 1}
00 00 00 00 1a 00 79 00 00 00 00 00 00 e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 e0 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 49 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 be 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 47 00 00 00 00 00 e0 00 00
*/
