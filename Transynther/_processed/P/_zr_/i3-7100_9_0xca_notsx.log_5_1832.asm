.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1d482, %rax
nop
nop
nop
nop
nop
cmp %r12, %r12
mov (%rax), %r8w
inc %rsi
lea addresses_normal_ht+0x1d902, %r12
nop
nop
nop
nop
cmp $26397, %r8
movl $0x61626364, (%r12)
xor %rsi, %rsi
lea addresses_WC_ht+0xd882, %rsi
lea addresses_UC_ht+0x65e8, %rdi
clflush (%rdi)
nop
inc %r12
mov $27, %rcx
rep movsb
nop
nop
nop
sub $48375, %rax
lea addresses_A_ht+0x1baf2, %rsi
nop
nop
nop
nop
nop
add $16888, %r12
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm0
vpextrq $0, %xmm0, %r8
sub $32143, %r15
lea addresses_WC_ht+0x1e982, %rdi
nop
nop
xor %rcx, %rcx
mov (%rdi), %r12
nop
add %r15, %r15
lea addresses_WC_ht+0x1cd8e, %rsi
lea addresses_D_ht+0x2582, %rdi
nop
nop
nop
dec %r13
mov $123, %rcx
rep movsb
dec %r8
lea addresses_WC_ht+0x15102, %r8
nop
nop
add $40122, %rcx
movw $0x6162, (%r8)
nop
nop
nop
nop
and $6836, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rdi

// Faulty Load
mov $0x582, %r10
nop
nop
nop
sub $6994, %r13
movups (%r10), %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'00': 5}
00 00 00 00 00
*/
