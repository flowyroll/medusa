.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x4a60, %rsi
lea addresses_WC_ht+0x11ea0, %rdi
and $25024, %r9
mov $93, %rcx
rep movsw
and $16185, %r11
lea addresses_UC_ht+0xf2a0, %rsi
lea addresses_WC_ht+0x4582, %rdi
nop
nop
cmp %rdx, %rdx
mov $18, %rcx
rep movsw
nop
add $451, %rdi
lea addresses_D_ht+0x1baa0, %rcx
nop
dec %r11
movl $0x61626364, (%rcx)
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x9060, %r9
nop
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x12a0, %rdx
and %r11, %r11
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x114e0, %rdx
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%rdx)
nop
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0x18f00, %rsi
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%rsi)
sub $43039, %r9
lea addresses_WT_ht+0x11330, %rdx
nop
inc %r12
mov (%rdx), %cx
nop
nop
nop
nop
cmp $671, %rdi
lea addresses_normal_ht+0x9aa0, %rsi
lea addresses_WT_ht+0x4ba0, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $113, %rcx
rep movsb
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0xd2a0, %rsi
lea addresses_WT_ht+0x130a0, %rdi
and %rdx, %rdx
mov $104, %rcx
rep movsw
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x19b60, %rsi
nop
nop
nop
dec %r11
mov (%rsi), %r9w
nop
nop
nop
nop
nop
cmp $47626, %rdi
lea addresses_UC_ht+0x2800, %rsi
lea addresses_normal_ht+0x1e9a0, %rdi
clflush (%rsi)
nop
xor %r11, %r11
mov $65, %rcx
rep movsq
cmp %rdi, %rdi
lea addresses_D_ht+0xa85c, %rsi
nop
nop
dec %r9
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
cmp $28341, %r11
lea addresses_WT_ht+0xc9a0, %r12
clflush (%r12)
dec %r9
movups (%r12), %xmm2
vpextrq $1, %xmm2, %r11
dec %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WC+0x14190, %r14
nop
xor $41698, %rsi
movl $0x51525354, (%r14)
nop
nop
nop
nop
cmp $54862, %rsi

// Store
lea addresses_WC+0x12aa0, %r14
nop
nop
nop
nop
sub $15877, %rcx
movl $0x51525354, (%r14)
nop
nop
nop
add $18180, %rsi

// Load
lea addresses_WC+0x19708, %r14
clflush (%r14)
nop
nop
nop
cmp $52935, %r15
mov (%r14), %ecx
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_WC+0x12aa0, %r11
nop
nop
nop
nop
nop
dec %rbx
movb (%r11), %r15b
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'54': 99}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
