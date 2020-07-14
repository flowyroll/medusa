.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x13cec, %r13
nop
nop
nop
nop
cmp %rax, %rax
movups (%r13), %xmm4
vpextrq $1, %xmm4, %rsi
add $52156, %r14
lea addresses_WC_ht+0xc9ec, %rsi
lea addresses_normal_ht+0x1514c, %rdi
nop
xor %r10, %r10
mov $125, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_D_ht+0x70fc, %r10
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r10)
cmp $24647, %r13
lea addresses_A_ht+0x1a666, %rsi
lea addresses_WC_ht+0x1336c, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $94, %rcx
rep movsl
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x8eec, %rbx
nop
and %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0xe2ec, %r10
nop
dec %r14
mov (%r10), %esi
nop
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x1e97c, %rsi
lea addresses_A_ht+0x78ec, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $59, %rcx
rep movsq
nop
nop
nop
inc %r10
lea addresses_WT_ht+0x15dec, %r14
nop
cmp $11080, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x90c4, %rsi
lea addresses_A_ht+0x1b76c, %rdi
nop
nop
and $44559, %r10
mov $18, %rcx
rep movsw
nop
nop
nop
cmp $33344, %rsi
lea addresses_WT_ht+0x1e7ec, %rsi
lea addresses_normal_ht+0xa72c, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $120, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $39937, %rdi
lea addresses_D_ht+0x1b329, %r13
nop
dec %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
nop
cmp %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rsi

// Load
lea addresses_US+0x7683, %rax
nop
inc %rsi
movups (%rax), %xmm0
vpextrq $1, %xmm0, %r13
nop
xor %r12, %r12

// Load
lea addresses_UC+0x1a30c, %r10
nop
nop
and %r13, %r13
movups (%r10), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
xor %r10, %r10

// Load
mov $0x6b0f4400000006ec, %rsi
and %rcx, %rcx
mov (%rsi), %eax
nop
sub $38215, %r9

// Store
lea addresses_US+0x18d7c, %r12
clflush (%r12)
nop
nop
nop
nop
xor $50531, %r10
movw $0x5152, (%r12)
xor %rcx, %rcx

// Store
lea addresses_WT+0x156ec, %r12
nop
nop
nop
nop
dec %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movups %xmm2, (%r12)
nop
nop
cmp %r10, %r10

// Load
lea addresses_PSE+0x142ec, %rcx
nop
nop
nop
cmp %r13, %r13
movb (%rcx), %al
nop
nop
nop
nop
sub %rax, %rax

// Store
mov $0x51888d0000000d6c, %r13
nop
xor $53037, %r10
movb $0x51, (%r13)
nop
inc %rcx

// Faulty Load
lea addresses_D+0xdeec, %r12
clflush (%r12)
nop
nop
dec %rcx
mov (%r12), %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'36': 236}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
