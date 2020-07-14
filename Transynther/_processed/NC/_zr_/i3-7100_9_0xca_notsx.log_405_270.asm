.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rbp
lea addresses_WC_ht+0x4bfc, %r13
clflush (%r13)
nop
nop
cmp $62609, %rbp
movb $0x61, (%r13)
nop
nop
nop
nop
add %rax, %rax
pop %rbp
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rbx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0xb904, %rbx
nop
nop
add $2659, %r15
mov (%rbx), %di
nop
nop
nop
nop
nop
and %rdi, %rdi

// Store
mov $0x22afc600000002b4, %r14
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r14)
nop
add $58829, %rsi

// Store
lea addresses_US+0x1b144, %r15
nop
nop
nop
nop
nop
sub %r14, %r14
movw $0x5152, (%r15)
nop
nop
sub %r14, %r14

// Store
lea addresses_WT+0x12bb4, %rsi
nop
and %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovntdq %ymm4, (%rsi)
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_WT+0x7164, %rdi
nop
nop
nop
nop
inc %r15
movl $0x51525354, (%rdi)
nop
nop
sub $21882, %rsi

// Faulty Load
mov $0x3c05200000000944, %rdx
nop
and %rsi, %rsi
mov (%rdx), %r14w
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'00': 405}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
