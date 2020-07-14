.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x3b0c, %rsi
lea addresses_WC_ht+0x1cb0c, %rdi
xor %rbp, %rbp
mov $22, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $50772, %r15
lea addresses_UC_ht+0xc30c, %rsi
lea addresses_A_ht+0xfddc, %rdi
dec %rbp
mov $64, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $51414, %rsi
lea addresses_UC_ht+0x3b0c, %r8
and %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
dec %rdi
lea addresses_WC_ht+0xf30c, %r15
nop
nop
nop
nop
and $41780, %rax
mov (%r15), %di
nop
xor $18422, %rbp
lea addresses_normal_ht+0x74bc, %rsi
lea addresses_WT_ht+0x10a2c, %rdi
nop
dec %r9
mov $87, %rcx
rep movsw
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x167b0, %rsi
lea addresses_normal_ht+0xa65c, %rdi
dec %rbp
mov $35, %rcx
rep movsq
nop
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x430c, %rdi
clflush (%rdi)
nop
nop
add %r9, %r9
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
nop
nop
nop
and $30537, %r9
lea addresses_D_ht+0x1709b, %rdi
nop
nop
nop
nop
xor $20615, %rbp
mov (%rdi), %r8
nop
nop
nop
and $62991, %r9
lea addresses_D_ht+0x1641c, %r9
add $53056, %rcx
mov (%r9), %edi
nop
nop
add $8602, %rbp
lea addresses_WT_ht+0x3d8c, %rcx
nop
nop
nop
nop
dec %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm2
vmovups %ymm2, (%rcx)
nop
and $8096, %rax
lea addresses_A_ht+0x4c0c, %rsi
lea addresses_A_ht+0x6c90, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $52, %rcx
rep movsb
nop
nop
inc %r9
lea addresses_normal_ht+0x11e04, %rcx
nop
nop
nop
inc %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x59aa, %r12
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r9
movq %r9, (%r12)
nop
nop
nop
cmp $31977, %r15

// REPMOV
lea addresses_A+0x1380c, %rsi
lea addresses_UC+0x7b0c, %rdi
nop
xor $46047, %rdx
mov $87, %rcx
rep movsb
nop
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_UC+0x7b0c, %r12
nop
nop
nop
and $32176, %rdx
mov (%r12), %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'e6': 1, 'f0': 4168, '6d': 1, 'd0': 5, '00': 665, '30': 1, '80': 3, 'c9': 1}
f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 00 f0 00 f0 f0 f0 00 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 00 00 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 00 00 00 f0 f0 f0 00 f0 00 f0 f0 f0 f0 f0 f0 00 f0 00 f0 f0 f0 00 f0 f0 f0 00 f0 f0 f0 f0 f0 00 00 f0 f0 00 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 00 00 f0 f0 f0 f0 f0 00 f0 00 f0 f0 f0 f0 f0 00 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 00 00 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 00 f0 f0 00 f0 00 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 00 f0 f0 00 f0 f0 f0 f0 f0 00 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 00 f0 f0 00 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 00 f0 00 f0 f0 f0 00 f0 f0 f0 f0 00 00 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 00 00 f0 f0 f0 f0 f0 f0 f0 00 f0 00 00 f0 00 f0 f0 c9 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 00 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 00 f0 00 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 00 00 f0 f0 00 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 00 00 f0 f0 f0 00 f0 f0 f0 f0 00 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 d0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 00 00 f0 f0 f0 f0 f0 00 f0 f0 f0 00 00 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 00 00 00 f0 f0 f0 f0 f0 00 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 00 f0 f0 00 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 00 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 00 f0 f0 f0 f0 f0 00 f0 f0 f0 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 f0 f0 f0 00 00 f0 00 f0 f0 f0 f0 f0 00 f0 00 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 00 00 f0 f0 00 f0 f0 f0 f0 f0
*/
