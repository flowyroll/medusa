.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xf6bc, %r13
clflush (%r13)
nop
nop
sub $52705, %r14
movb (%r13), %r12b
nop
nop
nop
xor $35392, %r13
lea addresses_normal_ht+0x7708, %rcx
nop
xor $36414, %rax
mov (%rcx), %ebp
nop
nop
cmp $46121, %rax
lea addresses_WC_ht+0xb5a8, %rsi
lea addresses_WC_ht+0x68a3, %rdi
clflush (%rsi)
and %rax, %rax
mov $116, %rcx
rep movsl
nop
nop
xor $39592, %rbp
lea addresses_WC_ht+0x95c6, %rbp
and %r13, %r13
movups (%rbp), %xmm4
vpextrq $1, %xmm4, %r14
sub %rcx, %rcx
lea addresses_WC_ht+0x12dbe, %rsi
lea addresses_WC_ht+0x1bc08, %rdi
nop
nop
nop
nop
nop
cmp $8046, %rbp
mov $86, %rcx
rep movsq
xor $19435, %rax
lea addresses_normal_ht+0x8834, %r12
nop
cmp $30047, %rbp
movb $0x61, (%r12)
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x4a08, %rax
nop
and $3852, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x10ac8, %rax
nop
nop
nop
and %rbp, %rbp
movb $0x61, (%rax)
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x10668, %rcx
nop
nop
xor %r13, %r13
mov (%rcx), %r14d
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0xa308, %rcx
nop
nop
nop
nop
nop
add $910, %r13
movl $0x61626364, (%rcx)
nop
nop
nop
sub $50475, %rcx
lea addresses_WC_ht+0x12908, %rsi
lea addresses_WC_ht+0x9308, %rdi
nop
nop
dec %r14
mov $64, %rcx
rep movsb
nop
nop
nop
and %r13, %r13
lea addresses_WT_ht+0xbc48, %rsi
lea addresses_normal_ht+0xe328, %rdi
and %r13, %r13
mov $48, %rcx
rep movsb
nop
xor $38591, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1d4a6, %rsi
lea addresses_A+0x15708, %rdi
nop
add $41982, %r11
mov $62, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rdi

// REPMOV
lea addresses_WT+0x18328, %rsi
lea addresses_PSE+0x12b08, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $39, %rcx
rep movsl
add %r15, %r15

// REPMOV
lea addresses_normal+0x5f00, %rsi
lea addresses_A+0x1b08, %rdi
nop
xor %r13, %r13
mov $47, %rcx
rep movsq
inc %r11

// Store
lea addresses_D+0xe978, %rcx
nop
nop
nop
nop
nop
cmp $40060, %r13
movw $0x5152, (%rcx)
nop
add $65054, %r13

// Store
lea addresses_UC+0x7db8, %r11
dec %rsi
movw $0x5152, (%r11)
nop
cmp $20248, %r11

// Load
lea addresses_WC+0x17c88, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov (%rdi), %cx
nop
xor %r13, %r13

// Store
lea addresses_normal+0x54e8, %rbx
nop
nop
dec %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
sub $18348, %rbx

// Store
lea addresses_WC+0x14958, %r15
add $16286, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%r15)
add $21176, %rsi

// Store
mov $0x208, %r15
nop
nop
nop
nop
cmp %r11, %r11
movb $0x51, (%r15)
sub $29094, %r15

// Load
lea addresses_US+0x19b08, %r13
nop
add %rsi, %rsi
movntdqa (%r13), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_PSE+0xec1c, %rcx
nop
nop
nop
nop
nop
cmp $29111, %rdi
movl $0x51525354, (%rcx)
nop
nop
nop
nop
sub $27484, %rdi

// Load
lea addresses_normal+0x708, %rdi
clflush (%rdi)
nop
xor $37301, %r11
mov (%rdi), %bx
nop
xor $17990, %rbx

// Store
mov $0x15806a0000000148, %rsi
cmp %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%rsi)
xor $15766, %rdi

// Faulty Load
lea addresses_PSE+0x12b08, %r11
nop
xor $7468, %r13
mov (%r11), %r15w
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
