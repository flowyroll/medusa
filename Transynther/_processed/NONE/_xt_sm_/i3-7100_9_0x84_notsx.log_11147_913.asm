.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xa9ca, %r13
nop
nop
nop
nop
and $2215, %rdx
movw $0x6162, (%r13)
nop
nop
nop
and $24847, %r11
lea addresses_A_ht+0x1b66a, %rsi
lea addresses_WC_ht+0x280a, %rdi
xor %r11, %r11
mov $53, %rcx
rep movsq
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1bc6, %rsi
cmp %r15, %r15
mov (%rsi), %cx
sub %rsi, %rsi
lea addresses_D_ht+0x8a72, %r13
nop
nop
nop
xor %rcx, %rcx
mov (%r13), %rsi
nop
lfence
lea addresses_A_ht+0xc6ca, %rsi
lea addresses_WC_ht+0xe6ca, %rdi
nop
and %r8, %r8
mov $72, %rcx
rep movsl
nop
mfence
lea addresses_D_ht+0x214e, %rsi
nop
dec %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rsi)
nop
dec %rsi
lea addresses_normal_ht+0x604a, %rsi
lea addresses_normal_ht+0x435a, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $45885, %r8
mov $4, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $22431, %r13
lea addresses_normal_ht+0x32ca, %rsi
lea addresses_WT_ht+0x340a, %rdi
nop
cmp $7944, %rdx
mov $97, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0x87ef, %r8
add %r15, %r15
movb $0x61, (%r8)
sub %rsi, %rsi
lea addresses_WC_ht+0x1608a, %rsi
nop
nop
nop
sub $57187, %r11
mov (%rsi), %cx
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x1cca, %rdi
sub %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
nop
add $24745, %r11
lea addresses_UC_ht+0x8bc6, %r15
nop
sub $24941, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
nop
add $42128, %r13
lea addresses_A_ht+0x638a, %rcx
and %r13, %r13
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
xor $28144, %r15
lea addresses_A_ht+0x2d4a, %rsi
lea addresses_UC_ht+0xdeca, %rdi
nop
nop
nop
add %r11, %r11
mov $47, %rcx
rep movsw
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x3eca, %rsi
lea addresses_WT_ht+0x66ca, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $114, %rcx
rep movsl
nop
nop
cmp $51819, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_D+0x14eca, %r15
nop
nop
nop
nop
nop
add %rbx, %rbx
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
sub $60072, %rbx

// Load
lea addresses_A+0x794a, %r13
nop
nop
nop
xor %r15, %r15
mov (%r13), %ebx
xor $23030, %r10

// Store
lea addresses_RW+0x1c6ca, %r10
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovntdq %ymm0, (%r10)
cmp $34544, %r10

// Store
lea addresses_D+0x1a34a, %rbx
xor %rax, %rax
movb $0x51, (%rbx)
nop
nop
nop
nop
sub $16342, %rbp

// Store
lea addresses_RW+0x4996, %r13
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r13)
cmp $2153, %rax

// Load
lea addresses_normal+0x33da, %r10
nop
nop
nop
cmp %rbx, %rbx
movups (%r10), %xmm7
vpextrq $0, %xmm7, %rax
nop
cmp %r13, %r13

// Store
lea addresses_normal+0x994a, %rbp
and %rbx, %rbx
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
cmp $28322, %r15

// Faulty Load
lea addresses_D+0x14eca, %r15
nop
nop
nop
nop
xor %r13, %r13
mov (%r15), %ebp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'54': 11147}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
