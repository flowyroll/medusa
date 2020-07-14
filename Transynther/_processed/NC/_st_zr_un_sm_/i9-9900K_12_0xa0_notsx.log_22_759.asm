.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x9849, %rsi
lea addresses_UC_ht+0x4d71, %rdi
nop
nop
nop
and %rbx, %rbx
mov $68, %rcx
rep movsb
lfence
lea addresses_D_ht+0x11ff1, %rsi
lea addresses_D_ht+0xcaf1, %rdi
nop
nop
nop
nop
cmp $38578, %r8
mov $4, %rcx
rep movsb
nop
nop
nop
xor $48799, %rsi
lea addresses_normal_ht+0xbe31, %rsi
lea addresses_WC_ht+0x16371, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $117, %rcx
rep movsq
nop
nop
xor $26113, %rsi
lea addresses_WC_ht+0x10e1, %rsi
lea addresses_normal_ht+0x1da71, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r13
mov $81, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x1df1, %rbp
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
xor $40113, %rbx
lea addresses_WT_ht+0xf71, %rcx
cmp %rbp, %rbp
movl $0x61626364, (%rcx)
and %rbp, %rbp
lea addresses_WT_ht+0xa359, %r9
dec %rsi
mov (%r9), %r13d
nop
nop
inc %r9
lea addresses_WC_ht+0x1b2f1, %rsi
lea addresses_WT_ht+0x11371, %rdi
nop
add %rbp, %rbp
mov $21, %rcx
rep movsq
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x9d51, %rdi
clflush (%rdi)
nop
xor %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
nop
cmp $56642, %r13
lea addresses_normal_ht+0x1ef71, %rsi
lea addresses_normal_ht+0xa671, %rdi
nop
nop
nop
nop
xor $46813, %r9
mov $99, %rcx
rep movsb
and $24981, %rsi
lea addresses_A_ht+0x5c05, %r9
nop
xor %r13, %r13
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x2d71, %r13
nop
nop
nop
xor $19942, %rbx
movups (%r13), %xmm5
vpextrq $0, %xmm5, %r8
nop
nop
inc %rdi
lea addresses_A_ht+0x3a89, %rsi
lea addresses_A_ht+0x8a71, %rdi
clflush (%rsi)
nop
add %r13, %r13
mov $25, %rcx
rep movsb
nop
nop
nop
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbx
push %rdx
push %rsi

// Store
mov $0xbbbb50000000371, %r8
nop
nop
nop
nop
nop
dec %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
nop
sub $26073, %rax

// Store
mov $0x27c8d70000000371, %rsi
xor %r10, %r10
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
add $437, %rbx

// Store
mov $0xbbbb50000000371, %rsi
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movaps %xmm1, (%rsi)
nop
xor %r10, %r10

// Store
lea addresses_normal+0x16f71, %rbx
clflush (%rbx)
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_D+0x19f71, %r10
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movaps %xmm0, (%r10)
nop
and $31934, %rsi

// Faulty Load
mov $0xbbbb50000000371, %r10
nop
nop
nop
nop
nop
and $5736, %r8
mov (%r10), %ebx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}}
{'90': 1, '58': 19, '0c': 1, '00': 1}
0c 58 58 58 58 58 58 00 90 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
