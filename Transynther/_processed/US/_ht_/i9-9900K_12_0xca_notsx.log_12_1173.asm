.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x132ce, %rdi
nop
sub $45310, %r8
movb (%rdi), %r15b
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x1568e, %r15
nop
nop
nop
nop
nop
inc %rsi
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
nop
nop
nop
and $50876, %rsi
lea addresses_normal_ht+0x1498e, %rsi
lea addresses_UC_ht+0x16b4e, %rdi
nop
nop
nop
nop
nop
add $48884, %rdx
mov $58, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r15
lea addresses_WT_ht+0x6cce, %rcx
clflush (%rcx)
nop
nop
nop
nop
and $11138, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
inc %r15
lea addresses_D_ht+0x1378e, %r8
nop
nop
nop
and %rdx, %rdx
vmovups (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
xor $16441, %rsi
lea addresses_WT_ht+0xf0e, %r15
nop
nop
nop
lfence
mov (%r15), %bx
nop
nop
nop
and $35877, %rcx
lea addresses_A_ht+0x117ce, %rsi
lea addresses_A_ht+0xa4c6, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $120, %rcx
rep movsb
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x141ce, %rcx
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
cmp $10854, %rcx
lea addresses_WT_ht+0x56ee, %r15
nop
nop
xor %rdi, %rdi
movb (%r15), %r8b
nop
nop
nop
nop
nop
cmp $4643, %rdi
lea addresses_A_ht+0x94ce, %rsi
lea addresses_WC_ht+0x130ce, %rdi
nop
nop
nop
xor %r8, %r8
mov $13, %rcx
rep movsb
nop
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0x70ce, %rbx
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
and $53375, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_D+0x190ce, %rdi
xor $46642, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
add $62530, %rdx

// Load
lea addresses_WT+0x1e1ce, %r9
add $25514, %r14
mov (%r9), %r8
nop
nop
nop
sub $20874, %r9

// Faulty Load
lea addresses_US+0xf8ce, %r9
nop
nop
nop
cmp $46122, %rdx
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'46': 4, '45': 4, '44': 4}
45 45 46 44 44 46 44 44 46 45 46 45
*/
