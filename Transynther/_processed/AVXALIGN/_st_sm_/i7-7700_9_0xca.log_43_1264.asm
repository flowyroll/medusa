.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x6967, %rsi
lea addresses_WT_ht+0xcfe7, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
mov $81, %rcx
rep movsb
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x4207, %r10
inc %rdx
movb (%r10), %r12b
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0xaf67, %r10
nop
add $13466, %rbx
mov (%r10), %dx
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rdi
push %rsi

// Store
lea addresses_normal+0x1ef67, %rdi
nop
nop
nop
sub $37710, %r14
mov $0x5152535455565758, %r11
movq %r11, (%rdi)
cmp %r8, %r8

// Store
lea addresses_WT+0x19f67, %rsi
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_D+0xb95f, %r8
nop
nop
nop
inc %r14
mov $0x5152535455565758, %r11
movq %r11, (%r8)
nop
dec %r14

// Load
lea addresses_A+0x192e8, %r14
nop
nop
nop
nop
sub %r8, %r8
mov (%r14), %rax
nop
nop
add %r11, %r11

// Faulty Load
lea addresses_WT+0x19f67, %r11
nop
nop
nop
nop
nop
and %rax, %rax
mov (%r11), %r14w
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_D'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'58': 43}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
