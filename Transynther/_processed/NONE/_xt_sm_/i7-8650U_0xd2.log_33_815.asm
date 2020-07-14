.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x43c4, %rbx
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x1e4c0, %rsi
sub %r13, %r13
movb (%rsi), %r12b
nop
sub $59225, %r14
lea addresses_D_ht+0xd6c0, %rsi
lea addresses_UC_ht+0x12e80, %rdi
nop
nop
nop
xor %r10, %r10
mov $40, %rcx
rep movsq
nop
nop
xor %r10, %r10
lea addresses_A_ht+0x14680, %r10
nop
sub %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r10)
nop
nop
sub $65284, %r14
lea addresses_D_ht+0x1aef0, %rsi
lea addresses_A_ht+0x2a64, %rdi
clflush (%rdi)
nop
nop
nop
cmp $37366, %r12
mov $69, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x6ac0, %r10
clflush (%r10)
nop
nop
nop
nop
nop
lfence
movw $0x6162, (%r10)
nop
nop
nop
sub $32462, %rsi
lea addresses_A_ht+0x17fbc, %rsi
lea addresses_WT_ht+0x12b90, %rdi
nop
nop
nop
nop
add $44915, %r11
mov $7, %rcx
rep movsw
nop
sub %rbx, %rbx
lea addresses_A_ht+0x86c0, %rcx
nop
nop
and $48305, %rsi
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
xor $10980, %rdi
lea addresses_WT_ht+0x4a5a, %rcx
nop
cmp %rdi, %rdi
movb (%rcx), %r10b
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1dac0, %r11
clflush (%r11)
nop
sub $62244, %rsi
vmovups (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0xc8d0, %r12
clflush (%r12)
nop
nop
nop
nop
nop
and %rdi, %rdi
movb (%r12), %r13b
add $34162, %r13
lea addresses_normal_ht+0x4656, %rsi
and %rcx, %rcx
movb (%rsi), %r11b
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x1e1b4, %r12
nop
nop
nop
dec %r14
movb $0x61, (%r12)
and $24224, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rbp

// Store
lea addresses_PSE+0x162c0, %rbp
nop
nop
nop
nop
sub $22066, %r14
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
xor %rax, %rax

// Load
lea addresses_UC+0x1c9aa, %rbp
nop
nop
add %r13, %r13
movups (%rbp), %xmm6
vpextrq $0, %xmm6, %r10
nop
add $27806, %rbp

// Faulty Load
lea addresses_PSE+0x162c0, %r11
nop
nop
nop
nop
xor %rax, %rax
mov (%r11), %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'51': 33}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
