.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x126a8, %rcx
cmp $46048, %rax
movl $0x61626364, (%rcx)
add %r13, %r13
lea addresses_normal_ht+0x6c20, %rsi
lea addresses_A_ht+0x1ae78, %rdi
nop
nop
nop
and $56736, %r12
mov $26, %rcx
rep movsl
nop
nop
nop
inc %rax
lea addresses_WT_ht+0x15ed0, %r10
nop
nop
inc %rax
movl $0x61626364, (%r10)
cmp $2961, %rcx
lea addresses_A_ht+0x13028, %rsi
lea addresses_UC_ht+0xabf4, %rdi
nop
sub $298, %r12
mov $91, %rcx
rep movsq
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x2768, %rcx
nop
nop
nop
sub %r10, %r10
movl $0x61626364, (%rcx)
nop
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x1a0a8, %rsi
lea addresses_UC_ht+0xf528, %rdi
nop
and %r9, %r9
mov $57, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x1a668, %r9
nop
add %r12, %r12
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbx
push %rdi
push %rsi

// Faulty Load
lea addresses_D+0x120a8, %rbx
nop
nop
nop
lfence
vmovups (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'36': 26}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
