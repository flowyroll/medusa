.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xa43c, %rsi
nop
sub $1819, %r9
mov (%rsi), %edi
nop
nop
sub $16471, %r12
lea addresses_WC_ht+0x93ae, %rdx
nop
nop
nop
nop
cmp $33680, %r11
and $0xffffffffffffffc0, %rdx
movntdqa (%rdx), %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x114fc, %rdx
and $59075, %r9
movw $0x6162, (%rdx)
nop
nop
nop
and $35555, %r11
lea addresses_UC_ht+0x159bc, %rsi
nop
nop
nop
nop
nop
and %rdx, %rdx
movb $0x61, (%rsi)
nop
nop
cmp $63455, %rsi
lea addresses_WC_ht+0x57bc, %rsi
lea addresses_A_ht+0x1959c, %rdi
sub $28173, %r12
mov $8, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $40626, %r12
lea addresses_WC_ht+0xb8bc, %rdi
nop
nop
nop
nop
nop
dec %rdx
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
xor $17940, %r11
lea addresses_normal_ht+0x1758a, %r9
nop
xor %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r9)
nop
dec %r9
lea addresses_normal_ht+0x197ac, %r9
nop
cmp $11264, %rcx
mov (%r9), %esi
nop
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rdi

// Store
mov $0x2c286e0000000d5c, %r13
inc %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r13)
nop
nop
and %r11, %r11

// Store
lea addresses_WT+0x99bc, %r12
nop
add %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%r12)
sub %r11, %r11

// Store
mov $0x4d45f50000000876, %r12
nop
nop
cmp $4631, %rbx
mov $0x5152535455565758, %r15
movq %r15, (%r12)
xor $19959, %r14

// Store
lea addresses_WC+0x40b4, %r11
nop
xor %r15, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r11)
nop
nop
inc %rdi

// Faulty Load
lea addresses_WT+0x55bc, %r14
nop
nop
nop
add $42198, %r11
mov (%r14), %r12
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'39': 96}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
