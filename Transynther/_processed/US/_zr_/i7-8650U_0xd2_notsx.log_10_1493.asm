.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x679a, %rsi
lea addresses_UC_ht+0x1ae7a, %rdi
nop
nop
nop
add %r8, %r8
mov $120, %rcx
rep movsb
nop
inc %rsi
lea addresses_UC_ht+0x219a, %rsi
lea addresses_WT_ht+0x10716, %rdi
nop
nop
nop
nop
xor $63718, %r12
mov $105, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x6bfa, %rcx
nop
xor %rdi, %rdi
movb (%rcx), %r8b
nop
nop
cmp $19818, %rdi
lea addresses_normal_ht+0x18ea, %r15
nop
nop
nop
nop
add $56037, %rbp
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
sub $1592, %rbp
lea addresses_UC_ht+0xdc9a, %rsi
lea addresses_WC_ht+0x299a, %rdi
add %rdx, %rdx
mov $44, %rcx
rep movsq
nop
nop
nop
add $23726, %r8
lea addresses_D_ht+0x1495a, %rdx
nop
inc %r15
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
inc %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x1a99a, %rsi
nop
nop
and %r10, %r10
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
