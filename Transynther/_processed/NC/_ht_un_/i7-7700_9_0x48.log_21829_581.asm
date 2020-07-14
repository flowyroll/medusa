.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18260, %rcx
nop
and $2447, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x6900, %r8
nop
nop
xor $8556, %r13
mov $0x6162636465666768, %rbp
movq %rbp, (%r8)
xor $8760, %r8
lea addresses_UC_ht+0x117c0, %r10
nop
nop
nop
nop
nop
xor $60369, %rcx
mov $0x6162636465666768, %r8
movq %r8, (%r10)
nop
xor %rcx, %rcx
lea addresses_D_ht+0x123c0, %rsi
nop
nop
nop
nop
nop
add $59752, %r10
movw $0x6162, (%rsi)
cmp $20650, %r10
lea addresses_WT_ht+0x1c740, %rsi
nop
nop
nop
nop
nop
sub %rax, %rax
movl $0x61626364, (%rsi)
and %r10, %r10
lea addresses_UC_ht+0x184c0, %rcx
inc %rsi
mov (%rcx), %r13d
nop
nop
nop
nop
nop
xor $11579, %rcx
lea addresses_D_ht+0x2050, %r8
cmp $22687, %rbp
movb (%r8), %r10b
add %r10, %r10
lea addresses_WT_ht+0x15a00, %rcx
nop
nop
nop
nop
nop
xor %r13, %r13
mov (%rcx), %r10w
nop
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0x9240, %rax
nop
xor %rcx, %rcx
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm1
vpextrq $0, %xmm1, %r13
nop
add $31203, %rsi
lea addresses_UC_ht+0x4bc0, %rbp
cmp $60835, %r8
mov $0x6162636465666768, %r10
movq %r10, (%rbp)
nop
sub %r10, %r10
lea addresses_D_ht+0x89c0, %r13
nop
nop
nop
sub $4911, %r8
mov (%r13), %si
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0xe3c0, %r10
nop
nop
nop
xor %rcx, %rcx
movl $0x61626364, (%r10)
nop
inc %rcx
lea addresses_WC_ht+0x40, %rsi
nop
nop
nop
nop
nop
sub %r8, %r8
movw $0x6162, (%rsi)
cmp %r8, %r8
lea addresses_A_ht+0x1418, %r13
nop
nop
sub $3333, %r10
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
cmp $52604, %rcx
lea addresses_D_ht+0xab40, %rsi
lea addresses_A_ht+0x191c0, %rdi
nop
nop
nop
nop
xor $61504, %r10
mov $91, %rcx
rep movsq
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rax
push %rbx
push %rdx

// Faulty Load
mov $0x74062d00000001c0, %rdx
add $18802, %rax
movups (%rdx), %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'17': 1, 'ff': 2, '45': 8518, '46': 13308}
46 45 46 46 46 46 46 46 46 45 46 46 45 45 46 46 46 46 46 45 45 46 46 46 45 46 45 45 45 46 45 46 46 46 46 46 46 45 45 46 45 45 45 46 45 45 46 46 46 46 46 45 46 45 45 46 46 46 45 46 45 45 46 46 46 45 46 46 46 45 45 46 46 46 45 45 46 46 46 45 45 46 45 46 46 46 45 46 46 46 46 46 45 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 45 46 46 45 45 46 45 46 46 45 45 45 45 46 46 45 46 46 45 46 46 46 46 45 45 45 45 46 46 46 45 46 45 46 46 45 45 46 46 45 45 45 46 46 45 45 46 46 46 46 45 46 46 45 46 46 46 45 45 46 45 46 46 45 46 45 45 46 45 45 45 46 46 46 45 46 45 46 46 46 45 46 45 46 46 45 45 46 46 46 46 46 46 46 45 46 46 46 45 45 45 45 46 46 45 46 46 46 46 45 45 46 46 45 46 46 45 46 46 46 46 45 46 45 45 45 46 45 46 45 46 46 45 45 45 46 45 46 45 46 45 46 46 46 45 46 46 46 46 46 46 45 46 45 46 45 46 45 46 45 45 45 46 45 46 46 46 46 45 46 45 45 46 46 45 46 45 46 45 46 46 45 46 46 46 45 45 45 46 46 46 46 46 46 46 45 45 46 45 46 46 45 46 45 46 45 46 46 46 46 46 46 45 45 45 46 46 45 46 45 45 46 45 45 46 46 46 46 46 46 45 46 45 45 46 46 46 46 45 46 46 46 46 46 46 46 45 45 46 46 46 45 46 45 46 45 45 45 46 46 46 46 46 45 46 46 46 46 46 45 46 46 46 46 46 45 46 46 46 46 45 45 46 45 46 46 46 46 46 46 45 45 46 46 45 46 45 46 46 45 45 45 45 46 45 45 46 45 46 45 45 46 45 45 46 46 46 46 46 45 45 46 45 45 46 46 46 45 45 46 46 45 46 46 46 46 45 46 45 45 46 45 45 45 46 46 45 45 46 46 46 46 46 46 46 45 46 46 45 45 45 46 46 46 46 46 46 46 45 45 45 46 45 46 45 46 46 45 46 46 45 45 46 46 45 45 46 46 45 45 46 46 45 46 45 45 46 46 45 46 46 45 46 45 46 46 45 46 45 46 46 45 46 46 46 45 45 46 46 45 45 46 45 45 45 46 46 46 45 45 46 46 46 45 46 46 45 46 46 45 46 45 46 45 46 45 46 45 46 46 45 46 46 46 46 46 46 46 46 46 46 46 45 46 45 46 45 46 46 46 46 46 45 46 46 46 46 46 46 45 45 46 46 46 45 46 46 46 45 46 45 46 46 45 46 46 46 46 46 46 46 46 45 46 45 46 46 46 45 46 46 46 45 45 46 45 45 46 46 45 46 46 45 46 46 46 46 45 46 46 46 45 46 46 45 46 46 46 46 46 45 46 45 45 46 46 45 45 45 46 46 46 45 45 46 46 45 46 45 45 46 46 46 46 46 45 45 46 46 46 45 45 46 46 45 45 45 46 46 45 45 45 46 46 45 45 45 46 46 46 46 46 45 45 45 46 45 46 46 45 46 46 45 46 45 46 46 46 45 45 46 46 46 46 45 46 45 45 46 46 45 46 46 46 46 46 45 45 46 46 45 46 46 45 45 46 45 45 45 46 45 46 46 46 46 46 46 45 45 46 46 45 45 45 45 46 45 45 46 45 46 45 46 46 45 45 46 45 45 46 46 45 46 45 46 45 45 45 46 46 46 45 46 46 45 45 46 46 46 46 45 45 46 45 45 45 46 46 46 46 45 45 46 46 46 45 45 45 45 46 45 45 46 45 46 45 45 45 46 46 46 45 46 45 45 45 46 46 46 45 45 46 45 45 46 46 45 46 46 46 45 45 46 46 46 45 46 46 45 46 46 45 46 46 46 46 45 46 46 46 45 46 46 46 45 46 46 46 45 45 46 45 45 46 46 45 46 46 46 45 46 46 45 45 46 45 46 46 45 45 46 45 45 46 45 46 45 46 46 46 46 45 45 46 45 45 46 45 46 46 46 46 45 46 46 46 46 45 45 45 46 46 46 46 46 45 46 45 46 46 46 46 46 45 46 46 45 45 45 45 45 46 45 46 45 46 46 45 45 46 46 46 46 45 46 46 46 46 46 45 46 46 45 46 45 45 46 46 46 46 45 45 46 45 45 46 45 46 46 45 46 45 45 46 46 46 45 46 46 45 46
*/
