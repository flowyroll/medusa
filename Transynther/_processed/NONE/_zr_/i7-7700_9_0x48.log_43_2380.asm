.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x15fdd, %r11
inc %rdx
movl $0x61626364, (%r11)
nop
inc %r9
lea addresses_WT_ht+0x14518, %r11
nop
nop
nop
nop
sub %rdx, %rdx
movb (%r11), %r13b
nop
nop
nop
sub $29386, %rdx
lea addresses_D_ht+0x281e, %rdx
nop
nop
nop
nop
and $64771, %rcx
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x2718, %r9
nop
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
and $0xffffffffffffffc0, %r9
movntdq %xmm4, (%r9)
nop
nop
nop
nop
add %r9, %r9
lea addresses_UC_ht+0x3530, %rsi
lea addresses_D_ht+0x14398, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $38, %rcx
rep movsq
nop
xor $8771, %rcx
lea addresses_WC_ht+0x1e658, %rbx
nop
nop
nop
nop
sub $28700, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%rbx)
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x18b18, %rsi
lea addresses_WT_ht+0x19478, %rdi
nop
nop
nop
nop
sub $1855, %rdx
mov $24, %rcx
rep movsl
nop
sub $2678, %r11
lea addresses_WT_ht+0x3d18, %rdi
nop
nop
nop
sub $27642, %r9
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %rdx
cmp $48855, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x7314, %rsi
lea addresses_normal+0x980, %rdi
inc %r10
mov $109, %rcx
rep movsq
cmp $51317, %rcx

// Load
lea addresses_WC+0x18b40, %r10
nop
cmp %rcx, %rcx
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
nop
cmp %rdi, %rdi

// Load
lea addresses_WT+0x14f6c, %rsi
nop
sub $13455, %rdi
mov (%rsi), %r10d
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
mov $0x79c, %rax
add %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rax)
xor %r9, %r9

// Store
lea addresses_PSE+0xc118, %rax
nop
nop
nop
nop
add %rcx, %rcx
movl $0x51525354, (%rax)

// Exception!!!
nop
nop
nop
nop
mov (0), %r10
add $5340, %r10

// Store
lea addresses_normal+0xc302, %r12
nop
nop
inc %rcx
mov $0x5152535455565758, %rax
movq %rax, (%r12)
cmp $3714, %r10

// Load
lea addresses_WC+0x18b18, %r12
nop
nop
nop
sub %rdi, %rdi
mov (%r12), %cx
nop
nop
cmp %rax, %rax

// Store
lea addresses_A+0x3718, %r12
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%r12)
and %rdi, %rdi

// Faulty Load
lea addresses_UC+0x19d18, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub %r10, %r10
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r12
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'00': 43}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
