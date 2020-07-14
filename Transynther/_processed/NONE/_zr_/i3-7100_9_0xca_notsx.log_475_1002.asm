.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1d136, %r12
xor %rax, %rax
and $0xffffffffffffffc0, %r12
movaps (%r12), %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
add $35772, %r13
lea addresses_normal_ht+0x11376, %r10
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r10), %r15
nop
nop
nop
nop
nop
add $37984, %r13
lea addresses_UC_ht+0xf28c, %rdx
nop
nop
sub $63421, %r13
movw $0x6162, (%rdx)
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x10e36, %r15
nop
nop
nop
nop
nop
sub %r13, %r13
mov (%r15), %bx
nop
xor %r13, %r13
lea addresses_WT_ht+0x13436, %rsi
lea addresses_normal_ht+0x1bd36, %rdi
clflush (%rdi)
nop
nop
sub $42202, %rbx
mov $62, %rcx
rep movsw
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0xd0f6, %rsi
lea addresses_normal_ht+0x5bc6, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
add %r13, %r13
mov $73, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x5a36, %rdi
nop
nop
nop
nop
and $19091, %rax
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
mfence
lea addresses_D_ht+0x102c4, %rsi
lea addresses_WT_ht+0x536, %rdi
nop
dec %r12
mov $59, %rcx
rep movsq
nop
cmp $54217, %rax
lea addresses_WT_ht+0x10946, %rsi
lea addresses_A_ht+0x11b36, %rdi
nop
and $14217, %rdx
mov $64, %rcx
rep movsq
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x4236, %r15
clflush (%r15)
add $4358, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r15)
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x40f6, %r12
clflush (%r12)
nop
and $23670, %r10
movb $0x61, (%r12)
nop
xor $59202, %r15
lea addresses_WC_ht+0x16536, %r13
nop
nop
nop
nop
add $52119, %r15
mov (%r13), %rbx
nop
nop
dec %rax
lea addresses_A_ht+0x5446, %rsi
lea addresses_normal_ht+0xbada, %rdi
sub $44202, %r15
mov $61, %rcx
rep movsq
nop
nop
nop
nop
and $27928, %r13
lea addresses_WT_ht+0x16436, %rdi
nop
nop
nop
dec %rbx
mov (%rdi), %cx
nop
nop
nop
nop
nop
xor $57890, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Load
lea addresses_normal+0x13a36, %rdx
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movb (%rdx), %al
nop
cmp %rax, %rax

// Load
lea addresses_A+0x5a36, %r10
and %r14, %r14
mov (%r10), %r9w
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_UC+0x14d6, %rcx
nop
nop
nop
nop
xor $25824, %r9
movl $0x51525354, (%rcx)
cmp %r14, %r14

// Store
mov $0x232f6d0000000936, %rcx
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
nop
and %r14, %r14

// Store
lea addresses_UC+0x6736, %rdx
nop
nop
nop
nop
nop
xor $12359, %rcx
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
add $11694, %r14

// Faulty Load
lea addresses_A+0x1236, %rax
nop
nop
nop
xor %rbx, %rbx
movb (%rax), %dl
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 475}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
