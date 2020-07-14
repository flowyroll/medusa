.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x14544, %r15
nop
nop
nop
nop
xor $28008, %r9
movb (%r15), %dl
nop
nop
sub $14422, %r8
lea addresses_UC_ht+0x14444, %r14
nop
nop
nop
nop
inc %rax
movb $0x61, (%r14)
nop
nop
nop
nop
xor $58880, %r15
lea addresses_normal_ht+0x1c644, %rsi
lea addresses_WC_ht+0x1e744, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $89, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x1904, %rsi
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
nop
dec %rdx
lea addresses_A_ht+0xfd44, %rcx
and %r9, %r9
mov (%rcx), %edx
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x7c3d, %rsi
nop
nop
sub $4659, %r8
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
sub $62727, %rax
lea addresses_normal_ht+0x11444, %rsi
lea addresses_A_ht+0x1e71c, %rdi
inc %r14
mov $3, %rcx
rep movsq
nop
nop
lfence
lea addresses_UC_ht+0xcbc, %rsi
lea addresses_WT_ht+0x10744, %rdi
clflush (%rsi)
nop
xor %r15, %r15
mov $18, %rcx
rep movsq
nop
nop
nop
nop
add $64785, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rdi

// Store
lea addresses_A+0xe244, %rbp
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rbp)
nop
inc %r15

// Store
lea addresses_RW+0x11c44, %rbp
and %r13, %r13
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
nop
add %rax, %rax

// Load
lea addresses_RW+0x11c44, %r13
nop
nop
inc %rax
mov (%r13), %r10w
nop
nop
nop
nop
inc %r15

// Store
lea addresses_RW+0x9c4, %r9
nop
sub $32759, %rdi
movl $0x51525354, (%r9)
nop
nop
add %r10, %r10

// Store
mov $0xb56b90000000b54, %r13
nop
nop
xor $36348, %r10
movl $0x51525354, (%r13)
nop
nop
add $41720, %r10

// Store
lea addresses_US+0x1dac4, %rdi
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
dec %rax

// Store
lea addresses_RW+0x11c44, %r13
sub $4356, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
nop
cmp $50663, %rbp

// Store
lea addresses_normal+0x2004, %r9
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%r9)
nop
nop
nop
nop
add $35987, %r13

// Faulty Load
lea addresses_RW+0x11c44, %r10
nop
nop
nop
nop
nop
xor $5170, %rax
mov (%r10), %r9w
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'58': 199}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
