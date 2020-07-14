.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x16872, %r8
nop
nop
nop
nop
nop
lfence
mov (%r8), %r14d
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0xb072, %r8
clflush (%r8)
nop
and $39087, %r13
movb (%r8), %r10b
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x1e472, %rax
nop
cmp %r14, %r14
mov (%rax), %r10
nop
nop
nop
dec %r8
lea addresses_UC_ht+0xeaf4, %rsi
lea addresses_normal_ht+0xbe72, %rdi
clflush (%rsi)
nop
nop
nop
and $64839, %r14
mov $70, %rcx
rep movsw
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x1ada6, %r13
xor %rcx, %rcx
mov (%r13), %r14
nop
nop
nop
nop
sub $57913, %r14
lea addresses_D_ht+0x17c82, %rax
nop
nop
and %rsi, %rsi
movups (%rax), %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
nop
nop
nop
add $64165, %r13
lea addresses_UC_ht+0x1c3a2, %rsi
lea addresses_A_ht+0x472, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $19, %rcx
rep movsb
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x8072, %rax
xor $11936, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
nop
nop
sub $8380, %r10
lea addresses_A_ht+0xb872, %rsi
lea addresses_A_ht+0x6e3a, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %r8, %r8
mov $57, %rcx
rep movsq
nop
nop
nop
and $52431, %rcx
lea addresses_D_ht+0x1d722, %rax
nop
nop
nop
xor %r10, %r10
movb (%rax), %r14b
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0xad8, %rsi
lea addresses_WC_ht+0x1e072, %rdi
nop
nop
nop
nop
nop
mfence
mov $50, %rcx
rep movsq
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0xebb2, %r13
nop
nop
nop
add $54033, %rcx
movl $0x61626364, (%r13)
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x2132, %rsi
lea addresses_A_ht+0x75f2, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $3, %rcx
rep movsq
nop
nop
nop
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rbp

// Store
mov $0x574f1e0000000672, %r9
nop
nop
nop
nop
xor $49472, %r11
movb $0x51, (%r9)
nop
nop
sub %r11, %r11

// Store
lea addresses_PSE+0x8472, %r11
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%r11)
nop
nop
cmp %r10, %r10

// Faulty Load
lea addresses_normal+0xa072, %r12
nop
nop
nop
nop
and %rbp, %rbp
movups (%r12), %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'34': 6}
34 34 34 34 34 34
*/
