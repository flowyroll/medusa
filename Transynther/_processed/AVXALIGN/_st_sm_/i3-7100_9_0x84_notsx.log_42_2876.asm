.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x6184, %rsi
clflush (%rsi)
nop
nop
xor $31503, %rbx
movb $0x61, (%rsi)
nop
add %r8, %r8
lea addresses_WT_ht+0xef84, %r13
nop
nop
xor %rax, %rax
movb (%r13), %r15b
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x4b64, %rsi
lea addresses_normal_ht+0x784, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $21, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0xaf84, %rcx
nop
nop
nop
nop
nop
xor %rsi, %rsi
movups (%rcx), %xmm3
vpextrq $0, %xmm3, %r13
cmp $49456, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rsi

// Store
mov $0xa04, %r9
nop
nop
nop
nop
nop
add %r12, %r12
movl $0x51525354, (%r9)
nop
nop
nop
nop
cmp $58759, %r10

// Store
mov $0x2b697b0000000784, %rbx
clflush (%rbx)
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
nop
nop
nop
inc %r12

// Store
lea addresses_A+0x15f84, %r10
clflush (%r10)
nop
nop
nop
nop
nop
dec %r15
movl $0x51525354, (%r10)
nop
nop
nop
nop
dec %r12

// Faulty Load
lea addresses_A+0x15f84, %rsi
nop
nop
nop
nop
sub %r9, %r9
mov (%rsi), %r12w
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'54': 42}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
