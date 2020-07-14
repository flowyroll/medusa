.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xcd87, %r9
nop
nop
nop
xor $9671, %r14
movb (%r9), %r15b
nop
add %r11, %r11
lea addresses_normal_ht+0x10927, %rcx
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
nop
nop
nop
and $29586, %r9
lea addresses_WC_ht+0x5d87, %rcx
nop
nop
nop
nop
add %r13, %r13
movb $0x61, (%rcx)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x4db2, %rbx
nop
nop
cmp $55801, %r9
movl $0x61626364, (%rbx)
nop
nop
nop
nop
add $45944, %rbx
lea addresses_D_ht+0x1b87, %rbx
nop
cmp $5314, %r9
movb (%rbx), %r15b
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x5f37, %rsi
lea addresses_normal_ht+0x18787, %rdi
xor %r11, %r11
mov $59, %rcx
rep movsw
nop
nop
nop
nop
sub $61643, %rdi
lea addresses_UC_ht+0x1bdcf, %rsi
lea addresses_D_ht+0x1cb87, %rdi
nop
sub $40925, %rbx
mov $120, %rcx
rep movsb
nop
nop
nop
and $46294, %r14
lea addresses_D_ht+0x14f87, %r14
nop
lfence
mov (%r14), %r9w
and $9278, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rax
push %rdi

// Store
lea addresses_WT+0x16f87, %rax
dec %r11
mov $0x5152535455565758, %r14
movq %r14, (%rax)
sub $49183, %rax

// Faulty Load
lea addresses_US+0x18787, %rax
nop
nop
sub %r9, %r9
movb (%rax), %r14b
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rdi
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 11, 'same': False}}
{'00': 55}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
