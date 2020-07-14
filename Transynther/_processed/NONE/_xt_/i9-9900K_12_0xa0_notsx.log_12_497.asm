.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rbx
push %rcx
lea addresses_A_ht+0x66cd, %r15
nop
nop
nop
nop
nop
cmp $59682, %rcx
movb $0x61, (%r15)
nop
nop
sub $35562, %rbx
lea addresses_normal_ht+0xeb69, %r15
nop
nop
sub %r12, %r12
movl $0x61626364, (%r15)
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xf6a9, %r13
nop
xor %r11, %r11
movb $0x61, (%r13)
nop
nop
nop
nop
and $65372, %r13
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x127f7, %rsi
lea addresses_WC+0x13465, %rdi
nop
nop
cmp $17739, %r8
mov $4, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_WT+0xf0e5, %r8
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r8)
sub %r8, %r8

// Load
mov $0x5d99f0000000649, %r14
nop
nop
nop
nop
add %r8, %r8
mov (%r14), %edi
nop
nop
nop
inc %rcx

// Store
mov $0x962, %rsi
add $8053, %r9
movb $0x51, (%rsi)
inc %rax

// Load
lea addresses_RW+0xd069, %rsi
nop
nop
nop
nop
dec %r8
mov (%rsi), %edi
and $5717, %rax

// Faulty Load
lea addresses_normal+0x1af29, %rsi
add $35963, %rdi
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 7}}
{'34': 12}
34 34 34 34 34 34 34 34 34 34 34 34
*/
