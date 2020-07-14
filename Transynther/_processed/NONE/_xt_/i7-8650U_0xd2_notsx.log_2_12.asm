.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xac26, %r12
nop
nop
nop
sub $55289, %r10
movb (%r12), %bl
nop
nop
cmp $28779, %r8
lea addresses_WT_ht+0xe26, %rsi
lea addresses_UC_ht+0xe0a6, %rdi
nop
nop
nop
cmp %r8, %r8
mov $9, %rcx
rep movsq
nop
nop
nop
cmp $64419, %rbx
lea addresses_D_ht+0x41ca, %r8
nop
xor %rbx, %rbx
mov (%r8), %edi
nop
nop
nop
nop
mfence
lea addresses_D_ht+0xbca6, %r10
nop
inc %r8
movw $0x6162, (%r10)
nop
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x5326, %r8
nop
nop
nop
nop
nop
inc %rsi
mov (%r8), %ebx
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x18c26, %r10
nop
nop
nop
nop
dec %rcx
mov (%r10), %rsi
nop
nop
nop
cmp %r10, %r10

// Store
mov $0xa6, %rsi
nop
nop
nop
nop
and $9593, %rax
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
sub $46423, %rsi

// Store
lea addresses_WT+0x1e2d5, %rax
nop
nop
cmp %r15, %r15
movl $0x51525354, (%rax)
sub %rax, %rax

// Store
lea addresses_WC+0x1d546, %rcx
nop
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Load
mov $0x626, %r10
nop
nop
nop
sub $50943, %r12
mov (%r10), %ax
nop
sub %r10, %r10

// Store
lea addresses_A+0x10c86, %rax
and %r10, %r10
movl $0x51525354, (%rax)
nop
nop
nop
dec %rsi

// Store
lea addresses_D+0x103a6, %rax
nop
nop
nop
sub %rcx, %rcx
movw $0x5152, (%rax)
nop
nop
cmp $61277, %r12

// Faulty Load
lea addresses_RW+0x18c26, %r15
nop
nop
nop
cmp %rsi, %rsi
mov (%r15), %edi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'32': 2}
32 32
*/
