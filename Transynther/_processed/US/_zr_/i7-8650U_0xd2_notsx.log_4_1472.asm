.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rdx
lea addresses_normal_ht+0xb98f, %r10
add %rdx, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r10)
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0xac5b, %r13
nop
nop
nop
nop
sub %rax, %rax
movl $0x61626364, (%r13)
sub %rdx, %rdx
lea addresses_UC_ht+0x9c6f, %rbp
nop
nop
nop
sub $36776, %rdx
mov (%rbp), %r13d
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0xfd0f, %r13
and %rax, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
nop
nop
cmp $34003, %rbp
lea addresses_UC_ht+0xc6f, %rbp
nop
nop
nop
nop
sub %r12, %r12
vmovups (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
nop
sub $10842, %r13
pop %rdx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xe2ef, %rsi
clflush (%rsi)
nop
nop
nop
inc %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rsi)
inc %r13

// REPMOV
lea addresses_US+0x1aa6f, %rsi
mov $0x137730000000a9f, %rdi
nop
nop
nop
nop
nop
xor $13061, %rdx
mov $9, %rcx
rep movsw
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_PSE+0x13f6f, %r13
nop
nop
nop
xor $42091, %rcx
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_US+0xe66f, %rdi
nop
xor %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
nop
xor $49387, %rsi

// Store
lea addresses_D+0x1b617, %r9
sub %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%r9)

// Exception!!!
nop
nop
nop
nop
mov (0), %rsi
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_A+0x1a0ef, %rcx
nop
nop
nop
nop
nop
xor $10435, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
nop
xor $15468, %r14

// Faulty Load
lea addresses_US+0x1aa6f, %rcx
sub %r14, %r14
mov (%rcx), %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_NC', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'00': 4}
00 00 00 00
*/
