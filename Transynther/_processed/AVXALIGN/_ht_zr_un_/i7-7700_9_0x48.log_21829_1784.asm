.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xf572, %rsi
lea addresses_WC_ht+0xa532, %rdi
clflush (%rdi)
nop
nop
nop
sub $23723, %rbp
mov $122, %rcx
rep movsb
inc %rsi
lea addresses_WT_ht+0x2fbc, %rsi
lea addresses_WT_ht+0x11942, %rdi
sub %rax, %rax
mov $110, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x3d42, %rsi
lea addresses_normal_ht+0x16e72, %rdi
clflush (%rsi)
nop
nop
xor %rdx, %rdx
mov $124, %rcx
rep movsl
nop
xor $56622, %rdi
lea addresses_WC_ht+0x7a72, %rbp
nop
nop
and %rsi, %rsi
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x1b8b2, %rax
nop
nop
nop
and %r9, %r9
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
inc %r9
lea addresses_WC_ht+0x6272, %rbp
clflush (%rbp)
nop
nop
nop
nop
add %rdi, %rdi
movb $0x61, (%rbp)
nop
nop
nop
nop
add $50603, %r9
lea addresses_A_ht+0xf7d2, %rsi
clflush (%rsi)
nop
xor %rax, %rax
movb $0x61, (%rsi)
nop
nop
nop
xor $35002, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rdi
push %rdx

// Store
lea addresses_D+0xeeb2, %r14
nop
nop
nop
sub $43771, %rdx
movb $0x51, (%r14)
nop
nop
nop
nop
add $9828, %r11

// Faulty Load
mov $0x672, %rdi
nop
dec %r12
vmovaps (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rdx
pop %rdi
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'4f': 2, '45': 4, '00': 566, '49': 12570, '48': 8685, 'f4': 1, '50': 1}
49 48 49 49 49 48 49 49 49 48 48 49 48 48 49 49 48 49 49 49 49 49 49 49 49 49 49 00 49 48 49 49 49 49 49 48 49 49 49 49 48 48 48 48 48 49 48 49 49 49 49 48 48 48 48 48 48 48 49 49 49 48 49 49 49 49 49 49 48 49 49 49 48 48 48 48 48 48 48 49 48 48 49 49 49 49 49 49 49 49 49 48 48 48 49 48 48 49 48 49 49 49 49 48 48 48 48 49 48 49 49 48 49 49 49 49 49 49 49 49 48 48 48 49 48 48 49 49 49 49 49 48 49 49 49 49 49 49 49 48 49 49 48 48 48 49 49 49 49 49 49 49 48 49 48 48 49 49 48 48 48 48 49 48 49 49 48 00 48 48 49 49 48 48 49 00 48 49 49 49 00 49 49 49 49 48 48 49 49 49 48 49 49 49 49 48 49 00 48 49 49 48 48 48 48 48 49 48 49 49 49 49 49 49 49 49 49 48 48 49 48 48 49 48 48 49 49 48 49 49 49 48 00 49 49 49 49 49 48 49 49 49 48 48 49 49 49 48 48 49 49 49 00 48 48 48 48 48 49 49 49 48 49 49 49 49 49 48 49 49 49 49 49 49 48 00 48 48 49 48 48 48 48 48 48 48 49 48 48 49 49 49 48 49 49 49 49 49 48 48 48 48 48 48 48 48 48 49 48 48 49 49 49 49 48 49 49 49 49 48 49 00 49 49 49 49 48 48 48 48 49 48 49 49 49 49 49 49 48 49 49 49 49 49 49 48 49 49 49 48 49 00 48 48 49 48 00 49 48 49 49 49 49 49 49 49 49 48 48 48 49 48 48 48 48 48 49 48 49 49 49 49 48 48 49 49 49 48 48 48 48 48 49 48 49 49 48 49 48 49 49 49 49 49 48 48 48 48 48 48 49 49 49 48 49 49 49 49 49 49 49 49 49 48 48 48 49 49 49 48 48 48 49 49 49 49 49 49 49 49 49 49 48 49 49 49 48 00 49 48 48 48 48 49 49 49 49 48 49 49 49 49 49 49 49 49 49 48 48 48 00 48 49 48 49 49 49 49 48 49 49 49 48 49 49 48 49 49 49 49 49 48 48 48 48 48 49 49 49 49 49 49 49 49 49 49 48 48 49 48 48 48 49 48 48 49 49 49 48 48 49 49 49 49 49 48 48 49 48 48 49 49 48 48 49 49 49 49 48 49 48 49 49 49 48 48 48 49 49 49 48 49 48 48 48 48 48 49 49 49 48 49 49 49 49 49 48 49 49 48 00 49 49 49 48 49 49 49 49 49 49 48 49 49 48 48 48 48 49 49 49 49 49 49 49 49 49 48 48 48 48 49 49 49 49 48 49 49 49 49 00 49 49 49 49 48 48 48 48 48 49 48 48 48 48 48 48 48 48 49 49 48 49 48 49 49 49 49 49 48 48 48 48 48 49 48 49 49 49 49 00 49 49 49 49 48 49 49 48 48 48 48 49 48 49 49 49 49 49 49 49 49 48 49 48 49 48 48 48 48 48 49 49 49 48 48 49 48 48 00 49 49 49 49 49 48 48 48 48 48 48 49 48 48 48 49 48 49 49 49 49 00 49 49 49 49 49 48 48 48 49 49 48 49 49 49 49 49 48 48 48 49 49 49 00 48 49 49 49 48 48 48 48 49 48 49 49 49 49 49 49 49 49 49 49 49 48 49 49 49 49 49 49 48 49 49 49 49 49 48 48 49 48 48 49 49 49 49 49 49 49 48 48 48 49 49 49 49 49 49 48 49 49 48 48 49 48 48 48 48 49 49 49 49 48 49 49 49 48 49 49 49 48 48 48 48 48 00 49 48 48 48 00 49 49 49 49 00 49 49 49 48 48 48 48 48 49 00 48 49 49 49 48 49 49 49 49 48 49 49 49 49 49 48 00 48 49 48 48 48 48 49 48 49 49 49 49 48 49 49 49 49 49 48 49 49 49 00 49 49 48 48 48 49 49 49 00 49 49 49 49 48 49 49 48 48 49 49 49 48 49 48 48 48 48 48 49 49 48 49 49 49 49 49 48 48 49 49 49 49 49 49 49 49 49 00 48 48 48 49 49 49 48 49 48 49 49 49 48 48 48 48 48 49 48 48 49 49 48 49 48 48 49 48 49 49 49 00 48 48 49 49 48 48 48 48 48 48 48 49 49 49 49 49 49 49 49 49 49 49 48 48 48 48 49 48 48 49 49 48 48 49 48 48 49 48 49 48 49 49
*/
