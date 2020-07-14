.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x7e58, %rsi
lea addresses_normal_ht+0xaa1d, %rdi
nop
and %r8, %r8
mov $12, %rcx
rep movsq
nop
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x13b8, %r12
nop
and %rbx, %rbx
movups (%r12), %xmm6
vpextrq $0, %xmm6, %rdi
nop
add $53370, %rbx
lea addresses_A_ht+0x13728, %rdi
nop
nop
nop
xor $32482, %r15
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
add $44991, %rbx
lea addresses_WC_ht+0xa268, %rsi
lea addresses_UC_ht+0x181a8, %rdi
inc %r9
mov $81, %rcx
rep movsl
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rdi
push %rdx

// Load
lea addresses_A+0xf468, %rdx
nop
nop
nop
cmp %rbp, %rbp
vmovups (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
nop
nop
nop
dec %r12

// Store
lea addresses_WC+0x7da8, %rdx
and %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rdx)
nop
nop
lfence

// Store
lea addresses_normal+0x55af, %r14
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)
and %rdi, %rdi

// Store
lea addresses_RW+0xc41e, %r12
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %r15
movq %r15, (%r12)
nop
nop
nop
nop
and $3819, %rdi

// Store
lea addresses_normal+0xba8, %rdx
nop
sub %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
nop
nop
nop
nop
nop
inc %r14

// Store
lea addresses_D+0x167a8, %rdx
nop
nop
inc %r15
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
mov $0x205a3c0000000828, %rbp
xor %r14, %r14
movb $0x51, (%rbp)
xor $32767, %rdx

// Faulty Load
mov $0x7ca26c0000000ba8, %rbp
nop
add $53278, %rdx
movb (%rbp), %r13b
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rdx
pop %rdi
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'58': 6, '00': 3}
58 58 00 58 58 58 00 58 00
*/
