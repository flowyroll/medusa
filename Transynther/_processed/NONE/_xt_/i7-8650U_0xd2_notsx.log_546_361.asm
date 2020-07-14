.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x55ac, %rsi
lea addresses_D_ht+0x182ec, %rdi
nop
nop
sub %rbp, %rbp
mov $7, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x8ae, %r12
dec %r8
mov (%r12), %edx
nop
nop
nop
nop
xor $47132, %r8
lea addresses_A_ht+0x14018, %rbp
clflush (%rbp)
nop
cmp %r8, %r8
mov (%rbp), %rdi
nop
nop
nop
add $32161, %rcx
lea addresses_D_ht+0x272c, %rdi
nop
nop
nop
add %rdx, %rdx
mov (%rdi), %r8w
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x24fc, %rsi
nop
nop
nop
sub $50178, %r8
movw $0x6162, (%rsi)
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0xd2ec, %rcx
nop
nop
nop
nop
inc %rdx
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
nop
nop
nop
sub $39918, %rcx
lea addresses_WC_ht+0x13b0, %rdi
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm4
and $0xffffffffffffffc0, %rdi
vmovaps %ymm4, (%rdi)
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0xb6ec, %rsi
lea addresses_A_ht+0xfb64, %rdi
nop
nop
sub %r13, %r13
mov $112, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rbp
lea addresses_normal_ht+0xa5e8, %rcx
nop
nop
nop
nop
dec %r12
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
dec %r13
lea addresses_D_ht+0x155ec, %rsi
lea addresses_D_ht+0x1626c, %rdi
nop
nop
nop
nop
add $15181, %r12
mov $45, %rcx
rep movsl
cmp $20410, %r12
lea addresses_D_ht+0x102ec, %rsi
lea addresses_WC_ht+0xaf5c, %rdi
nop
sub $65390, %rbp
mov $61, %rcx
rep movsl
nop
nop
nop
nop
nop
and $23239, %rdi
lea addresses_UC_ht+0x10d7c, %rsi
nop
nop
nop
add %rcx, %rcx
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x1816c, %rsi
lea addresses_D_ht+0x19eec, %rdi
cmp %rbp, %rbp
mov $21, %rcx
rep movsq
nop
nop
and $590, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rdi

// Store
mov $0xe6c, %r8
nop
nop
and $64785, %rbp
movw $0x5152, (%r8)

// Exception!!!
nop
nop
nop
nop
mov (0), %r8
nop
nop
nop
inc %rdi

// Store
lea addresses_US+0x180ec, %rdi
clflush (%rdi)
nop
nop
dec %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%rdi)
cmp %r13, %r13

// Store
lea addresses_D+0xfa4, %r8
nop
nop
nop
inc %r10
movl $0x51525354, (%r8)
sub $16918, %r8

// Store
lea addresses_A+0x19fcc, %rbp
nop
nop
nop
nop
nop
sub $13524, %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%rbp)
dec %rbp

// Faulty Load
lea addresses_D+0x16aec, %rbp
nop
nop
nop
xor %r14, %r14
mov (%rbp), %r13w
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'36': 546}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
