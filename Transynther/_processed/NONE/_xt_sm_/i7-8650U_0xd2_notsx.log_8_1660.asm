.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xe390, %r12
add %rbp, %rbp
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x4c10, %rdx
nop
nop
nop
nop
nop
inc %r11
mov (%rdx), %r10
cmp %r10, %r10
lea addresses_A_ht+0x162b0, %rsi
lea addresses_D_ht+0x1e6a8, %rdi
clflush (%rdi)
nop
nop
xor %r14, %r14
mov $5, %rcx
rep movsb
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0xb6a0, %r12
and $40333, %rdx
mov (%r12), %r10d
nop
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0x1df4, %rsi
lea addresses_UC_ht+0x1e410, %rdi
nop
nop
nop
nop
nop
add $39410, %r11
mov $36, %rcx
rep movsb
nop
nop
dec %r11
lea addresses_normal_ht+0xdad0, %r12
nop
and %r14, %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%r12)
nop
sub %r12, %r12
lea addresses_UC_ht+0x6590, %r10
nop
xor %rdi, %rdi
mov (%r10), %esi
and %r10, %r10
lea addresses_WC_ht+0x10, %rsi
nop
nop
xor $50750, %rbp
movw $0x6162, (%rsi)
nop
nop
xor $59526, %r10
lea addresses_WC_ht+0x3050, %rcx
nop
nop
nop
cmp %r12, %r12
mov (%rcx), %r11
sub %rsi, %rsi
lea addresses_UC_ht+0x9b54, %rsi
lea addresses_UC_ht+0x15810, %rdi
add $62347, %rdx
mov $77, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x1cf10, %rcx
nop
nop
nop
inc %rdx
mov (%rcx), %rdi
nop
nop
nop
nop
nop
and $28657, %rdi
lea addresses_normal_ht+0x16d70, %rbp
nop
nop
nop
xor %rsi, %rsi
movups (%rbp), %xmm5
vpextrq $0, %xmm5, %rdx
nop
cmp $33774, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_US+0x39e8, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_WC+0x2410, %rbp
nop
and $30428, %r14
movb $0x51, (%rbp)
nop
inc %r13

// Load
lea addresses_RW+0xc930, %rdx
nop
nop
sub %rdi, %rdi
mov (%rdx), %r14
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_A+0x19c10, %r13
add %rdx, %rdx
movb $0x51, (%r13)
nop
nop
nop
nop
inc %r14

// Load
lea addresses_RW+0x2e80, %rdx
nop
xor %rbp, %rbp
movb (%rdx), %r13b
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_D+0xfa10, %r8
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)
nop
add $51970, %rdi

// Store
lea addresses_A+0x26e, %rdx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
and $39946, %rdx

// Faulty Load
lea addresses_A+0x19c10, %r14
nop
and $46908, %r8
mov (%r14), %r13d
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'51': 8}
51 51 51 51 51 51 51 51
*/
