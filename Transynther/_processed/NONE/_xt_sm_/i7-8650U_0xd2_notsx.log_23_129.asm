.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x5fa2, %r15
sub %r11, %r11
mov (%r15), %rbp
xor $62555, %rax
lea addresses_D_ht+0xe5ba, %r14
clflush (%r14)
nop
nop
nop
cmp %r13, %r13
movups (%r14), %xmm6
vpextrq $0, %xmm6, %rbp
add %r11, %r11
lea addresses_WT_ht+0x154e2, %rax
and $37529, %rsi
movb $0x61, (%rax)
and %r15, %r15
lea addresses_WC_ht+0x12d62, %r15
nop
nop
nop
xor $54104, %r14
mov $0x6162636465666768, %r11
movq %r11, (%r15)
nop
inc %rsi
lea addresses_WT_ht+0x16aa2, %r14
nop
lfence
mov (%r14), %r13d
nop
nop
inc %r15
lea addresses_UC_ht+0xd031, %rsi
lea addresses_UC_ht+0x114a2, %rdi
nop
nop
nop
cmp $33381, %r11
mov $10, %rcx
rep movsl
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x1c002, %rsi
lea addresses_normal_ht+0x1aca2, %rdi
nop
nop
nop
nop
inc %r15
mov $0, %rcx
rep movsl
and $30092, %rdi
lea addresses_normal_ht+0xfc22, %rsi
nop
nop
dec %rcx
movb $0x61, (%rsi)
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x144a2, %rsi
lea addresses_normal_ht+0x9ece, %rdi
clflush (%rsi)
nop
nop
nop
inc %r13
mov $75, %rcx
rep movsl
xor $56194, %rbp
lea addresses_A_ht+0x1a4a2, %rsi
lea addresses_normal_ht+0x1aca2, %rdi
nop
add $13141, %rbp
mov $89, %rcx
rep movsq
nop
nop
nop
nop
xor $52835, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rax
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x10e8a, %r10
nop
add %rbx, %rbx
movw $0x5152, (%r10)
nop
nop
nop
nop
sub $4455, %rdi

// Store
mov $0x8a2, %rdi
nop
nop
cmp %rsi, %rsi
movw $0x5152, (%rdi)
nop
add $18593, %rsi

// Store
lea addresses_D+0xc832, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
movw $0x5152, (%rdi)
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_D+0x144a2, %rdi
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)
nop
nop
nop
and $3978, %rdx

// Store
lea addresses_UC+0xc5e2, %rsi
nop
nop
nop
nop
dec %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
add $15643, %rdx

// Store
lea addresses_A+0x1dca2, %r10
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
nop
nop
nop
nop
and $35490, %rdi

// Store
lea addresses_UC+0x2ca2, %rsi
dec %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
nop
nop
nop
sub %r10, %r10

// Store
mov $0x4a2, %rdi
add $16693, %rbx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
and $33494, %rax

// Store
lea addresses_A+0xa922, %rdi
sub %r10, %r10
movb $0x51, (%rdi)

// Exception!!!
nop
nop
mov (0), %rdx
add %rdx, %rdx

// Store
lea addresses_US+0x124a2, %rdx
nop
nop
nop
nop
dec %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
nop
nop
dec %rdi

// Faulty Load
lea addresses_A+0x1dca2, %rbx
nop
cmp %r10, %r10
mov (%rbx), %di
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'58': 23}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
