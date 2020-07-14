.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x130e2, %rsi
nop
nop
nop
nop
and $11534, %rdx
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x13842, %rsi
lea addresses_normal_ht+0x19662, %rdi
nop
sub $42256, %r8
mov $37, %rcx
rep movsb
nop
nop
nop
nop
xor $50787, %rdx
lea addresses_UC_ht+0x1c670, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %rdx, %rdx
movb $0x61, (%rdi)
nop
cmp $3909, %r8
lea addresses_D_ht+0x162a2, %rdx
nop
nop
nop
nop
and $49222, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0xdd62, %rsi
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rsi)
nop
nop
xor $34767, %r15
lea addresses_A_ht+0x1ce2, %rdi
nop
nop
nop
nop
xor $51846, %r15
movb $0x61, (%rdi)
nop
nop
nop
cmp $62840, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rcx

// Store
mov $0x62, %rbp
xor %rcx, %rcx
movb $0x51, (%rbp)
and %rbp, %rbp

// Load
lea addresses_WT+0x11362, %r9
cmp %r12, %r12
mov (%r9), %rbp
nop
nop
cmp %r8, %r8

// Store
lea addresses_WC+0x1be2, %r11
nop
nop
cmp %rcx, %rcx
movb $0x51, (%r11)
nop
nop
sub $15965, %r13

// Store
lea addresses_RW+0x13762, %rcx
nop
nop
nop
nop
nop
and %r13, %r13
movl $0x51525354, (%rcx)
nop
nop
nop
nop
dec %r11

// Load
mov $0x242, %r9
nop
nop
nop
add %r8, %r8
mov (%r9), %r12w
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_PSE+0xc646, %r8
dec %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r8)
nop
nop
add %r13, %r13

// Store
lea addresses_US+0x13f62, %r11
nop
nop
nop
nop
cmp $33501, %r13
movw $0x5152, (%r11)
add %r13, %r13

// Store
lea addresses_WC+0x11cc2, %r9
nop
nop
cmp $52071, %r12
movb $0x51, (%r9)
nop
nop
sub %rbp, %rbp

// Store
lea addresses_WC+0x7f62, %r13
dec %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
xor %r11, %r11

// Load
mov $0x7258630000000a62, %rcx
nop
nop
nop
add $19753, %r11
mov (%rcx), %r12
xor $35663, %r12

// Store
lea addresses_A+0x1e162, %r8
dec %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%r8)
nop
dec %rbp

// Faulty Load
lea addresses_WC+0x7f62, %r12
nop
nop
nop
nop
nop
cmp %r11, %r11
movups (%r12), %xmm5
vpextrq $0, %xmm5, %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'58': 6}
58 58 58 58 58 58
*/
