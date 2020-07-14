.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1629f, %r10
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
nop
nop
xor $14655, %rax
lea addresses_UC_ht+0x1ec27, %r8
nop
nop
nop
nop
nop
add $10908, %rbp
mov (%r8), %cx
nop
nop
add $25525, %r14
lea addresses_WT_ht+0x6f19, %r8
nop
nop
sub $23107, %r14
movups (%r8), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0x10397, %rcx
nop
cmp $7546, %rdi
movb $0x61, (%rcx)
add %rbp, %rbp
lea addresses_A_ht+0x509f, %rcx
nop
nop
nop
cmp $21471, %rbp
mov (%rcx), %r14
xor %rcx, %rcx
lea addresses_normal_ht+0x1231f, %r10
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r10)
nop
cmp %r14, %r14
lea addresses_UC_ht+0x69ff, %rsi
lea addresses_WT_ht+0xd1f, %rdi
nop
nop
nop
nop
dec %rax
mov $84, %rcx
rep movsb
nop
nop
nop
and $37043, %rsi
lea addresses_WC_ht+0x4c1f, %r10
nop
nop
nop
nop
and %r8, %r8
movb $0x61, (%r10)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x9a5f, %r10
nop
nop
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%r10)
nop
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x16837, %rbp
clflush (%rbp)
nop
nop
xor %rax, %rax
movw $0x6162, (%rbp)
xor $11836, %rdi
lea addresses_UC_ht+0x1959f, %r8
nop
nop
nop
nop
inc %rcx
movb $0x61, (%r8)
nop
nop
dec %r8
lea addresses_D_ht+0xe21f, %rdi
clflush (%rdi)
nop
sub %rbp, %rbp
mov (%rdi), %rax
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x12fdf, %rcx
nop
nop
nop
nop
nop
add %rax, %rax
mov (%rcx), %r8w
nop
nop
nop
nop
nop
sub $19769, %r8
lea addresses_A_ht+0x1ae03, %rsi
lea addresses_WC_ht+0x1b79f, %rdi
nop
nop
nop
nop
nop
and $2820, %r8
mov $63, %rcx
rep movsq
nop
nop
nop
sub $50430, %rbp
lea addresses_WC_ht+0x128b, %rsi
lea addresses_WT_ht+0x1c69f, %rdi
add %rbp, %rbp
mov $121, %rcx
rep movsq
nop
nop
cmp $39864, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0x1d29f, %rcx
nop
xor $41135, %r9
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
cmp $50061, %rbx

// Store
lea addresses_WT+0x1814f, %r9
clflush (%r9)
nop
add $20694, %r12
movb $0x51, (%r9)
nop
nop
nop
nop
nop
xor $25254, %r9

// Store
lea addresses_normal+0x92a3, %rbx
clflush (%rbx)
nop
nop
nop
cmp $27219, %rdx
movl $0x51525354, (%rbx)
nop
nop
sub $44120, %rbx

// Store
lea addresses_normal+0x1991f, %rbx
nop
nop
nop
nop
nop
xor $11833, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovntdq %ymm2, (%rbx)
nop
sub %rax, %rax

// Store
lea addresses_UC+0x9217, %rbx
clflush (%rbx)
nop
and $60092, %rdx
movw $0x5152, (%rbx)
inc %r9

// Store
lea addresses_PSE+0x12cf7, %r12
nop
cmp %rdx, %rdx
movw $0x5152, (%r12)
nop
nop
nop
inc %rcx

// Load
lea addresses_A+0xb21f, %rax
nop
cmp %r12, %r12
mov (%rax), %ecx
nop
nop
nop
nop
nop
xor %r12, %r12

// REPMOV
lea addresses_A+0x322b, %rsi
lea addresses_normal+0x3a9f, %rdi
nop
nop
nop
add %r15, %r15
mov $56, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $29642, %rcx

// REPMOV
lea addresses_A+0x1d9b0, %rsi
lea addresses_WT+0x13bcf, %rdi
nop
add %rbx, %rbx
mov $1, %rcx
rep movsl
nop
nop
nop
xor $6134, %rsi

// Store
lea addresses_WC+0x1a89f, %rbx
dec %rdx
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
nop
nop
cmp $36212, %rbx

// Faulty Load
lea addresses_US+0x1b29f, %r12
nop
inc %r15
movb (%r12), %bl
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'59': 1}
59
*/
