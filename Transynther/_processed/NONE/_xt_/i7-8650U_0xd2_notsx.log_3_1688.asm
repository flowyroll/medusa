.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1af3c, %rbx
dec %r10
mov (%rbx), %dx
nop
xor %rax, %rax
lea addresses_D_ht+0x9e0b, %rsi
lea addresses_WT_ht+0x17fbb, %rdi
nop
nop
nop
nop
nop
cmp $27847, %r8
mov $91, %rcx
rep movsw
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x11e3b, %rdx
nop
nop
nop
and $34793, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
nop
nop
and $46788, %rbx
lea addresses_WC_ht+0x121bb, %r10
nop
nop
nop
nop
and %rdi, %rdi
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
add %r10, %r10
lea addresses_D_ht+0x3fdb, %rsi
lea addresses_WT_ht+0x653b, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %rax, %rax
mov $26, %rcx
rep movsq
sub %rdi, %rdi
lea addresses_D_ht+0x16c3b, %rbx
nop
xor $33792, %r10
movb (%rbx), %dl
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x5d3b, %rbx
nop
nop
add $30611, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%rbx)
nop
nop
nop
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x115bb, %r11
xor %rsi, %rsi
movl $0x51525354, (%r11)
nop
nop
and $31382, %r10

// Store
lea addresses_WC+0x23bb, %r14
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, (%r14)
nop
nop
nop
sub $40065, %r11

// REPMOV
lea addresses_UC+0x2a28, %rsi
lea addresses_D+0x537b, %rdi
nop
cmp $487, %rdx
mov $118, %rcx
rep movsw
nop
cmp %r9, %r9

// Store
mov $0xd23, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movntdq %xmm7, (%rcx)
nop
nop
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_RW+0x13d3b, %r11
nop
nop
cmp $37897, %rdi
vmovups (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'32': 3}
32 32 32
*/
