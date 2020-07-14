.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x9a1d, %rsi
nop
nop
nop
add $5960, %r15
movb (%rsi), %bl
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x98dd, %r11
nop
xor $20551, %rdi
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x1d19d, %rdi
nop
nop
and $47679, %r15
movw $0x6162, (%rdi)
nop
nop
dec %rsi
lea addresses_A_ht+0x132ed, %rsi
lea addresses_WC_ht+0xdb5, %rdi
nop
nop
nop
nop
nop
add $24906, %r9
mov $49, %rcx
rep movsb
nop
and %rdi, %rdi
lea addresses_WT_ht+0x3557, %r15
nop
nop
nop
nop
nop
sub $62737, %rbx
mov (%r15), %di
nop
nop
cmp $24656, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %r9
push %rbp

// Store
mov $0x13550900000007bd, %r8
and $10928, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)
nop
nop
nop
nop
cmp %r14, %r14

// Load
mov $0x934, %r12
nop
nop
nop
nop
xor $16302, %r9
movb (%r12), %r8b
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_WT+0x5fbd, %r13
nop
nop
nop
nop
nop
xor $20469, %r15
movl $0x51525354, (%r13)
nop
nop
nop
nop
dec %r15

// Faulty Load
lea addresses_A+0x1849d, %r9
clflush (%r9)
nop
nop
nop
xor $24217, %r8
movups (%r9), %xmm7
vpextrq $1, %xmm7, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'46': 1, '45': 2}
46 45 45
*/
