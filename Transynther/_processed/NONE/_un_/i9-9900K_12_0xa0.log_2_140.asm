.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1b2a3, %r15
nop
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r15)
cmp $48509, %r13
lea addresses_WC_ht+0x16e63, %rbx
nop
sub $10076, %r13
mov $0x6162636465666768, %r8
movq %r8, (%rbx)
nop
nop
nop
dec %r15
lea addresses_WT_ht+0xd4e3, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
nop
dec %r8
lea addresses_WT_ht+0x1ada3, %rsi
lea addresses_WT_ht+0x1a466, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $68, %rcx
rep movsw
nop
nop
nop
add $57126, %r15
lea addresses_UC_ht+0x12523, %rsi
lea addresses_UC_ht+0x154a3, %rdi
nop
add $18684, %r13
mov $127, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r8
lea addresses_A_ht+0xa9e3, %rdi
nop
sub $35644, %rcx
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
nop
nop
nop
inc %r15
lea addresses_D_ht+0x17023, %rsi
lea addresses_WT_ht+0x1aca3, %rdi
and %rbp, %rbp
mov $35, %rcx
rep movsw
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x164a3, %rdi
nop
sub $30514, %rbx
movl $0x61626364, (%rdi)
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x46a3, %r13
nop
nop
nop
nop
nop
add $30794, %rbx
and $0xffffffffffffffc0, %r13
movntdqa (%r13), %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
cmp $64761, %rcx
lea addresses_normal_ht+0x3b75, %rsi
lea addresses_D_ht+0x1363b, %rdi
and $25585, %r15
mov $103, %rcx
rep movsb
sub %rdi, %rdi
lea addresses_normal_ht+0x16be3, %rsi
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%rsi)
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x154a3, %rcx
nop
nop
nop
nop
xor $54888, %r15
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
and $0xffffffffffffffc0, %rcx
movaps %xmm7, (%rcx)
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0xba3, %rbp
nop
nop
inc %rdi
mov (%rbp), %r15d
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x6aa3, %rdi
cmp $1748, %r8
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
sub $21991, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rbp
push %rdi

// Faulty Load
lea addresses_WT+0x2ca3, %rbp
nop
nop
nop
nop
nop
cmp %r8, %r8
movups (%rbp), %xmm1
vpextrq $0, %xmm1, %rdi
lea oracles, %rdi
and $0xff, %rdi
shlq $12, %rdi
mov (%rdi,%rdi,1), %rdi
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'fe': 2}
fe fe
*/
