.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1ecfd, %rsi
lea addresses_WT_ht+0x4c2d, %rdi
clflush (%rdi)
nop
nop
sub $29202, %r11
mov $69, %rcx
rep movsq
nop
nop
inc %rax
lea addresses_WC_ht+0x118fd, %r9
nop
nop
inc %rdx
mov (%r9), %r11w
and %r9, %r9
lea addresses_A_ht+0x1c4fd, %rsi
lea addresses_WT_ht+0x74fd, %rdi
nop
nop
nop
nop
sub $11152, %r10
mov $14, %rcx
rep movsq
nop
nop
nop
nop
add $63572, %r9
lea addresses_WC_ht+0x1b87d, %rsi
lea addresses_normal_ht+0x105bd, %rdi
nop
nop
nop
sub $29189, %rdx
mov $10, %rcx
rep movsw
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x16cbd, %rsi
lea addresses_WT_ht+0x15efd, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $22, %rcx
rep movsl
nop
nop
and %r9, %r9
lea addresses_D_ht+0xb4d5, %r10
dec %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r10)
nop
add %rsi, %rsi
lea addresses_D_ht+0x14efd, %rsi
lea addresses_D_ht+0x110fd, %rdi
nop
nop
nop
nop
inc %r10
mov $6, %rcx
rep movsq
nop
nop
sub $29889, %rax
lea addresses_A_ht+0x467d, %rdi
nop
nop
nop
and $48537, %r11
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x1cafd, %rdx
nop
dec %rsi
mov (%rdx), %rdi
nop
xor $56471, %r11
lea addresses_D_ht+0x8f9d, %rcx
nop
nop
sub $61144, %rax
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
xor $13133, %r11
lea addresses_WT_ht+0x67fd, %r11
nop
cmp %r9, %r9
movl $0x61626364, (%r11)
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x13c7d, %rsi
lea addresses_UC_ht+0x118fd, %rdi
nop
sub $59874, %rdx
mov $101, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_normal_ht+0xf093, %r11
nop
add $31864, %rdi
movw $0x6162, (%r11)
and $45734, %rcx
lea addresses_WC_ht+0x1acfd, %rsi
lea addresses_WC_ht+0x130fd, %rdi
nop
nop
nop
nop
sub $13115, %r11
mov $76, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x9b7d, %rsi
lea addresses_UC_ht+0x94fd, %rdi
nop
nop
nop
xor %r10, %r10
mov $15, %rcx
rep movsq
nop
nop
nop
nop
cmp %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x170fd, %r13
nop
nop
add $20784, %r11
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
dec %rax

// Store
lea addresses_UC+0x2cd7, %rax
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rax)
nop
nop
add %r13, %r13

// Load
lea addresses_normal+0xc447, %rdx
clflush (%rdx)
nop
nop
sub %rcx, %rcx
mov (%rdx), %ax
nop
nop
xor %r13, %r13

// Store
lea addresses_D+0x1c4fd, %rax
dec %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rax)
sub $13292, %rcx

// Faulty Load
lea addresses_D+0x1c4fd, %rsi
nop
cmp $12221, %r13
movb (%rsi), %r11b
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'58': 507}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
