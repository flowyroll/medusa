.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x12c37, %rsi
lea addresses_normal_ht+0x84b7, %rdi
nop
cmp $11742, %r9
mov $92, %rcx
rep movsb
nop
nop
nop
nop
sub $44253, %rbp
lea addresses_WT_ht+0x1edb7, %rsi
lea addresses_normal_ht+0x12497, %rdi
nop
nop
xor %r8, %r8
mov $62, %rcx
rep movsw
nop
nop
cmp $1250, %rdi
lea addresses_normal_ht+0x4f27, %rsi
lea addresses_A_ht+0x17863, %rdi
nop
nop
xor %rbx, %rbx
mov $10, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0xd177, %rsi
lea addresses_D_ht+0xd127, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $29531, %rax
mov $79, %rcx
rep movsl
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x5f7, %r9
nop
nop
nop
nop
nop
mfence
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
sub $35969, %r9
lea addresses_A_ht+0x724f, %rbp
cmp %rax, %rax
movl $0x61626364, (%rbp)
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x9037, %r8
nop
nop
xor %rdi, %rdi
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
xor $5557, %rcx
lea addresses_UC_ht+0x12d7, %rdi
nop
cmp $19660, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%rdi)
cmp $46757, %rbp
lea addresses_WC_ht+0x9437, %rsi
lea addresses_UC_ht+0x19ab7, %rdi
nop
nop
nop
xor %r9, %r9
mov $107, %rcx
rep movsq
cmp $46227, %rbx
lea addresses_WT_ht+0x5477, %rsi
lea addresses_UC_ht+0x1d237, %rdi
nop
sub %rbp, %rbp
mov $52, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $42919, %r8
lea addresses_normal_ht+0x110c0, %r9
xor %rax, %rax
movl $0x61626364, (%r9)
nop
nop
nop
nop
inc %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x138aa, %rdx
nop
nop
nop
nop
add $39221, %rbx
movl $0x51525354, (%rdx)
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_WT+0x18937, %r10
and $47681, %r13
movl $0x51525354, (%r10)
nop
inc %rdx

// Store
lea addresses_PSE+0x12e37, %r10
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
nop
add $28723, %r10

// Store
lea addresses_A+0x6f97, %rdi
nop
inc %r9
movl $0x51525354, (%rdi)
nop
nop
add %rdi, %rdi

// REPMOV
lea addresses_UC+0x5a47, %rsi
lea addresses_WC+0x4a37, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $108, %rcx
rep movsl
nop
nop
nop
and $60991, %rdx

// Load
mov $0x410b57000000025b, %rcx
nop
add %r10, %r10
mov (%rcx), %r9
nop
cmp $31168, %rsi

// Load
lea addresses_RW+0x1087, %rcx
nop
nop
nop
inc %r13
mov (%rcx), %r10d
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_PSE+0x17237, %rcx
nop
nop
and %r10, %r10
movl $0x51525354, (%rcx)
nop
and %r9, %r9

// Store
mov $0x277b0a0000000937, %r9
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movaps %xmm3, (%r9)
nop
nop
sub $11167, %rbx

// Faulty Load
lea addresses_RW+0x3237, %rbx
nop
and $25927, %rcx
mov (%rbx), %r9w
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'32': 5313}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
