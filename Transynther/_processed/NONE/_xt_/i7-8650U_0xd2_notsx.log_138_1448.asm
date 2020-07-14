.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xc5f4, %r12
clflush (%r12)
nop
nop
add $4049, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r12)
cmp %r9, %r9
lea addresses_D_ht+0xc434, %rdi
nop
sub $36740, %r12
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
nop
and $3159, %r10
lea addresses_WC_ht+0xaecf, %rsi
lea addresses_A_ht+0x15464, %rdi
nop
nop
nop
nop
nop
sub $49534, %r13
mov $3, %rcx
rep movsw
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x19634, %rax
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%rax), %r9
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0xb498, %r12
dec %r10
movups (%r12), %xmm5
vpextrq $1, %xmm5, %rdi
add %r9, %r9
lea addresses_UC_ht+0xac34, %rsi
clflush (%rsi)
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm6
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm6, (%rsi)
inc %rdi
lea addresses_A_ht+0x1a6a4, %rsi
lea addresses_D_ht+0x17c34, %rdi
nop
nop
dec %r13
mov $53, %rcx
rep movsb
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x2834, %rsi
lea addresses_UC_ht+0xfc34, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
xor %r12, %r12
mov $27, %rcx
rep movsq
nop
nop
mfence
lea addresses_UC_ht+0x1dc34, %r10
nop
nop
nop
nop
and $20859, %rcx
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
and $42613, %rcx
lea addresses_D_ht+0x1c134, %rsi
lea addresses_A_ht+0x1aff4, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $71, %rcx
rep movsw
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x1e1b4, %rsi
nop
nop
nop
nop
nop
and $39372, %r9
mov (%rsi), %r10
nop
nop
nop
nop
add %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rsi

// Store
lea addresses_PSE+0x1c6a2, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
add $45809, %rax
movl $0x51525354, (%rbx)

// Exception!!!
nop
mov (0), %r13
sub %r13, %r13

// Faulty Load
lea addresses_RW+0x9c34, %r14
nop
dec %r12
movups (%r14), %xmm2
vpextrq $0, %xmm2, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'32': 138}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
