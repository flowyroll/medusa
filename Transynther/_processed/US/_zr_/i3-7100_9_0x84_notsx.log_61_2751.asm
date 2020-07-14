.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x19913, %r11
nop
nop
nop
nop
cmp $37461, %rbp
movups (%r11), %xmm2
vpextrq $1, %xmm2, %r15
nop
sub $7705, %rax
lea addresses_UC_ht+0x1b683, %r11
and $64339, %r12
movl $0x61626364, (%r11)
nop
nop
and $16956, %rbp
lea addresses_normal_ht+0xf993, %rdx
cmp %rdi, %rdi
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
nop
nop
xor $46537, %rbp
lea addresses_A_ht+0x8b13, %rsi
lea addresses_D_ht+0x8b13, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $40, %rcx
rep movsl
inc %r12
lea addresses_WC_ht+0x18feb, %rdi
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%rdi)
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x10313, %r15
clflush (%r15)
sub %rdx, %rdx
mov (%r15), %rdi
nop
nop
nop
xor $56771, %r15
lea addresses_WT_ht+0x14913, %r11
nop
nop
nop
xor %rdx, %rdx
movw $0x6162, (%r11)
nop
and %r15, %r15
lea addresses_UC_ht+0x18f3, %r12
nop
nop
nop
and $49172, %rax
movups (%r12), %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
add $61955, %rbp
lea addresses_D_ht+0x22b, %r11
cmp $31177, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
nop
sub $33031, %rax
lea addresses_normal_ht+0x18ab3, %rsi
lea addresses_D_ht+0x10113, %rdi
nop
nop
nop
and $42074, %rbp
mov $85, %rcx
rep movsw
sub %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_A+0x41e3, %r12
nop
and $24991, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovaps %ymm6, (%r12)
nop
nop
nop
nop
cmp %rax, %rax

// Store
mov $0xe13, %r10
nop
nop
nop
nop
sub $61748, %r13
movb $0x51, (%r10)
nop
nop
nop
nop
inc %r13

// Store
lea addresses_RW+0xe13, %rax
nop
nop
nop
xor $38050, %rsi
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
nop
nop
and $43187, %r13

// Load
lea addresses_A+0xcd15, %rax
and %rbx, %rbx
movups (%rax), %xmm7
vpextrq $1, %xmm7, %r10
nop
xor $31378, %r13

// Store
lea addresses_RW+0x1a513, %rbx
nop
xor %r13, %r13
movw $0x5152, (%rbx)
nop
nop
and $8380, %rcx

// Faulty Load
lea addresses_US+0x9913, %r13
nop
nop
nop
nop
xor $59624, %rsi
movups (%r13), %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'00': 61}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
