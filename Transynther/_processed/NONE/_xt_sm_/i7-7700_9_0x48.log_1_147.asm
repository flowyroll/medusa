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
lea addresses_UC_ht+0x16cf6, %rcx
nop
nop
nop
dec %r8
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
nop
nop
inc %r12
lea addresses_UC_ht+0x4e96, %rsi
lea addresses_D_ht+0x1028, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $95, %rcx
rep movsl
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x7488, %rsi
lea addresses_A_ht+0x19d06, %rdi
nop
xor $128, %rdx
mov $80, %rcx
rep movsw
nop
nop
nop
nop
and $45240, %rsi
lea addresses_UC_ht+0x15976, %rsi
lea addresses_A_ht+0x9366, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %rbp
mov $8, %rcx
rep movsq
nop
nop
nop
dec %r8
lea addresses_D_ht+0x9d76, %r13
nop
nop
nop
nop
nop
add %r8, %r8
movups (%r13), %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0xe776, %rsi
lea addresses_WC_ht+0x17d76, %rdi
add %r12, %r12
mov $115, %rcx
rep movsq
add %rbp, %rbp
lea addresses_WT_ht+0x12576, %r12
nop
nop
and %rcx, %rcx
mov (%r12), %ebp
inc %rdi
lea addresses_WT_ht+0xe976, %rdi
xor $23992, %rsi
movb (%rdi), %cl
nop
nop
xor $25655, %r12
lea addresses_normal_ht+0x14c76, %rcx
xor %r8, %r8
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
and $32967, %rcx
lea addresses_D_ht+0x12076, %rsi
lea addresses_WC_ht+0x13bae, %rdi
dec %r8
mov $24, %rcx
rep movsw
xor $15260, %r12
lea addresses_WT_ht+0x10af6, %rdx
nop
nop
nop
nop
cmp $21626, %rdi
mov (%rdx), %esi
nop
nop
nop
cmp $60684, %r8
lea addresses_WT_ht+0x1a776, %r8
sub %r12, %r12
movups (%r8), %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
cmp $33663, %r13
lea addresses_WT_ht+0xb25, %rdx
clflush (%rdx)
nop
nop
nop
nop
sub $29825, %rsi
mov (%rdx), %r12d
inc %rsi
lea addresses_normal_ht+0x6f76, %rsi
lea addresses_UC_ht+0x1eece, %rdi
nop
and $27115, %r13
mov $61, %rcx
rep movsl
nop
nop
dec %rdx
lea addresses_UC_ht+0x465e, %rsi
nop
nop
nop
nop
and %rcx, %rcx
movw $0x6162, (%rsi)
add %rbp, %rbp
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
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_normal+0x13676, %r15
nop
nop
nop
nop
xor $30317, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
nop
add %r9, %r9

// Load
lea addresses_D+0x9d76, %rdi
nop
nop
sub %rcx, %rcx
movaps (%rdi), %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
nop
sub %r15, %r15

// Load
lea addresses_WT+0xd176, %rax
nop
xor %rdx, %rdx
mov (%rax), %r15d
nop
nop
nop
nop
nop
inc %rbp

// Load
lea addresses_D+0x14bd6, %rdi
nop
and %rax, %rax
mov (%rdi), %edx
inc %r9

// Store
lea addresses_PSE+0x9976, %rcx
nop
nop
nop
cmp %r15, %r15
movl $0x51525354, (%rcx)
nop
cmp %rdx, %rdx

// Store
mov $0x76, %r9
nop
nop
nop
and $3189, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r9)
nop
nop
sub $65000, %rdi

// Store
lea addresses_normal+0xce36, %r15
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_PSE+0x9976, %rcx
nop
nop
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rcx)
nop
xor %rdx, %rdx

// Load
lea addresses_normal+0x12976, %rdi
nop
and $28914, %r15
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_PSE+0x9976, %rdi
nop
nop
and $6915, %rbp
movb (%rdi), %dl
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'58': 1}
58
*/
