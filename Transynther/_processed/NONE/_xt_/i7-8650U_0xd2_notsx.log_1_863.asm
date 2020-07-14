.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x13080, %rbp
nop
nop
nop
xor $16716, %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
nop
add $44725, %r14
lea addresses_D_ht+0x3400, %r13
nop
nop
add %r8, %r8
movups (%r13), %xmm3
vpextrq $1, %xmm3, %r15
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x55a1, %rsi
lea addresses_UC_ht+0x785e, %rdi
lfence
mov $110, %rcx
rep movsb
nop
nop
and $56715, %rdi
lea addresses_WT_ht+0x1a980, %rbp
nop
nop
nop
xor $32294, %r13
mov (%rbp), %edi
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xe7c8, %rsi
lea addresses_A_ht+0xc980, %rdi
nop
nop
nop
cmp $46234, %r13
mov $15, %rcx
rep movsq
add $40314, %rcx
lea addresses_UC_ht+0x1ad80, %r10
dec %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %r10
movntdq %xmm1, (%r10)
sub %r10, %r10
lea addresses_UC_ht+0x1e80, %rsi
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
nop
xor $50827, %rsi
lea addresses_normal_ht+0x3fa8, %r8
and $52650, %r13
mov (%r8), %r15
nop
nop
and $58132, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx

// Load
lea addresses_WT+0x145a0, %rbx
and %r8, %r8
movups (%rbx), %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
mov $0x32837b0000000e40, %r12
and $287, %r13
mov $0x5152535455565758, %r8
movq %r8, (%r12)
nop
add $17238, %r13

// Store
lea addresses_A+0x15b80, %rcx
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_WC+0x1f79c, %r13
clflush (%r13)
nop
nop
nop
nop
xor $58988, %rbp
movl $0x51525354, (%r13)
nop
nop
and %rcx, %rcx

// Store
lea addresses_PSE+0x16706, %rbx
clflush (%rbx)
xor $32126, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movups %xmm6, (%rbx)
nop
add %rcx, %rcx

// Load
lea addresses_normal+0xcd80, %rcx
nop
nop
nop
nop
sub $7465, %rbp
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
and %r13, %r13

// Faulty Load
lea addresses_D+0x12980, %rcx
nop
nop
nop
sub %rbp, %rbp
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'36': 1}
36
*/
