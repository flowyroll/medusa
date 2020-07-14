.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1ce55, %rdx
clflush (%rdx)
nop
add %r12, %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0xaa9e, %rsi
lea addresses_WC_ht+0x1337, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r14
mov $120, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0x11477, %rdx
nop
nop
cmp $10866, %r12
movb (%rdx), %cl
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x8e77, %r8
nop
nop
nop
xor $7940, %rsi
movw $0x5152, (%r8)
nop
nop
nop
cmp %rsi, %rsi

// REPMOV
lea addresses_WC+0x4e07, %rsi
lea addresses_A+0x72b7, %rdi
nop
nop
nop
nop
nop
sub $15675, %r11
mov $94, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $16298, %r8

// Store
mov $0x32e2bd0000000677, %rdi
nop
nop
nop
sub $5422, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rdi)
nop
nop
inc %r12

// Faulty Load
mov $0x32e2bd0000000677, %r12
nop
nop
nop
xor %rax, %rax
mov (%r12), %si
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WC', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'58': 10878, '00': 10951}
00 00 00 58 58 58 00 00 00 58 00 58 00 00 00 58 00 00 00 58 58 00 00 58 58 00 00 00 58 58 58 00 58 58 00 00 58 00 58 00 58 00 58 58 58 58 58 00 00 58 00 00 00 00 58 58 00 58 00 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 00 58 00 00 58 58 00 58 58 00 58 00 00 00 00 00 58 00 00 00 58 00 00 58 00 58 58 00 58 58 00 00 00 58 00 00 58 58 00 00 00 00 00 58 58 00 00 58 00 00 00 00 58 58 58 00 00 58 58 58 00 00 00 00 58 58 58 00 00 00 58 00 58 00 58 58 00 58 00 58 00 58 58 58 58 00 58 58 00 00 58 00 00 58 58 00 00 58 58 00 00 00 00 58 58 00 58 58 00 00 58 00 00 00 00 58 58 00 00 58 58 58 58 00 00 58 00 58 00 58 00 00 58 00 58 58 58 00 00 00 00 00 00 58 58 58 58 58 58 58 58 00 00 00 00 58 58 00 00 00 58 58 00 58 00 00 58 00 58 58 58 58 58 58 58 00 58 00 58 58 00 58 00 58 58 00 00 58 58 58 00 00 00 58 58 00 00 58 00 00 00 00 58 58 58 00 00 58 58 58 58 58 58 00 58 00 58 58 00 00 58 58 58 00 00 58 58 00 00 00 58 58 00 00 00 00 58 00 00 00 00 00 58 00 00 58 58 58 58 00 00 58 00 00 00 58 58 58 58 00 00 58 58 58 00 00 00 00 58 58 00 58 00 00 00 00 58 00 58 58 00 00 00 00 58 58 00 58 58 00 58 58 00 58 58 00 58 58 00 58 00 00 00 58 00 00 58 00 58 00 00 58 58 00 00 00 00 58 58 00 00 00 00 00 00 58 00 00 00 58 58 00 58 58 00 58 00 00 00 58 00 00 58 00 58 00 58 00 00 58 00 00 58 58 00 58 00 58 00 58 00 00 58 58 00 58 58 58 00 00 58 58 00 00 00 00 00 58 58 58 58 58 00 00 58 00 58 00 58 58 58 58 00 00 00 00 58 00 58 58 00 00 00 58 58 58 58 00 58 00 58 00 00 58 58 00 58 58 00 00 58 00 00 00 58 58 00 00 58 58 58 58 00 00 00 00 00 58 58 00 58 00 58 58 58 58 00 00 58 58 58 58 00 00 00 58 00 58 00 00 58 58 00 58 00 58 00 00 58 00 58 00 00 58 00 58 00 58 58 00 58 00 00 00 00 00 00 00 00 58 58 58 00 00 58 00 58 58 00 58 00 00 58 58 58 00 00 00 58 58 58 58 00 00 58 00 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 00 58 58 00 00 00 00 58 00 00 58 58 58 00 00 58 00 58 58 58 58 58 00 00 00 00 58 00 58 58 00 00 00 58 58 00 58 58 58 58 00 00 58 58 58 00 00 58 58 00 00 58 58 00 58 58 00 00 00 58 58 00 00 58 00 00 58 58 58 00 58 00 00 00 58 00 58 00 58 58 58 58 00 00 58 58 00 58 58 58 58 58 00 00 00 58 00 00 58 58 58 58 00 58 58 58 58 00 58 58 00 58 00 58 58 00 58 58 00 00 58 58 00 00 00 58 58 58 00 00 00 00 00 00 00 00 00 58 58 00 00 00 58 58 58 00 58 00 58 58 00 58 00 00 58 58 00 58 00 00 58 00 00 58 58 00 00 00 00 00 58 58 58 58 00 58 00 00 00 00 58 58 58 00 58 00 00 00 58 58 00 00 00 58 58 00 58 00 00 58 58 00 58 58 00 58 00 58 58 00 58 58 00 00 58 58 58 58 00 00 58 00 58 00 58 00 00 58 58 58 00 58 00 00 00 58 58 58 58 58 58 58 00 00 00 00 58 58 58 58 00 00 58 00 00 00 58 00 58 58 00 00 58 00 00 58 58 00 00 58 58 00 58 58 00 58 58 00 58 00 00 00 00 00 58 58 00 00 58 00 58 58 00 58 58 58 58 00 00 00 58 58 58 00 58 00 58 58 58 00 58 00 00 00 00 00 58 00 58 00 58 00 58 00 58 00 00 58 00 58 58 58 58 00 00 58 00 00 00 58 58 58 58 00 00 58 00 58 00 58 00 58 00 00 00 58 58 00 00 58 00 00 58 00 58 00 58 00 00 58 58 00 00 00 58 58 58 00 00 58 00 00
*/
