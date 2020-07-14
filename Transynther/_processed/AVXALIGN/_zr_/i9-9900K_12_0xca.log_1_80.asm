.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1d737, %r14
nop
nop
nop
nop
dec %rdi
movups (%r14), %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
add $62233, %r13
lea addresses_normal_ht+0x1bf77, %rsi
lea addresses_D_ht+0xfb77, %rdi
nop
nop
xor $56652, %r8
mov $86, %rcx
rep movsb
nop
nop
nop
nop
and $43178, %r12
lea addresses_D_ht+0x14ccd, %r12
nop
nop
nop
nop
xor %r13, %r13
movups (%r12), %xmm3
vpextrq $0, %xmm3, %r14
nop
add $52181, %r13
lea addresses_normal_ht+0xa297, %rcx
nop
nop
nop
sub %r12, %r12
movw $0x6162, (%rcx)
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x18977, %r12
nop
nop
nop
add %r15, %r15
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
and $33196, %r15

// Load
lea addresses_D+0xc177, %rsi
clflush (%rsi)
nop
add %r14, %r14
mov (%rsi), %r15w
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
mov $0x177, %r14
nop
nop
nop
nop
nop
and %rdi, %rdi
movl $0x51525354, (%r14)
nop
dec %rdi

// Store
mov $0x177, %rsi
clflush (%rsi)
nop
and $8537, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
xor $29792, %r12

// Store
lea addresses_D+0x5137, %rdi
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rdi)
nop
add $60875, %r14

// Store
lea addresses_D+0xaa63, %rsi
nop
nop
nop
nop
add $24918, %r15
movl $0x51525354, (%rsi)

// Exception!!!
nop
nop
nop
nop
mov (0), %r9
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
mov $0x177, %rcx
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%rcx)
nop
xor %rcx, %rcx

// Faulty Load
mov $0x177, %r15
dec %r12
vmovaps (%r15), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'00': 1}
00
*/
