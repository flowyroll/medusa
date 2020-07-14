.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18441, %rcx
clflush (%rcx)
nop
nop
inc %rdi
mov (%rcx), %r8
xor %rax, %rax
lea addresses_UC_ht+0x1d041, %r8
nop
nop
nop
nop
and %rdi, %rdi
mov (%r8), %rbx
nop
and $47583, %rax
lea addresses_UC_ht+0x2441, %rsi
lea addresses_WT_ht+0x1c01d, %rdi
nop
add %r13, %r13
mov $0, %rcx
rep movsb
nop
nop
inc %r8
lea addresses_A_ht+0x3c91, %rcx
clflush (%rcx)
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0xdbed, %rsi
nop
nop
nop
nop
inc %rbx
movb (%rsi), %r13b
sub %rcx, %rcx
lea addresses_WT_ht+0x1c4df, %rax
nop
sub %r13, %r13
movb $0x61, (%rax)
nop
nop
nop
sub %r8, %r8
lea addresses_A_ht+0xecc1, %rax
nop
cmp %r8, %r8
mov (%rax), %r13
nop
inc %r13
lea addresses_A_ht+0xb4b1, %rsi
lea addresses_D_ht+0x16c5b, %rdi
nop
nop
nop
nop
sub $15788, %r15
mov $117, %rcx
rep movsq
nop
nop
nop
sub $64064, %r13
lea addresses_WT_ht+0xf041, %rsi
lea addresses_WC_ht+0x7f01, %rdi
nop
nop
nop
nop
add $47553, %rax
mov $16, %rcx
rep movsl
nop
mfence
lea addresses_WT_ht+0x3ff1, %r15
nop
and %r8, %r8
movb (%r15), %bl
xor $4214, %r8
lea addresses_UC_ht+0xb1c1, %r8
add $42832, %rax
mov $0x6162636465666768, %r15
movq %r15, (%r8)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x1c4a9, %r13
nop
nop
sub %rdi, %rdi
movb (%r13), %r8b
nop
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x8641, %rax
nop
nop
nop
add $3469, %r8
mov $0x6162636465666768, %r13
movq %r13, (%rax)
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0xab41, %rcx
nop
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0xbc41, %rdi
clflush (%rdi)
sub %r13, %r13
movb $0x61, (%rdi)
nop
nop
nop
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0xad59, %r9
nop
nop
nop
xor $20876, %rdx
movb $0x51, (%r9)
nop
nop
nop
nop
xor $23250, %r12

// Store
lea addresses_normal+0x1e041, %r15
clflush (%r15)
nop
nop
sub $46219, %rsi
movb $0x51, (%r15)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_UC+0x1d441, %r12
and %r14, %r14
movw $0x5152, (%r12)
nop
nop
nop
nop
dec %r14

// REPMOV
lea addresses_RW+0x16ca4, %rsi
lea addresses_normal+0xe241, %rdi
nop
nop
inc %r12
mov $39, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $13844, %r9

// Store
lea addresses_D+0x19941, %r9
nop
cmp %r10, %r10
movw $0x5152, (%r9)
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_WC+0x5ec1, %r10
nop
nop
nop
nop
add $27078, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%r10)
nop
dec %r10

// REPMOV
lea addresses_PSE+0xc441, %rsi
lea addresses_WT+0xdf41, %rdi
nop
nop
cmp $13051, %r15
mov $31, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_PSE+0xc441, %r14
nop
xor $42419, %r10
mov (%r14), %r9w
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WT', 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'33': 61}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
