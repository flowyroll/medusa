.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x126a0, %rsi
lea addresses_D_ht+0xb8a0, %rdi
clflush (%rsi)
nop
nop
sub %r13, %r13
mov $107, %rcx
rep movsw
add $8845, %rax
lea addresses_D_ht+0x15520, %rsi
lea addresses_D_ht+0x11428, %rdi
nop
nop
add %r10, %r10
mov $96, %rcx
rep movsq
and %rsi, %rsi
lea addresses_D_ht+0x9fa0, %rsi
lea addresses_WC_ht+0x10e78, %rdi
nop
nop
and %rax, %rax
mov $106, %rcx
rep movsl
add %rcx, %rcx
lea addresses_A_ht+0x19260, %rsi
nop
nop
nop
nop
sub $15726, %r15
mov (%rsi), %eax
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x15f6c, %r15
nop
nop
nop
nop
nop
lfence
mov (%r15), %eax
nop
inc %rax
lea addresses_UC_ht+0x193a0, %rdi
nop
nop
nop
nop
nop
dec %r10
movb $0x61, (%rdi)
nop
nop
sub $10456, %r13
lea addresses_A_ht+0xefa0, %rdi
nop
nop
nop
add %r15, %r15
movb (%rdi), %al
nop
and %rcx, %rcx
lea addresses_WC_ht+0x55a0, %rsi
nop
and $63250, %r13
mov (%rsi), %ecx
nop
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x6c48, %rax
nop
nop
nop
inc %r13
mov (%rax), %rdi
nop
nop
nop
nop
nop
and $16633, %r13
lea addresses_D_ht+0x5e28, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub %r10, %r10
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %r15
xor $1011, %r15
lea addresses_normal_ht+0x113a0, %rcx
nop
nop
inc %rsi
movl $0x61626364, (%rcx)
nop
nop
add %r15, %r15
lea addresses_WT_ht+0xefa0, %rcx
sub $8979, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0xff20, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $6472, %r13
movb (%rdi), %r10b
nop
nop
nop
add $34511, %rdi
lea addresses_D_ht+0x9190, %rsi
lea addresses_normal_ht+0x1d0e8, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %rbp
mov $40, %rcx
rep movsl
xor $54506, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rcx

// Store
mov $0x1909770000000c20, %rbx
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rbx)
nop
and %rcx, %rcx

// Store
lea addresses_PSE+0x9c38, %rax
nop
nop
xor $13157, %r13
movb $0x51, (%rax)
nop
nop
nop
nop
sub $21225, %r14

// Store
lea addresses_normal+0x13fa0, %r15
clflush (%r15)
nop
nop
nop
nop
nop
add $57518, %rbx
movl $0x51525354, (%r15)
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_WT+0x19ba0, %r11
nop
nop
nop
xor $37086, %r14
movw $0x5152, (%r11)
cmp %r11, %r11

// Faulty Load
lea addresses_PSE+0x117a0, %r13
nop
nop
nop
nop
nop
dec %rax
mov (%r13), %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'33': 38}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
