.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1e915, %rsi
lea addresses_WC_ht+0xcd85, %rdi
add %rdx, %rdx
mov $46, %rcx
rep movsw
nop
nop
nop
nop
and $53195, %rdi
lea addresses_A_ht+0xa045, %rcx
nop
nop
nop
nop
nop
add %r13, %r13
mov (%rcx), %r8w
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x8d85, %rsi
lea addresses_A_ht+0x7395, %rdi
nop
nop
sub %r13, %r13
mov $14, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x16e85, %r8
nop
nop
nop
add %r12, %r12
movups (%r8), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
and $34111, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rdi
push %rsi

// Store
mov $0x52fa010000000d85, %rsi
nop
inc %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
sub %r11, %r11

// Store
lea addresses_A+0x1025, %rdi
nop
nop
sub $8101, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_PSE+0xb385, %rax
cmp $34717, %r12
movl $0x51525354, (%rax)
nop
nop
sub $29455, %r12

// Load
lea addresses_UC+0xad65, %rax
nop
and %rsi, %rsi
movb (%rax), %r12b
add $59860, %rdi

// Faulty Load
mov $0x52fa010000000d85, %r10
clflush (%r10)
nop
nop
nop
xor $12864, %rsi
mov (%r10), %r11
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'58': 8}
58 58 58 58 58 58 58 58
*/
