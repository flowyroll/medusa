.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1430e, %rbp
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_normal_ht+0x1d60e, %r10
and %rbx, %rbx
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0x1530e, %rsi
lea addresses_WC_ht+0xb05e, %rdi
nop
and %rax, %rax
mov $25, %rcx
rep movsl
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x11b0e, %rdi
inc %rbx
movl $0x61626364, (%rdi)
nop
nop
nop
cmp $56184, %rdi
lea addresses_WT_ht+0x1770e, %rax
nop
nop
nop
nop
nop
and $55278, %r10
movw $0x6162, (%rax)
nop
nop
nop
nop
and $58964, %r10
lea addresses_D_ht+0x6f0e, %rsi
lea addresses_normal_ht+0x1c30e, %rdi
clflush (%rsi)
add %r15, %r15
mov $114, %rcx
rep movsw
sub %rdi, %rdi
lea addresses_WC_ht+0x374e, %rsi
lea addresses_UC_ht+0x19c0e, %rdi
sub $39882, %r15
mov $96, %rcx
rep movsq
nop
nop
nop
inc %rbx
lea addresses_D_ht+0x1ca0e, %rdi
nop
nop
nop
add %rbx, %rbx
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %r10
xor $22086, %r15
lea addresses_WT_ht+0xe7c6, %rsi
lea addresses_normal_ht+0x1cbce, %rdi
nop
nop
nop
nop
nop
sub $63442, %r10
mov $83, %rcx
rep movsw
nop
nop
sub $41727, %r15
lea addresses_WT_ht+0x1730e, %rbp
nop
sub $41482, %rcx
movups (%rbp), %xmm3
vpextrq $0, %xmm3, %rax
nop
nop
xor %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rax

// Faulty Load
lea addresses_US+0x530e, %rax
and %r11, %r11
mov (%rax), %r10w
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'00': 1}
00
*/
