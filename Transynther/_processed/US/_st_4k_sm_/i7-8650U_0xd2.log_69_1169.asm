.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xc8fc, %rsi
lea addresses_WC_ht+0x191a, %rdi
nop
nop
nop
nop
nop
add $11763, %r10
mov $125, %rcx
rep movsw
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x95fc, %rsi
lea addresses_UC_ht+0xeafc, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $54712, %r10
mov $90, %rcx
rep movsw
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1e1ac, %rsi
lea addresses_normal_ht+0x8cfc, %rdi
nop
and $62789, %r9
mov $30, %rcx
rep movsl
nop
and %r10, %r10
lea addresses_WT_ht+0x80fc, %rsi
lea addresses_D_ht+0x7d54, %rdi
nop
nop
nop
cmp $27276, %rbx
mov $123, %rcx
rep movsb
sub $36593, %rdi
lea addresses_D_ht+0x9efc, %rsi
and %rbx, %rbx
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
nop
and $26615, %r9
lea addresses_WT_ht+0x126fc, %r10
nop
nop
nop
nop
cmp $61890, %r12
movl $0x61626364, (%r10)
nop
dec %rbx
lea addresses_A_ht+0xaa9c, %rsi
nop
sub $16761, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
nop
add $5893, %r12
lea addresses_WC_ht+0x7a7c, %r9
nop
nop
dec %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x10a8c, %rsi
lea addresses_UC_ht+0x1bcfc, %rdi
nop
and $49119, %r10
mov $90, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0x99fc, %rsi
lea addresses_normal_ht+0x1b89c, %rdi
nop
nop
and $41472, %r13
mov $8, %rcx
rep movsb
nop
nop
nop
nop
add $22838, %rsi
lea addresses_normal_ht+0x15cfc, %r12
nop
nop
inc %r13
mov $0x6162636465666768, %r10
movq %r10, (%r12)
nop
sub $48802, %rbx
lea addresses_WC_ht+0xfc93, %r10
nop
nop
dec %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %r10
vmovntdq %ymm1, (%r10)
nop
cmp $43568, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WC+0x124fc, %rcx
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
cmp $59765, %rbp

// Store
mov $0x1da, %r8
nop
nop
nop
nop
and $28087, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r8)
dec %r8

// Store
lea addresses_US+0x1b4fc, %rcx
nop
nop
and %r10, %r10
movl $0x51525354, (%rcx)

// Exception!!!
nop
nop
nop
nop
mov (0), %rcx
nop
nop
nop
nop
nop
inc %r8

// Load
lea addresses_WC+0x1ebfc, %rdx
dec %rbx
movb (%rdx), %al
nop
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_US+0x1b4fc, %rcx
nop
sub $54598, %rbp
movb (%rcx), %r8b
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'54': 69}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
