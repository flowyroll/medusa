.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6cba, %r13
nop
nop
dec %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x512a, %rsi
lea addresses_WC_ht+0x14d92, %rdi
nop
nop
nop
nop
sub $53057, %r12
mov $9, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x1892a, %r13
nop
nop
and $16100, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r13)
nop
nop
sub $12939, %rsi
lea addresses_WC_ht+0x602a, %r13
nop
inc %rcx
movups (%r13), %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x1a52a, %rsi
nop
nop
nop
add $26750, %rcx
movw $0x6162, (%rsi)
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x1b92a, %rsi
lea addresses_A+0x682a, %rdi
nop
nop
nop
nop
xor $56659, %r9
mov $55, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_normal+0xc92a, %rsi
nop
nop
nop
add $12099, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_normal+0xc92a, %rbp
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
nop
sub $424, %r8

// Store
lea addresses_D+0xeb9e, %rsi
nop
nop
nop
nop
nop
add $37, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rsi)
cmp $39442, %rbp

// Load
mov $0x349f48000000052a, %rbp
nop
nop
sub %r9, %r9
vmovntdqa (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
nop
nop
add $59638, %rbp

// Faulty Load
lea addresses_normal+0xc92a, %rsi
nop
nop
and %r13, %r13
mov (%rsi), %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'58': 7}
58 58 58 58 58 58 58
*/
