.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x3e75, %r9
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
lfence
lea addresses_UC_ht+0x2c95, %rdi
and $20257, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
nop
add $16610, %rdx
lea addresses_WT_ht+0x1e65f, %rsi
lea addresses_D_ht+0xa105, %rdi
cmp %r14, %r14
mov $17, %rcx
rep movsb
and %rdi, %rdi
lea addresses_D_ht+0x1bd05, %rsi
lea addresses_normal_ht+0x13705, %rdi
nop
nop
nop
nop
sub $5130, %r15
mov $39, %rcx
rep movsw
nop
nop
nop
add $19321, %r11
lea addresses_normal_ht+0x1ce8d, %r14
nop
xor %rsi, %rsi
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
sub $6583, %rcx
lea addresses_WC_ht+0x3105, %r11
nop
nop
and %rcx, %rcx
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x15105, %rdi
nop
xor $49251, %rcx
mov (%rdi), %r15d
nop
nop
nop
nop
nop
sub %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x9105, %rax
and $10566, %r13
movl $0x51525354, (%rax)
dec %rbx

// REPMOV
mov $0x613e4e0000000105, %rsi
lea addresses_normal+0x1da6f, %rdi
add $60822, %r13
mov $92, %rcx
rep movsb
inc %r13

// Faulty Load
mov $0x613e4e0000000105, %rdi
nop
nop
nop
nop
nop
add $62250, %rbx
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_NC', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': True, 'congruent': 4}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'00': 1}
00
*/
