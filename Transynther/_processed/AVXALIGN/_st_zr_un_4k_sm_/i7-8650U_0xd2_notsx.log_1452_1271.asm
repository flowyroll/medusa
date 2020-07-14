.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x8393, %rbx
nop
nop
nop
nop
inc %r8
vmovups (%rbx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0x16be7, %rax
nop
nop
nop
nop
nop
dec %rsi
movl $0x61626364, (%rax)
nop
nop
nop
nop
xor $30843, %rax
lea addresses_WC_ht+0x1a9b3, %rbx
nop
nop
mfence
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
nop
nop
sub $62309, %r8
lea addresses_A_ht+0xd33, %rsi
lea addresses_D_ht+0x79b3, %rdi
nop
sub $48455, %rdx
mov $3, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x4cf8, %r15
nop
nop
nop
nop
xor $60549, %rdi
movw $0x6162, (%r15)
nop
nop
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0x1133, %r9
nop
and $25420, %rbp
mov (%r9), %r15d
nop
nop
nop
nop
nop
add %r15, %r15

// REPMOV
lea addresses_A+0x1deb3, %rsi
lea addresses_normal+0x1ab3, %rdi
xor %r13, %r13
mov $88, %rcx
rep movsb
sub %rdx, %rdx

// Store
lea addresses_normal+0x139b3, %rcx
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
nop
nop
nop
and %rdi, %rdi

// Store
mov $0x1189f000000009b3, %rcx
nop
cmp $52282, %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
mov $0x45defb0000000793, %rdi
nop
nop
nop
nop
cmp $44271, %r9
movl $0x51525354, (%rdi)
nop
inc %rax

// Faulty Load
mov $0x1189f000000009b3, %rsi
sub $59026, %rdx
mov (%rsi), %edi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'14': 155, '58': 1242, '00': 55}
14 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 58 58 58 58 58 00 14 58 00 14 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 14 58 58 14 14 14 58 14 58 58 14 58 58 58 58 58 14 58 14 58 00 58 58 58 14 14 58 58 58 58 58 58 58 14 58 58 58 58 14 58 00 58 14 58 58 14 58 58 14 14 58 58 58 58 58 58 58 58 14 58 00 58 14 58 14 00 58 58 14 58 58 58 58 58 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 14 00 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 14 58 58 14 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 14 58 58 58 58 58 14 14 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 14 14 58 58 58 58 14 14 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 58 00 58 14 58 00 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 14 58 58 58 58 58 58 58 58 58 14 58 58 58 14 14 58 58 58 58 14 58 58 00 58 14 00 14 58 58 58 58 58 58 58 00 14 14 14 58 14 58 58 58 14 58 14 14 14 14 58 58 58 58 58 58 58 58 14 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 58 14 58 58 14 14 58 14 58 58 58 14 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 14 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 14 58 58 58 58 58 14 58 58 58 58 58 14 58 58 14 58 58 58 58 58 58 58 58 58 58 58 58 14 00 14 14 14 14 00 58 14 00 00 58 58 14 58 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 00 58 58 58 58 58 14 58 14 58 58 14 14 58 58 58 58 58 58 58 58 58 58 14 14 58 58 58 58 58 58 58 14 58 58 58 58 14 58 58 58 00 58 14 14 58 58 58 58 14 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 14 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 58 58 58 58 14 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58
*/
