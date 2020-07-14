.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1b00e, %rsi
lea addresses_WC_ht+0x1840e, %rdi
nop
xor $11949, %rax
mov $44, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_A_ht+0x9cce, %r15
nop
nop
nop
nop
lfence
mov (%r15), %ecx
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x280e, %rdi
nop
nop
nop
nop
lfence
movw $0x6162, (%rdi)
dec %rdi
lea addresses_WT_ht+0xed0e, %rsi
lea addresses_WT_ht+0x15dfa, %rdi
nop
nop
nop
lfence
mov $52, %rcx
rep movsb
nop
and %rsi, %rsi
lea addresses_WT_ht+0x410e, %r15
nop
nop
nop
nop
xor $39239, %rcx
mov (%r15), %rax
cmp $14600, %r11
lea addresses_WT_ht+0x1100e, %rsi
lea addresses_D_ht+0x658e, %rdi
nop
nop
nop
nop
and $12128, %rdx
mov $115, %rcx
rep movsb
nop
nop
sub %r11, %r11
lea addresses_D_ht+0x1848e, %rdx
clflush (%rdx)
nop
nop
xor $2922, %r15
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
nop
nop
nop
nop
sub $9634, %rdx
lea addresses_WC_ht+0x191e6, %r11
nop
and %rdi, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
add $18472, %r11
lea addresses_WC_ht+0x6332, %rsi
lea addresses_normal_ht+0x480e, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $1, %rcx
rep movsq
nop
xor $33278, %r13
lea addresses_UC_ht+0x4e0e, %rdx
nop
nop
nop
nop
and $32004, %rsi
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
cmp $15656, %rsi
lea addresses_A_ht+0xb87d, %rcx
nop
nop
nop
nop
sub %r13, %r13
movl $0x61626364, (%rcx)
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x12f6, %rdx
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%rdx), %r11
nop
nop
nop
nop
and $51339, %rsi
lea addresses_D_ht+0xc70e, %rdi
nop
nop
nop
nop
sub $33386, %r15
movb $0x61, (%rdi)
nop
nop
nop
nop
sub $26705, %rax
lea addresses_WC_ht+0x1080e, %rcx
nop
nop
nop
nop
cmp %rax, %rax
mov (%rcx), %edx
nop
nop
nop
xor $63692, %rdi
lea addresses_A_ht+0x18566, %rsi
lea addresses_WC_ht+0x714e, %rdi
add %r15, %r15
mov $19, %rcx
rep movsl
and $30913, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rdi
push %rdx

// Load
lea addresses_A+0x880e, %rdi
nop
nop
cmp $39778, %rdx
movb (%rdi), %r13b
nop
nop
nop
add $52000, %r13

// Store
lea addresses_WT+0x1120e, %r11
inc %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r11)
nop
nop
add $42237, %r12

// Store
lea addresses_PSE+0x1940e, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r11, %r11
movb $0x51, (%rdi)
nop
inc %r15

// Store
lea addresses_D+0x1820e, %r12
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, (%r12)
nop
nop
nop
nop
cmp $14953, %r12

// Load
lea addresses_US+0x33b6, %r13
nop
nop
nop
nop
nop
dec %rdi
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
nop
nop
cmp %r13, %r13

// Store
mov $0x6fa, %r13
and %rdi, %rdi
movb $0x51, (%r13)
nop
inc %r11

// Store
lea addresses_PSE+0x1723e, %r14
nop
and %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%r14)
nop
and $40315, %r15

// Store
lea addresses_UC+0xe80e, %r15
nop
nop
xor $45187, %rdx
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
sub $24623, %rdx

// Store
lea addresses_UC+0x1f52e, %r13
nop
nop
nop
and $44978, %r11
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
add $12690, %r14

// Store
lea addresses_RW+0xf38e, %rdx
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
add %r11, %r11

// Store
mov $0x1ac, %r12
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%r12)
nop
nop
sub $61178, %rdi

// Faulty Load
lea addresses_A+0x880e, %r13
nop
nop
nop
nop
and %r14, %r14
mov (%r13), %edi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
