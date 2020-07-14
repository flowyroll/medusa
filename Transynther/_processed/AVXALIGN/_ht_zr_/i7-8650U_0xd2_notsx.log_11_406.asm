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
lea addresses_D_ht+0x1c363, %r14
nop
nop
nop
nop
sub $49510, %r12
movl $0x61626364, (%r14)
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x128e9, %rsi
lea addresses_D_ht+0x1821b, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $105, %rcx
rep movsb
dec %r10
lea addresses_WT_ht+0x501b, %rcx
nop
nop
nop
nop
nop
xor $53090, %rdx
mov (%rcx), %esi
cmp %r8, %r8
lea addresses_UC_ht+0x1a21b, %rsi
lea addresses_WT_ht+0x7fdb, %rdi
xor $32637, %r8
mov $17, %rcx
rep movsl
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x14b50, %rdx
nop
nop
nop
and $58398, %rcx
mov (%rdx), %r8d
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x3f1b, %r8
nop
nop
nop
nop
nop
and %r14, %r14
and $0xffffffffffffffc0, %r8
movntdqa (%r8), %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
add $61500, %r10
lea addresses_normal_ht+0xb98d, %rsi
nop
nop
add %r10, %r10
mov (%rsi), %ecx
nop
nop
nop
and $24214, %rcx
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
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rsi

// Faulty Load
lea addresses_UC+0x1621b, %r13
nop
nop
nop
nop
and %r9, %r9
vmovaps (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 10, '45': 1}
00 45 00 00 00 00 00 00 00 00 00
*/
