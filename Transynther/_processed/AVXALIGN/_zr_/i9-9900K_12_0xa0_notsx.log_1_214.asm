.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rax
lea addresses_D_ht+0x15c, %rax
nop
nop
cmp $32021, %r9
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0xc8a8, %r9
nop
nop
add $9445, %rax
mov (%r9), %r13
sub $52876, %r8
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x22a8, %r11
and %rdi, %rdi
movl $0x51525354, (%r11)
nop
nop
nop
nop
and $16310, %r13

// REPMOV
lea addresses_PSE+0x4f28, %rsi
lea addresses_WT+0xe2a8, %rdi
clflush (%rdi)
nop
nop
add $17099, %r15
mov $106, %rcx
rep movsw
nop
nop
nop
nop
xor $61849, %rsi

// Faulty Load
lea addresses_US+0x64a8, %rbp
nop
nop
sub $13790, %r9
mov (%rbp), %ecx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_PSE', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 9, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'00': 1}
00
*/
