.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xd8ee, %rsi
sub $40885, %r9
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
add %r8, %r8
lea addresses_UC_ht+0xad9a, %r13
nop
nop
and $41270, %r10
movw $0x6162, (%r13)
nop
sub $15521, %rsi
lea addresses_UC_ht+0xbd3e, %r8
nop
sub %r13, %r13
movb $0x61, (%r8)
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WT_ht+0x1893e, %r10
nop
nop
nop
nop
nop
sub %rax, %rax
movw $0x6162, (%r10)
xor $31316, %r12
lea addresses_normal_ht+0x301e, %rsi
lea addresses_WC_ht+0x573e, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $66, %rcx
rep movsq
nop
nop
nop
nop
cmp $1800, %r9
lea addresses_A_ht+0x1033e, %r9
nop
nop
nop
add $16308, %rcx
movups (%r9), %xmm2
vpextrq $0, %xmm2, %r10
nop
xor $5761, %r8
lea addresses_A_ht+0x1cbe, %r12
nop
nop
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r12)
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x1897e, %r9
sub %rsi, %rsi
movb $0x61, (%r9)
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x1373e, %rsi
nop
nop
nop
nop
nop
inc %r12
mov (%rsi), %r8w
nop
nop
nop
xor $50895, %rax
lea addresses_WC_ht+0x189e, %r10
sub %r12, %r12
movb (%r10), %r9b
nop
nop
nop
nop
nop
xor $48003, %rsi
lea addresses_UC_ht+0xa53e, %rsi
lea addresses_WT_ht+0x9a94, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $6, %rcx
rep movsb
nop
nop
nop
xor $46158, %r8
lea addresses_WT_ht+0xb63e, %rax
nop
xor $16508, %r12
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x7e, %r10
dec %rax
mov (%r10), %rcx
nop
nop
nop
nop
nop
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rsi

// Load
lea addresses_WT+0x194e6, %r9
nop
nop
nop
add %r13, %r13
movb (%r9), %r8b
nop
nop
nop
cmp $48232, %r9

// Store
mov $0x4e844e000000056e, %rsi
nop
nop
nop
nop
nop
and %r11, %r11
movw $0x5152, (%rsi)
nop
nop
sub $26135, %r8

// Store
mov $0x5a898800000001a6, %r8
nop
xor %rsi, %rsi
movw $0x5152, (%r8)
nop
and %rsi, %rsi

// Faulty Load
lea addresses_D+0x4f3e, %r11
nop
nop
nop
nop
inc %r13
mov (%r11), %r15d
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rsi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'36': 5}
36 36 36 36 36
*/
