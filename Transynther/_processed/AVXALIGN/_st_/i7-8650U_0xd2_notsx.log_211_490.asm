.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xecfd, %r8
nop
nop
cmp $47471, %r10
movw $0x6162, (%r8)
nop
nop
sub $25190, %r9
lea addresses_WT_ht+0x166d, %rsi
lea addresses_D_ht+0x8a7d, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $16, %rcx
rep movsl
sub $42210, %rdi
lea addresses_A_ht+0x872d, %rsi
lea addresses_UC_ht+0x1d50d, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $10, %rcx
rep movsw
nop
nop
nop
nop
add $42601, %rcx
lea addresses_WT_ht+0x2e7d, %rsi
lea addresses_normal_ht+0x9e3d, %rdi
cmp $9602, %rax
mov $1, %rcx
rep movsl
nop
nop
cmp $8975, %r8
lea addresses_UC_ht+0x18fa1, %rdi
clflush (%rdi)
cmp %r12, %r12
movb (%rdi), %al
dec %r8
lea addresses_WT_ht+0x13c85, %rsi
lea addresses_WC_ht+0x7834, %rdi
nop
dec %r12
mov $108, %rcx
rep movsq
nop
nop
nop
dec %r8
lea addresses_D_ht+0x597d, %rsi
nop
add $61311, %r8
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x1107d, %r12
add %rdi, %rdi
movups (%r12), %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x267d, %rsi
nop
nop
nop
and $65431, %r12
movl $0x61626364, (%rsi)
cmp %rcx, %rcx
lea addresses_WT_ht+0x13cfd, %rdi
cmp %rax, %rax
movb $0x61, (%rdi)
nop
nop
inc %r8
lea addresses_D_ht+0x2f7d, %rsi
lea addresses_UC_ht+0xd67d, %rdi
nop
nop
nop
nop
cmp $56889, %r8
mov $10, %rcx
rep movsb
nop
nop
nop
cmp $2840, %rcx
lea addresses_UC_ht+0x1347d, %r10
nop
sub %r12, %r12
mov (%r10), %rsi
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0xeb7d, %rsi
lea addresses_D_ht+0xc7d, %rdi
nop
nop
sub $8328, %rax
mov $17, %rcx
rep movsw
nop
nop
nop
nop
nop
and $8032, %rcx
lea addresses_A_ht+0xfd6d, %rcx
clflush (%rcx)
nop
nop
cmp $5786, %rsi
mov (%rcx), %r9
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rax
push %rdx
push %rsi

// Store
lea addresses_D+0x1a07d, %rsi
nop
nop
and $35417, %r13
movw $0x5152, (%rsi)
cmp %r10, %r10

// Faulty Load
lea addresses_WC+0xce7d, %rdx
nop
and $14732, %rax
mov (%rdx), %r8d
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'38': 211}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
