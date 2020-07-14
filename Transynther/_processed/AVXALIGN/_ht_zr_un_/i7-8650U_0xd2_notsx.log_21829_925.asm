.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x6e64, %rcx
clflush (%rcx)
nop
nop
nop
dec %r10
movb (%rcx), %r8b
nop
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x11584, %r14
nop
nop
nop
nop
add %rdx, %rdx
movb (%r14), %cl
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x1afa4, %rsi
lea addresses_UC_ht+0x14224, %rdi
nop
nop
inc %r14
mov $127, %rcx
rep movsb
cmp %r10, %r10
lea addresses_normal_ht+0x1c7a4, %rsi
lea addresses_WC_ht+0x9fa4, %rdi
xor %rdx, %rdx
mov $86, %rcx
rep movsq
nop
nop
xor $36509, %rdx
lea addresses_normal_ht+0x14fa4, %r12
nop
cmp %r8, %r8
mov (%r12), %edx
nop
add $41425, %r12
lea addresses_UC_ht+0x225c, %rsi
lea addresses_UC_ht+0x67a4, %rdi
nop
nop
nop
xor $33142, %rdx
mov $42, %rcx
rep movsb
nop
nop
add $38030, %rdi
lea addresses_WC_ht+0x161a4, %rsi
lea addresses_UC_ht+0x19ba4, %rdi
clflush (%rdi)
nop
nop
dec %r14
mov $53, %rcx
rep movsl
xor $55751, %rsi
lea addresses_UC_ht+0xd27a, %rsi
lea addresses_D_ht+0xf7a4, %rdi
clflush (%rsi)
nop
nop
add %r10, %r10
mov $65, %rcx
rep movsw
nop
nop
nop
nop
and $17958, %r8
lea addresses_normal_ht+0xb324, %rsi
nop
nop
nop
and $20547, %rdx
movl $0x61626364, (%rsi)
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0xe02c, %rsi
lea addresses_WT_ht+0x84c4, %rdi
nop
inc %r8
mov $34, %rcx
rep movsq
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xb014, %rdx
nop
nop
nop
inc %r12
mov $0x6162636465666768, %r14
movq %r14, (%rdx)
sub %r12, %r12
lea addresses_normal_ht+0x18190, %rsi
lea addresses_normal_ht+0x54c4, %rdi
nop
nop
nop
nop
add $20670, %r12
mov $106, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $33334, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Load
lea addresses_A+0x194c7, %r10
nop
nop
nop
nop
nop
add $53551, %r12
mov (%r10), %rdx
add %rdi, %rdi

// Load
lea addresses_WC+0x7bf4, %rax
nop
and $28945, %rbp
mov (%rax), %rdx
sub $32110, %rdx

// Store
lea addresses_normal+0x63a4, %rax
nop
nop
inc %rcx
movl $0x51525354, (%rax)
nop
nop
nop
nop
sub $49806, %rdi

// Store
lea addresses_UC+0xf71f, %r10
clflush (%r10)
nop
nop
nop
xor $27033, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
nop
and %r12, %r12

// Faulty Load
lea addresses_UC+0x3fa4, %rdx
sub %r10, %r10
movaps (%rdx), %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'00': 19297, '44': 2528, 'cc': 1, 'cd': 2, '48': 1}
00 00 00 44 00 00 00 00 00 00 00 44 00 00 44 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 00 00 44 00 44 00 00 00 44 00 00 00 00 00 00 44 00 00 00 44 00 00 44 00 44 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
