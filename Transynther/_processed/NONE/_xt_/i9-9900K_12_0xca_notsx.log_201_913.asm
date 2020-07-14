.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x16c40, %rsi
clflush (%rsi)
nop
nop
nop
nop
inc %r15
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
dec %r15
lea addresses_UC_ht+0x15240, %r8
nop
nop
nop
nop
nop
and $3009, %rdi
movb $0x61, (%r8)
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x6440, %rbx
nop
nop
nop
dec %r12
mov (%rbx), %r8
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x1e240, %rsi
lea addresses_A_ht+0x16440, %rdi
xor %r8, %r8
mov $100, %rcx
rep movsb
nop
nop
dec %rbx
lea addresses_WC_ht+0x1040, %rsi
lea addresses_WT_ht+0x1d00, %rdi
nop
cmp $50812, %r8
mov $96, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x15ad0, %rdi
add %rdx, %rdx
mov (%rdi), %si
xor %rbx, %rbx
lea addresses_D_ht+0xe060, %rbx
nop
nop
and $44963, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%rbx)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x9882, %r8
nop
nop
nop
nop
add %rsi, %rsi
mov (%r8), %edi
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x1bec0, %r12
nop
inc %rcx
movl $0x61626364, (%r12)
nop
nop
nop
nop
cmp $28278, %r15
lea addresses_UC_ht+0x14af8, %rdx
nop
nop
nop
nop
and %r15, %r15
mov (%rdx), %esi
nop
sub %r8, %r8
lea addresses_A_ht+0x1c0, %rsi
lea addresses_WT_ht+0xf48, %rdi
nop
nop
add $60752, %r8
mov $48, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x1eaf8, %r12
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r12)
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rcx

// Store
lea addresses_RW+0x16d44, %r9
dec %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movntdq %xmm1, (%r9)
nop
nop
and $57814, %r9

// Store
lea addresses_A+0x12734, %r12
clflush (%r12)
add %rbx, %rbx
movb $0x51, (%r12)
nop
nop
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_normal+0x7840, %rcx
nop
nop
sub $43610, %r10
movb (%rcx), %r15b
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'34': 201}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
