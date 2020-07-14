.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rbx
push %rdi
push %rsi
lea addresses_WT_ht+0x19f14, %rbx
dec %rdi
movw $0x6162, (%rbx)
nop
nop
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x32f4, %r13
xor %rax, %rax
mov (%r13), %rsi
nop
nop
nop
sub $12853, %rax
lea addresses_D_ht+0x1e614, %rdi
add %r10, %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rdi)
nop
dec %rdi
lea addresses_UC_ht+0xd54, %r11
nop
and %r10, %r10
movw $0x6162, (%r11)
nop
nop
nop
nop
nop
mfence
lea addresses_A_ht+0x1b234, %rsi
nop
nop
nop
nop
nop
cmp $29251, %rdi
mov (%rsi), %r13w
nop
nop
nop
nop
sub $3221, %rbx
lea addresses_WT_ht+0x7754, %r10
nop
nop
nop
nop
add %rax, %rax
mov (%r10), %bx
nop
nop
nop
xor $20255, %rbx
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rbx

// Store
lea addresses_RW+0x19814, %rbx
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r9
movq %r9, (%rbx)
nop
nop
sub $11460, %r11

// Store
lea addresses_WC+0xa214, %rbp
add $11669, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movntdq %xmm3, (%rbp)
nop
nop
nop
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_PSE+0x1ee14, %r10
nop
nop
nop
nop
nop
dec %r9
vmovntdqa (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'08': 3, '2e': 1, '6e': 3, 'bc': 1, '14': 1, '00': 1}
08 14 bc 08 08 6e 6e 6e 2e 00
*/
