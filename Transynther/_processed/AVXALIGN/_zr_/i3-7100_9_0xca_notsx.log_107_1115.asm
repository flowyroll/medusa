.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x6903, %r10
nop
nop
nop
nop
nop
and $54258, %r9
mov $0x6162636465666768, %rax
movq %rax, (%r10)
and $28621, %r10
lea addresses_UC_ht+0x14bd9, %rbp
nop
nop
add %r14, %r14
mov (%rbp), %rbx
nop
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x1d403, %rsi
lea addresses_WT_ht+0x1df8f, %rdi
nop
nop
nop
add $45297, %r9
mov $92, %rcx
rep movsb
xor $63115, %rbp
lea addresses_UC_ht+0x16203, %rax
nop
nop
nop
nop
xor $50638, %rdi
movb (%rax), %r9b
dec %rsi
lea addresses_WC_ht+0x1c8ff, %rsi
lea addresses_UC_ht+0x1ea03, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $17098, %r14
mov $64, %rcx
rep movsb
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x14203, %rbp
nop
nop
nop
nop
add %r10, %r10
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r14
nop
nop
add $10425, %r9
lea addresses_normal_ht+0x1a503, %rbp
nop
add %r14, %r14
vmovups (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
add $30603, %r10
lea addresses_D_ht+0xcdfb, %rsi
lea addresses_D_ht+0x133cb, %rdi
nop
sub $61894, %r14
mov $119, %rcx
rep movsw
nop
nop
nop
add $55196, %rbp
lea addresses_UC_ht+0x1a283, %r9
nop
nop
nop
cmp %rbp, %rbp
movl $0x61626364, (%r9)
nop
xor $13855, %rbp
lea addresses_A_ht+0xe203, %rbx
nop
nop
nop
nop
and %r10, %r10
movb $0x61, (%rbx)
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x12203, %rsi
lea addresses_D_ht+0x12883, %rdi
nop
nop
nop
nop
add $5934, %rbp
mov $3, %rcx
rep movsq
nop
sub $52947, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0x16a03, %rbp
cmp %r13, %r13
movb (%rbp), %dl
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'00': 107}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
