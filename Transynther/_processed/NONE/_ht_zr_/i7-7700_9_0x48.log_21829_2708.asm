.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x5f8, %rsi
lea addresses_D_ht+0x169f8, %rdi
nop
cmp $59616, %r12
mov $3, %rcx
rep movsw
inc %r13
lea addresses_A_ht+0xcb98, %rsi
lea addresses_WT_ht+0x9caa, %rdi
nop
nop
nop
nop
add $43041, %r14
mov $82, %rcx
rep movsl
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x1a170, %r12
xor %r11, %r11
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
xor $11007, %rcx
lea addresses_normal_ht+0xa1bf, %r11
nop
inc %r14
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1278, %r13
nop
nop
nop
sub $35635, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%r13)
xor $37021, %r11
lea addresses_A_ht+0x19af8, %r12
nop
nop
sub $61748, %r14
mov (%r12), %r13d
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x1bdf8, %r13
nop
inc %rsi
mov (%r13), %r14d
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x1da08, %rcx
nop
nop
nop
add %r12, %r12
movb (%rcx), %r13b
nop
nop
nop
nop
nop
add $6332, %r11
lea addresses_normal_ht+0xebf8, %rcx
nop
nop
sub %r14, %r14
mov (%rcx), %rsi
nop
nop
and $6023, %r13
lea addresses_D_ht+0x124e0, %rsi
lea addresses_WC_ht+0x185f8, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $118, %rcx
rep movsb
nop
nop
nop
nop
and %r11, %r11
lea addresses_D_ht+0x9df8, %rsi
lea addresses_normal_ht+0x18b78, %rdi
nop
nop
nop
nop
sub $57989, %r14
mov $94, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rbp
push %rcx
push %rdx
push %rsi

// Load
lea addresses_UC+0x18278, %rcx
nop
nop
nop
nop
nop
add %rbp, %rbp
mov (%rcx), %esi
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_A+0xa878, %rsi
and %rbp, %rbp
movw $0x5152, (%rsi)
nop
nop
cmp %r10, %r10

// Store
lea addresses_WT+0x15df8, %rcx
clflush (%rcx)
nop
xor %rdx, %rdx
movl $0x51525354, (%rcx)
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WT+0x14a9, %rcx
nop
nop
nop
nop
sub $27652, %r9
movw $0x5152, (%rcx)
nop
nop
nop
nop
cmp $59416, %rbp

// Load
mov $0x738, %r9
xor %rsi, %rsi
vmovups (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
nop
xor $27390, %rbp

// Store
lea addresses_D+0xcdf8, %r10
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movups %xmm4, (%r10)
nop
dec %rsi

// Faulty Load
lea addresses_WC+0x35f8, %r10
nop
nop
nop
nop
nop
xor $27524, %rcx
movups (%r10), %xmm7
vpextrq $1, %xmm7, %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'45': 15708, '46': 5720, '00': 401}
45 45 45 45 46 46 46 45 45 45 46 46 45 45 46 45 45 46 46 46 46 45 46 45 46 46 45 46 46 45 45 46 45 45 45 45 46 45 45 45 46 00 46 45 45 46 45 45 45 45 46 45 46 46 45 45 46 45 46 45 45 45 45 45 46 45 45 45 46 45 45 45 46 46 45 45 45 45 45 46 46 45 45 45 46 45 45 45 46 45 45 46 45 00 45 45 45 00 45 45 46 00 45 45 46 46 46 46 45 45 45 45 45 46 45 45 46 46 45 45 46 46 46 45 45 00 45 45 45 45 45 46 45 45 46 46 45 45 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 46 46 46 45 46 46 46 00 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 46 46 45 46 45 45 45 46 46 45 45 45 45 45 45 46 45 45 45 45 46 46 45 45 45 45 46 45 46 46 46 45 45 46 45 45 45 46 46 45 45 45 45 45 46 46 45 45 45 46 00 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 46 46 46 45 45 45 46 45 45 45 46 45 45 45 46 45 46 45 45 46 46 46 45 00 45 45 45 46 45 45 45 45 46 45 45 45 46 45 45 45 45 45 45 45 45 45 45 46 46 46 45 45 45 46 46 46 46 46 45 45 45 45 46 46 45 45 45 45 45 45 45 45 45 46 45 46 45 46 45 45 45 46 45 45 45 45 45 45 45 45 46 46 46 45 46 45 45 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 46 45 45 45 46 46 45 45 45 46 46 45 45 45 45 45 45 46 45 45 46 45 45 46 45 45 46 45 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 00 45 45 46 45 45 45 45 45 45 45 45 46 45 45 45 46 45 45 46 45 45 45 00 46 45 46 45 45 45 45 46 45 45 45 45 45 45 00 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 46 46 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 46 45 45 45 45 46 45 46 45 45 45 45 45 46 46 45 46 45 45 45 46 46 45 46 46 46 45 46 45 46 46 45 45 45 45 45 46 45 46 45 45 45 45 46 45 45 45 45 45 45 46 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 46 46 46 45 45 45 46 45 45 46 45 46 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 46 45 45 46 46 46 45 45 45 46 46 45 45 46 46 45 45 45 45 46 46 45 46 45 45 45 46 45 45 45 45 45 46 46 46 46 45 45 00 45 46 45 45 46 46 45 46 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 46 46 46 45 46 46 46 45 45 45 45 45 46 45 45 45 46 46 46 45 45 45 45 46 46 46 45 45 45 46 45 45 46 45 45 45 45 46 45 45 46 46 46 46 45 45 45 45 45 45 45 46 45 45 45 46 46 45 46 45 45 45 45 45 46 46 45 45 45 45 45 46 45 45 45 45 46 45 45 45 46 45 45 46 00 45 45 45 46 45 45 46 45 45 45 46 45 45 45 46 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 46 46 45 45 45 46 46 45 46 45 45 46 45 45 46 45 00 45 46 45 46 45 46 46 45 45 45 46 45 45 45 46 46 46 45 45 45 45 46 45 45 45 45 45 45 45 46 46 46 45 45 45 45 45 46 45 45 45 46 45 45 45 46 46 45 45 46 45 45 45 45 46 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 46 45 45 45 46 46 45 45 45 45 46 46 46 45 45 45 45 45 45 46 45 46 46 45 45 45 46 46 45 45 45 46 45 45 45 45 45 45 45 45 46 46 45 45 46 46 45 45 45 45 45 45 45 45 45 46 45 46 45 45 46 46 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 46 46 45 45 46 45 46 45 45 45 45 46 46 45 45 45 45 45 46 46 45 45 45 45 45 45 45 46 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 46 45 45 45 46 46 45 45 00 45 45
*/
