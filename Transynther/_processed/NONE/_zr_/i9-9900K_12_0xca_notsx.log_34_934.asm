.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x430d, %rsi
lea addresses_WC_ht+0xfc6d, %rdi
nop
nop
and $60785, %r8
mov $100, %rcx
rep movsq
nop
nop
nop
add $17841, %r15
lea addresses_A_ht+0x1b08d, %rcx
nop
nop
nop
nop
add %r10, %r10
movb (%rcx), %r14b
nop
nop
nop
nop
cmp $58706, %rsi
lea addresses_A_ht+0x10f6d, %rcx
nop
nop
nop
nop
nop
add %r14, %r14
movb $0x61, (%rcx)
nop
add $59820, %rcx
lea addresses_D_ht+0xc101, %rcx
nop
cmp $48480, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
xor %r15, %r15
lea addresses_D_ht+0xd97d, %rdi
nop
add $353, %r10
movb $0x61, (%rdi)
nop
nop
nop
sub $23409, %r14
lea addresses_WC_ht+0x1872d, %rsi
lea addresses_D_ht+0x10835, %rdi
nop
inc %rdx
mov $70, %rcx
rep movsw
and $44927, %rcx
lea addresses_UC_ht+0x162d, %rcx
nop
nop
nop
nop
inc %rsi
movw $0x6162, (%rcx)
nop
and $38143, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x1ea0d, %r8
xor $16951, %rbp
movups (%r8), %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
dec %rdi

// Store
lea addresses_PSE+0x1ff2d, %rdi
nop
nop
dec %rsi
mov $0x5152535455565758, %r8
movq %r8, (%rdi)
nop
nop
nop
dec %r13

// Store
lea addresses_WC+0x1472d, %r13
nop
nop
cmp $9810, %rdi
movl $0x51525354, (%r13)
nop
nop
add %r13, %r13

// Load
lea addresses_WT+0xe6ad, %rdi
clflush (%rdi)
cmp %r13, %r13
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %r8
add $62665, %r9

// Store
lea addresses_UC+0x1cf2d, %rsi
nop
xor %rdi, %rdi
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
add $35468, %rsi

// Store
lea addresses_WC+0x15c8d, %r15
clflush (%r15)
nop
cmp %r13, %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%r15)
sub $39204, %r9

// Load
lea addresses_PSE+0xbbad, %r8
nop
nop
nop
nop
nop
xor %r13, %r13
mov (%r8), %r15
nop
nop
cmp %r8, %r8

// Store
lea addresses_WT+0x3fad, %r9
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r15
movq %r15, (%r9)
inc %r8

// REPMOV
lea addresses_PSE+0x1e161, %rsi
lea addresses_A+0x986d, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $122, %rcx
rep movsq
nop
nop
nop
nop
and $19781, %r9

// Store
mov $0x29f592000000053f, %rdi
nop
nop
nop
nop
nop
cmp $1696, %r13
movl $0x51525354, (%rdi)
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_PSE+0x150ad, %r13
nop
inc %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
xor $38138, %r15

// Faulty Load
lea addresses_A+0x1ef2d, %rbp
nop
nop
nop
nop
add $3165, %rsi
mov (%rbp), %edi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 5}}
{'00': 34}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
