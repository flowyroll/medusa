.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x8876, %r11
nop
nop
nop
nop
nop
sub $59480, %rcx
movl $0x61626364, (%r11)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x774e, %rcx
nop
nop
nop
nop
nop
and $62140, %r11
mov (%rcx), %rdi
nop
nop
nop
nop
nop
add $64184, %r13
lea addresses_UC_ht+0x13038, %r12
nop
nop
nop
nop
nop
xor $16379, %r14
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
xor $40607, %r12
lea addresses_normal_ht+0x1850a, %r12
nop
cmp $59083, %r11
movl $0x61626364, (%r12)
nop
nop
nop
and $34337, %r13
lea addresses_normal_ht+0x14d18, %rsi
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
and $49009, %rcx
lea addresses_A_ht+0x1d2b8, %rcx
nop
dec %r14
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
sub $12603, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rcx
push %rdi

// Store
lea addresses_RW+0x41b8, %rcx
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %r12
movq %r12, (%rcx)
nop
nop
inc %r12

// Faulty Load
lea addresses_D+0xffb8, %r12
nop
nop
dec %rdi
mov (%r12), %r8d
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'36': 30}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
