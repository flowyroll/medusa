.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x17171, %rsi
lea addresses_WC_ht+0xf73d, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $63982, %r9
mov $112, %rcx
rep movsl
nop
cmp $46327, %rbx
lea addresses_A_ht+0x5f71, %r15
nop
nop
nop
nop
nop
cmp %rbx, %rbx
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0xc971, %rbx
inc %rcx
movw $0x6162, (%rbx)
nop
add $18110, %r15
lea addresses_UC_ht+0x1eb91, %rbx
nop
nop
nop
cmp %r11, %r11
mov (%rbx), %ecx
nop
nop
nop
add $10336, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x7171, %rdx
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovntdq %ymm4, (%rdx)
nop
add $49085, %rdx

// Load
lea addresses_WT+0x13fa9, %rbx
cmp %r11, %r11
movb (%rbx), %r13b
nop
nop
nop
cmp $35184, %rdx

// Store
lea addresses_RW+0x155f1, %rdi
nop
sub %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rdi)

// Exception!!!
nop
nop
nop
mov (0), %r11
nop
nop
nop
nop
nop
xor $13594, %rsi

// Store
lea addresses_WT+0x1fd71, %rsi
nop
sub $57169, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
nop
xor $59806, %rcx

// Load
lea addresses_WT+0x149e5, %rsi
nop
nop
add $29198, %r11
movb (%rsi), %bl
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_WC+0x1a7d1, %rcx
nop
nop
xor $47712, %rsi
movw $0x5152, (%rcx)
nop
nop
add $6985, %rcx

// Faulty Load
lea addresses_D+0x4d71, %rdx
nop
add %r13, %r13
movb (%rdx), %bl
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'36': 3}
36 36 36
*/
