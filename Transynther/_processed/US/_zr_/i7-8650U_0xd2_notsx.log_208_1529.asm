.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x5197, %r8
clflush (%r8)
nop
nop
nop
nop
and $14880, %r15
movb $0x61, (%r8)
nop
nop
nop
sub $53232, %r13
lea addresses_D_ht+0x8e37, %r13
nop
nop
nop
cmp $12049, %rsi
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
add $38808, %r13
lea addresses_normal_ht+0x1eb8f, %r8
nop
nop
and %r12, %r12
mov (%r8), %r13w
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1ab4b, %rsi
lea addresses_A_ht+0xf573, %rdi
clflush (%rdi)
nop
nop
and %rax, %rax
mov $51, %rcx
rep movsb
nop
nop
nop
add $37734, %rsi
lea addresses_UC_ht+0x115a3, %rsi
nop
nop
nop
nop
cmp $51245, %r15
movw $0x6162, (%rsi)
nop
nop
nop
add %r8, %r8
lea addresses_UC_ht+0x11cc3, %rsi
lea addresses_WC_ht+0x14c3, %rdi
nop
nop
and %r13, %r13
mov $118, %rcx
rep movsb
nop
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x6faf, %rcx
nop
nop
nop
nop
nop
sub %rbx, %rbx
movw $0x6162, (%rcx)
xor $2324, %rsi
lea addresses_UC_ht+0xa3c3, %r12
nop
nop
nop
nop
and $45265, %rbx
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x14bc3, %rsi
lea addresses_D_ht+0xfa03, %rdi
and %rax, %rax
mov $19, %rcx
rep movsb
nop
nop
add $21451, %r15
lea addresses_WC_ht+0x6bc3, %rcx
dec %rax
movw $0x6162, (%rcx)
nop
nop
dec %r12
lea addresses_UC_ht+0x17343, %r12
nop
nop
xor $37172, %r15
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x77c3, %rsi
lea addresses_D_ht+0x113c3, %rdi
add $53382, %r8
mov $40, %rcx
rep movsb
add $29231, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rdx

// Store
lea addresses_A+0x167, %rbp
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movups %xmm7, (%rbp)
nop
nop
add %r15, %r15

// Store
lea addresses_WT+0x19ebb, %r9
nop
nop
nop
nop
nop
cmp %r12, %r12
movb $0x51, (%r9)
nop
nop
and $15149, %rbx

// Load
lea addresses_UC+0x12e43, %r15
and %rbp, %rbp
movb (%r15), %r10b
xor %rbx, %rbx

// Store
mov $0x523, %rdx
nop
nop
nop
nop
add %rbp, %rbp
movl $0x51525354, (%rdx)
nop
cmp %rbx, %rbx

// Store
lea addresses_D+0xebc3, %rbx
clflush (%rbx)
inc %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%rbx)
nop
inc %rbx

// Faulty Load
lea addresses_US+0x3c3, %rbp
nop
nop
nop
nop
nop
inc %rdx
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'00': 208}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
