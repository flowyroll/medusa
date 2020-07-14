.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rax
push %rdx
lea addresses_normal_ht+0x6c15, %r13
nop
nop
nop
nop
nop
and %rdx, %rdx
movups (%r13), %xmm0
vpextrq $1, %xmm0, %r15
nop
xor %rax, %rax
lea addresses_WC_ht+0x11c71, %rax
nop
nop
nop
cmp $35843, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm4
and $0xffffffffffffffc0, %rax
movntdq %xmm4, (%rax)
nop
nop
nop
nop
cmp $14041, %rax
lea addresses_UC_ht+0x1539d, %r14
nop
nop
nop
add $18914, %r12
mov $0x6162636465666768, %r15
movq %r15, (%r14)
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x1970d, %rax
nop
nop
nop
nop
nop
xor %r14, %r14
movb $0x61, (%rax)
nop
nop
nop
nop
inc %rax
pop %rdx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rsi

// Store
mov $0x573ed5000000070d, %r14
nop
inc %rcx
movl $0x51525354, (%r14)
nop
nop
nop
nop
sub $11832, %r14

// Load
mov $0x6ad, %rcx
nop
nop
add %rbx, %rbx
mov (%rcx), %r11d
sub %r14, %r14

// Store
lea addresses_UC+0x18f92, %r8
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movntdq %xmm7, (%r8)
nop
nop
nop
and $40733, %r8

// Store
lea addresses_D+0x1d00d, %r12
nop
nop
nop
add $39856, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovaps %ymm6, (%r12)
dec %rbx

// Store
mov $0x70ee32000000070d, %rsi
nop
nop
dec %rbx
movb $0x51, (%rsi)
nop
dec %rbx

// Store
mov $0x4c53db0000000c4d, %rcx
clflush (%rcx)
nop
nop
nop
xor $20741, %r8
movb $0x51, (%rcx)
nop
cmp $45200, %rbx

// Store
mov $0x70ee32000000070d, %r11
nop
inc %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r11)
xor $37014, %r8

// Faulty Load
mov $0x70ee32000000070d, %rcx
xor %rsi, %rsi
mov (%rcx), %r14d
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'00': 1}
00
*/
