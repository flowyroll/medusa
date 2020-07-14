.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x193ce, %r12
clflush (%r12)
nop
nop
nop
cmp %rbp, %rbp
movw $0x6162, (%r12)
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x15f9a, %rdi
nop
nop
cmp %r9, %r9
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
nop
cmp $37968, %r12
lea addresses_normal_ht+0x166ae, %rsi
lea addresses_normal_ht+0x1dc0e, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $126, %rcx
rep movsl
nop
nop
inc %r12
lea addresses_normal_ht+0x359e, %rcx
nop
nop
nop
add %rsi, %rsi
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
dec %r8
lea addresses_WT_ht+0xcae, %rsi
lea addresses_WT_ht+0xfbae, %rdi
xor $37526, %rbp
mov $121, %rcx
rep movsb
nop
nop
nop
nop
nop
add $64663, %rcx
lea addresses_UC_ht+0x5f2e, %rsi
lea addresses_WC_ht+0x19fa, %rdi
sub %r8, %r8
mov $32, %rcx
rep movsw
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x1920e, %rsi
lea addresses_D_ht+0x58ae, %rdi
add $12129, %r12
mov $3, %rcx
rep movsb
nop
nop
nop
nop
add $60510, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rbp
push %rbx
push %rdi

// Faulty Load
lea addresses_D+0x180ae, %r14
nop
sub $14286, %rbp
vmovntdqa (%r14), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rbp
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'49': 14255, '48': 1, '44': 7554, '00': 19}
49 00 44 49 44 49 44 44 44 49 49 49 44 44 44 49 49 44 49 44 49 44 49 49 44 49 44 49 44 44 49 44 49 49 49 44 44 44 49 44 44 44 49 44 49 49 49 49 49 44 44 44 44 44 49 49 44 49 49 49 49 49 44 49 49 44 49 49 49 44 49 49 49 49 49 49 44 49 49 49 49 49 44 49 44 49 49 49 44 49 49 44 49 44 49 49 49 49 49 49 44 49 49 49 49 49 49 44 49 49 49 49 49 49 44 44 49 44 49 49 44 44 49 49 49 49 49 49 49 44 49 44 49 44 49 49 44 49 49 49 44 49 49 49 49 49 49 44 49 49 49 49 49 44 49 49 44 44 49 49 49 44 44 44 44 49 49 49 49 44 49 44 44 49 49 44 44 44 49 44 49 49 49 44 49 44 49 44 49 49 44 49 49 49 49 44 49 49 49 49 44 49 49 49 49 49 49 44 49 44 49 49 44 49 44 49 49 49 49 44 49 49 49 44 49 49 49 44 44 44 44 44 49 44 44 44 44 49 49 49 44 49 44 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 44 49 44 49 49 44 44 44 49 49 49 49 49 49 49 44 44 49 49 49 44 49 44 49 49 49 44 49 44 49 44 49 44 49 49 49 49 44 44 44 49 44 44 49 49 49 44 44 49 49 44 44 49 49 44 44 49 44 44 49 49 44 49 49 44 44 49 49 44 49 44 44 44 44 49 49 49 49 44 49 44 49 49 49 49 49 44 49 44 49 49 49 44 49 49 49 44 49 44 44 49 44 49 49 49 44 44 44 49 49 49 44 49 49 49 44 44 49 44 49 49 49 49 44 49 49 49 44 49 49 49 49 44 49 49 44 44 49 44 49 49 44 49 49 44 49 44 44 49 49 49 49 49 49 49 49 44 44 49 49 49 44 44 49 44 49 49 44 49 49 44 49 49 49 49 49 44 44 49 49 44 49 44 49 49 44 49 44 49 44 49 44 49 49 49 49 49 44 49 49 49 44 49 49 44 49 49 49 44 49 44 49 44 49 49 44 49 49 49 44 44 49 49 49 44 49 44 44 44 44 49 49 49 44 49 49 49 44 49 44 49 49 44 44 49 44 49 49 49 49 44 44 44 44 49 49 49 44 49 49 44 44 49 44 49 49 49 44 44 44 44 44 49 44 44 49 44 44 44 49 49 44 49 49 44 44 44 49 49 49 49 49 49 44 44 49 49 49 44 49 44 49 49 44 49 44 44 44 49 44 49 49 49 49 44 49 44 44 49 49 49 44 49 49 49 49 49 49 44 44 49 49 49 49 44 44 49 49 49 44 44 44 49 49 44 49 49 49 49 49 49 49 44 49 49 44 44 49 44 49 49 49 49 49 49 49 49 49 44 49 44 49 44 49 49 44 49 49 49 49 49 49 49 49 49 49 44 49 44 49 49 44 44 49 44 49 49 49 44 44 44 49 49 44 44 49 44 44 49 49 44 49 44 49 44 44 49 44 44 44 44 49 44 49 49 49 44 44 49 49 49 49 44 49 49 49 49 49 44 44 49 49 49 44 49 49 44 44 44 44 44 49 49 49 49 49 44 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 44 49 49 44 49 49 49 49 49 49 44 49 49 44 49 49 49 49 49 49 49 49 44 49 44 44 49 49 49 44 49 49 44 44 44 44 49 49 49 49 49 44 44 44 49 49 49 49 44 49 49 44 49 44 49 49 49 49 44 44 49 49 49 44 49 49 49 44 44 49 49 49 44 49 44 44 44 44 49 44 44 44 49 49 49 44 49 49 49 49 44 44 44 44 44 44 49 44 44 49 49 44 49 49 44 49 49 49 49 49 44 49 49 44 44 49 44 44 49 49 49 49 49 44 44 49 49 44 49 49 49 49 44 49 44 44 49 44 49 49 44 49 49 44 44 49 49 44 49 49 49 49 49 49 44 49 44 49 49 44 49 49 49 49 49 49 44 44 49 49 44 49 49 49 49 44 49 49 49 49 49 49 44 49 49 44 49 49 44 49 49 49 44 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 44 49 49 49 49 44 49 49 44 49 49 49 49 49 44 44 44 49 49 44 49 44 49 49 44 49 44 44 49 49 49 49 49 49 44 49 49 49 44 44 49 44 44 49 44 44 44 49 49 49 44 44 49 49 49 49 49 49 49 49 44 49
*/
