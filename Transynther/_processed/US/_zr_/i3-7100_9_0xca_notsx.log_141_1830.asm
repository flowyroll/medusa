.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x19937, %r12
nop
nop
dec %rdx
mov (%r12), %r8
nop
nop
nop
and $28456, %rcx
lea addresses_A_ht+0x9d37, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
nop
nop
cmp $57188, %rdx
lea addresses_A_ht+0x1ceb7, %rsi
lea addresses_WC_ht+0x14337, %rdi
clflush (%rsi)
nop
nop
cmp %r12, %r12
mov $14, %rcx
rep movsb
nop
nop
inc %rcx
lea addresses_WC_ht+0x145f7, %rsi
lea addresses_A_ht+0xf673, %rdi
nop
nop
dec %r12
mov $53, %rcx
rep movsl
nop
sub $60730, %r13
lea addresses_WC_ht+0x51c7, %rbx
nop
nop
nop
nop
nop
add $24724, %rcx
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %rdx
nop
and %rdi, %rdi
lea addresses_normal_ht+0xdf63, %rbx
nop
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r8
movq %r8, (%rbx)
nop
nop
nop
nop
nop
add $11857, %r8
lea addresses_WC_ht+0x1d1b7, %rsi
lea addresses_D_ht+0x1b7, %rdi
nop
and $45683, %rdx
mov $125, %rcx
rep movsw
cmp %r8, %r8
lea addresses_D_ht+0xfc5f, %rbx
nop
nop
sub $7269, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
inc %rbx
lea addresses_WC_ht+0x1ecf7, %rdi
nop
sub %r12, %r12
mov (%rdi), %edx
nop
xor %r13, %r13
lea addresses_WC_ht+0x1efb7, %rdi
nop
nop
nop
add $7880, %r13
movb $0x61, (%rdi)
sub %r12, %r12
lea addresses_A_ht+0x1cd37, %rsi
lea addresses_WC_ht+0x1aa37, %rdi
clflush (%rdi)
nop
nop
and %rdx, %rdx
mov $51, %rcx
rep movsl
nop
nop
nop
nop
sub $4439, %rsi
lea addresses_UC_ht+0x853f, %rcx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %rsi
nop
cmp $43184, %rdi
lea addresses_D_ht+0x2b37, %rsi
lea addresses_UC_ht+0xbdaf, %rdi
nop
nop
nop
nop
nop
and $38047, %r12
mov $38, %rcx
rep movsb
nop
sub $5500, %rsi
lea addresses_WT_ht+0x186cf, %rsi
lea addresses_D_ht+0x17b47, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $105, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x17a23, %rbx
and %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rbx)
xor $48203, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rax
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x1cd37, %r14
nop
nop
nop
nop
sub %r10, %r10
mov (%r14), %ax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rax
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'00': 141}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
