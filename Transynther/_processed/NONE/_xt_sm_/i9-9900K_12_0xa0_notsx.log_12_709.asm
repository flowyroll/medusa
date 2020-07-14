.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xabc3, %rsi
lea addresses_WT_ht+0x15da1, %rdi
nop
nop
nop
nop
nop
add $25845, %r12
mov $22, %rcx
rep movsw
nop
nop
nop
nop
xor $18556, %r8
lea addresses_D_ht+0x7fe1, %rsi
lea addresses_WT_ht+0x10e51, %rdi
cmp $2366, %r11
mov $107, %rcx
rep movsq
and $21097, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_PSE+0x139a1, %r9
nop
nop
nop
add $44308, %r14
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
nop
nop
nop
add $10815, %r9

// Store
lea addresses_WT+0x12fa1, %r14
nop
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x5152, (%r14)
nop
nop
xor %r14, %r14

// Store
lea addresses_normal+0x101b9, %r15
nop
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movntdq %xmm5, (%r15)
nop
nop
nop
nop
add $39641, %r14

// Store
lea addresses_WT+0x24a1, %r9
nop
xor $15846, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
add $44821, %r11

// Store
lea addresses_D+0x148a1, %rsi
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rsi)
nop
inc %r11

// Store
lea addresses_US+0x19549, %r9
nop
nop
xor %rcx, %rcx
movw $0x5152, (%r9)
nop
nop
nop
nop
inc %rbx

// Faulty Load
lea addresses_PSE+0x139a1, %rsi
nop
nop
nop
nop
sub $21527, %r15
mov (%rsi), %ecx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'58': 12}
58 58 58 58 58 58 58 58 58 58 58 58
*/
