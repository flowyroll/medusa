.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x446c, %rbx
nop
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %r8
movq %r8, (%rbx)
nop
nop
dec %rsi
lea addresses_A_ht+0x16f64, %rsi
lea addresses_D_ht+0x3dec, %rdi
nop
xor %rbp, %rbp
mov $48, %rcx
rep movsq
sub %rbx, %rbx
lea addresses_A_ht+0x89ec, %rbx
nop
nop
nop
dec %rdi
mov (%rbx), %cx
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0x5ec, %rsi
lea addresses_UC_ht+0xa9ec, %rdi
nop
nop
nop
and %rax, %rax
mov $74, %rcx
rep movsw
nop
and %rax, %rax
lea addresses_WC_ht+0xb5ec, %rsi
lea addresses_WC_ht+0x17990, %rdi
xor %r8, %r8
mov $44, %rcx
rep movsl
nop
cmp %r10, %r10
lea addresses_A_ht+0x952c, %r8
nop
nop
nop
nop
xor $34908, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
nop
nop
nop
xor $31435, %r10
lea addresses_WT_ht+0xf16c, %rbp
nop
and $57851, %r8
mov $0x6162636465666768, %r10
movq %r10, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
nop
add $48960, %rax
lea addresses_UC_ht+0xae58, %rbp
nop
nop
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
nop
add $31099, %rsi
lea addresses_D_ht+0xc4ec, %rcx
cmp %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rcx)
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x9ec, %r15
xor %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%r15)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Load
lea addresses_UC+0xc9ec, %rcx
clflush (%rcx)
xor $25677, %rdi
mov (%rcx), %rsi
nop
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_US+0xde6c, %rdx
sub %r13, %r13
movl $0x51525354, (%rdx)
nop
nop
add %rcx, %rcx

// Store
lea addresses_PSE+0xe80c, %r13
clflush (%r13)
nop
nop
nop
nop
nop
add %rbp, %rbp
movw $0x5152, (%r13)
nop
nop
nop
dec %r15

// Faulty Load
lea addresses_A+0x39ec, %rsi
nop
nop
nop
nop
nop
inc %rdi
mov (%rsi), %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'58': 203}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
