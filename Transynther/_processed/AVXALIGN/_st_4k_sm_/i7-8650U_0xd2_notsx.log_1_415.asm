.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xe68d, %r13
nop
nop
nop
dec %rsi
mov (%r13), %cx
nop
add $34100, %rcx
lea addresses_D_ht+0x8e13, %rsi
lea addresses_UC_ht+0x1240d, %rdi
inc %r9
mov $114, %rcx
rep movsb
nop
inc %rsi
lea addresses_D_ht+0x7feb, %rsi
lea addresses_A_ht+0xa9d5, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r11, %r11
mov $121, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x880d, %rcx
nop
nop
dec %r15
mov (%rcx), %r11w
xor $45932, %rcx
lea addresses_A_ht+0x196c9, %r11
nop
nop
nop
nop
cmp $64497, %rdi
mov (%r11), %r15
nop
nop
xor $64108, %rcx
lea addresses_A_ht+0x498d, %r9
nop
nop
xor $5222, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r9)
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x1e1cd, %rsi
lea addresses_WC_ht+0x1672d, %rdi
nop
nop
nop
nop
inc %rbx
mov $83, %rcx
rep movsw
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0xc40d, %rbx
nop
nop
dec %r13
mov (%rbx), %r11w
nop
xor %rcx, %rcx
lea addresses_D_ht+0x1ef0d, %rbx
nop
inc %rsi
mov (%rbx), %r15d
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x15fad, %r13
nop
nop
nop
cmp $29529, %rdi
mov (%r13), %r9w
nop
inc %r9
lea addresses_A_ht+0xf4b9, %rdi
nop
nop
cmp $34370, %r9
movl $0x61626364, (%rdi)
add $31547, %r9
lea addresses_WT_ht+0xdc0d, %rbx
cmp %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%rbx)
nop
nop
add $64957, %r11
lea addresses_WC_ht+0xc83d, %r15
add $54984, %r13
movl $0x61626364, (%r15)
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x928d, %r13
nop
nop
nop
nop
cmp $18918, %r11
movl $0x61626364, (%r13)
nop
add $19728, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0x1d46d, %rdx
nop
nop
nop
nop
nop
cmp $46794, %r13
movb (%rdx), %r14b
nop
nop
nop
nop
nop
cmp $52176, %rbp

// Store
lea addresses_PSE+0x440d, %r15
nop
nop
and $36251, %rdx
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
add %r10, %r10

// Load
lea addresses_UC+0xb7cd, %rbp
nop
xor %r10, %r10
movb (%rbp), %r13b
nop
nop
nop
nop
nop
sub $61208, %rdx

// Store
lea addresses_WT+0x173cd, %r15
nop
nop
nop
nop
nop
sub %rdx, %rdx
movw $0x5152, (%r15)
nop
xor $25879, %r14

// REPMOV
lea addresses_normal+0x1a10d, %rsi
lea addresses_WT+0x10e0d, %rdi
clflush (%rsi)
nop
nop
nop
and $61431, %rdx
mov $83, %rcx
rep movsq
nop
xor %rdi, %rdi

// REPMOV
lea addresses_PSE+0x440d, %rsi
lea addresses_D+0xa52a, %rdi
nop
nop
nop
nop
cmp $9916, %rdx
mov $49, %rcx
rep movsq
nop
nop
add %rbp, %rbp

// Store
mov $0x71d1850000000c0d, %rsi
nop
nop
nop
add %rcx, %rcx
movw $0x5152, (%rsi)
nop
nop
and %r13, %r13

// Store
lea addresses_WT+0x1020d, %rcx
nop
nop
nop
nop
dec %rdx
movw $0x5152, (%rcx)
cmp $2281, %r14

// Faulty Load
lea addresses_PSE+0x440d, %r13
and %rsi, %rsi
mov (%r13), %ebp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'52': 1}
52
*/
