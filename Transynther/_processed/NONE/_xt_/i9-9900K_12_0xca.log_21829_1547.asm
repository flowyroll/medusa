.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x332a, %rsi
lea addresses_WT_ht+0xd902, %rdi
nop
nop
cmp $18022, %r13
mov $93, %rcx
rep movsb
nop
nop
nop
add %r15, %r15
lea addresses_normal_ht+0x1b122, %r10
clflush (%r10)
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x143c2, %rsi
lea addresses_WC_ht+0xdbc2, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $95, %rcx
rep movsb
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x103c2, %rdi
nop
nop
nop
nop
and $17534, %r13
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
nop
nop
nop
inc %r10
lea addresses_A_ht+0x1cfc2, %rsi
lea addresses_WC_ht+0xa478, %rdi
nop
nop
nop
nop
inc %r13
mov $122, %rcx
rep movsw
nop
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x1b0c2, %rsi
lea addresses_WT_ht+0x1dfe2, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $119, %rcx
rep movsl
sub %rsi, %rsi
lea addresses_WT_ht+0x1ea5a, %rsi
lea addresses_normal_ht+0x7d02, %rdi
clflush (%rsi)
nop
nop
nop
sub %r8, %r8
mov $10, %rcx
rep movsq
nop
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x1a9c2, %r10
nop
nop
and %rdx, %rdx
and $0xffffffffffffffc0, %r10
vmovntdqa (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0xdd02, %rsi
lea addresses_WC_ht+0x139c2, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r10, %r10
mov $6, %rcx
rep movsl
inc %rdx
lea addresses_A_ht+0x173c2, %rsi
lea addresses_D_ht+0x1c1b7, %rdi
nop
nop
dec %rdx
mov $20, %rcx
rep movsq
xor $2673, %rdx
lea addresses_UC_ht+0xc86, %r15
nop
nop
nop
nop
xor %rdi, %rdi
movups (%r15), %xmm5
vpextrq $0, %xmm5, %r8
sub $27955, %rsi
lea addresses_UC_ht+0x124b2, %rsi
lea addresses_D_ht+0x17f82, %rdi
nop
cmp $61169, %r8
mov $83, %rcx
rep movsl
nop
nop
add %r10, %r10
lea addresses_WT_ht+0x47c2, %r10
nop
nop
nop
nop
sub $32750, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r10)
nop
nop
inc %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x107c2, %rdx
nop
cmp %rbx, %rbx
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
cmp $82, %rdi

// Store
lea addresses_WC+0x12372, %r10
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r10)
nop
dec %rsi

// Store
mov $0x8fe, %rbx
nop
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x5152, (%rbx)
nop
nop
nop
sub %r15, %r15

// Store
mov $0xdc2, %r15
cmp %r10, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r15)
nop
dec %rsi

// Faulty Load
lea addresses_normal+0xdbc2, %rdx
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rdx), %r14d
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
