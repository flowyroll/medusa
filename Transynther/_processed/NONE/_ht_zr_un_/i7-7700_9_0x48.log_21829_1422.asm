.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x717a, %r9
nop
nop
xor $46121, %r13
mov (%r9), %r10d
nop
nop
cmp $58408, %rax
lea addresses_WC_ht+0x164c8, %r15
add $17165, %rdx
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
nop
nop
nop
dec %r15
lea addresses_normal_ht+0x5508, %rbx
add $62119, %rax
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm0
vpextrq $0, %xmm0, %r10
sub %r10, %r10
lea addresses_WT_ht+0x10f08, %rsi
lea addresses_normal_ht+0x8708, %rdi
nop
sub $6040, %r13
mov $5, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x1d4ea, %rdi
sub $30609, %r13
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm1
vpextrq $0, %xmm1, %r10
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x1d108, %r15
nop
nop
nop
nop
nop
inc %rcx
movl $0x61626364, (%r15)
nop
nop
nop
nop
sub $41397, %r10
lea addresses_WT_ht+0xf508, %rsi
lea addresses_A_ht+0x1e916, %rdi
nop
nop
inc %r9
mov $53, %rcx
rep movsw
nop
nop
nop
nop
add $64981, %r13
lea addresses_WT_ht+0x3108, %r15
nop
nop
nop
cmp $22585, %rdx
movb $0x61, (%r15)
inc %rdi
lea addresses_A_ht+0xc5c8, %rsi
lea addresses_WT_ht+0x7848, %rdi
nop
cmp %rdx, %rdx
mov $112, %rcx
rep movsb
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbx
push %rdi
push %rdx

// Store
lea addresses_UC+0xaf08, %r14
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_UC+0xaf08, %rdi
nop
nop
nop
nop
sub $40343, %rbx
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %r14
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'49': 451, '6c': 16, '45': 1492, 'ff': 80, '00': 19790}
00 00 6c 6c 6c 00 00 45 6c 00 6c 6c 6c 6c 00 6c 00 00 6c 00 6c 6c 6c 6c 00 00 00 00 00 6c 6c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 49 00 00 49 49 49 49 00 00 00 49 49 00 49 49 49 00 49 00 00 49 00 49 49 00 45 00 49 00 00 00 00 49 00 49 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 49 49 00 00 00 49 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 49 49 00 49 00 49 49 00 49 49 49 49 00 49 00 00 00 00 49 00 49 00 49 45 45 49 00 00 49 49 49 00 00 49 49 49 49 00 49 00 49 45 00 49 00 49 00 00 49 49 00 49 00 00 00 00 49 00 49 49 00 00 00 00 00 00 00 49 00 49 00 49 49 00 00 49 00 49 00 49 00 00 45 00 00 00 00 00 00 00 49 00 00 00 49 00 49 49 00 00 00 00 49 49 00 00 00 49 49 00 45 00 00 00 00 49 49 45 45 00 49 45 45 00 00 00 45 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00
*/
