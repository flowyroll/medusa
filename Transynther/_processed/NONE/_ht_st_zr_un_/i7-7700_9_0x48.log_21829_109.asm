.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xb2fd, %r10
nop
xor %rax, %rax
movb (%r10), %dl
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x1d539, %rdx
nop
nop
nop
nop
xor $13644, %rbx
mov $0x6162636465666768, %r11
movq %r11, (%rdx)
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x11239, %r11
nop
nop
nop
nop
nop
sub %r14, %r14
movb $0x61, (%r11)
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x14379, %rax
add $63469, %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x1aa39, %rsi
lea addresses_normal_ht+0x14239, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $30, %rcx
rep movsq
nop
nop
nop
nop
xor %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rbx

// Load
lea addresses_US+0x5739, %r15
nop
nop
nop
xor $20534, %rax
movb (%r15), %bl
nop
nop
nop
nop
and %rbp, %rbp

// Faulty Load
lea addresses_WT+0x6a39, %rax
nop
nop
nop
and %r13, %r13
movups (%rax), %xmm1
vpextrq $0, %xmm1, %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'80': 46, '3c': 172, '26': 426, '02': 166, '49': 7, '00': 1898, 'c0': 86, 'de': 281, '04': 71, '48': 1593, 'e0': 43, '25': 17040}
25 25 25 25 25 25 25 3c 25 25 25 25 25 02 25 25 25 25 25 25 00 25 25 25 48 25 48 25 3c 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 00 25 25 00 25 00 25 48 25 25 25 25 25 48 25 25 00 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 48 25 25 25 25 25 25 48 25 25 48 25 00 48 00 25 48 de 25 25 25 25 25 25 25 48 25 25 25 25 25 25 00 00 00 25 25 00 00 25 25 25 48 25 25 00 48 25 25 48 25 48 25 25 48 00 25 00 e0 25 25 25 25 25 25 00 25 00 25 25 48 00 25 25 25 00 00 48 25 25 25 25 25 48 25 25 25 25 25 25 48 25 48 25 48 25 25 00 25 00 25 25 25 25 25 00 25 00 25 25 25 25 00 25 25 de 25 25 25 25 25 25 25 25 00 25 25 25 48 25 25 25 48 25 25 25 25 48 00 48 48 48 25 de 25 25 25 25 25 25 25 25 25 25 25 25 00 3c 25 25 00 25 3c 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 48 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 80 25 25 25 25 25 25 25 25 25 25 00 25 25 25 00 25 25 25 25 25 00 48 25 48 48 25 de 25 25 25 25 00 25 25 48 00 25 25 48 25 00 25 25 de de 25 25 25 25 25 48 48 25 25 00 25 48 25 25 25 25 25 25 25 48 25 00 00 25 25 25 25 25 de 00 c0 25 25 25 48 25 25 25 48 25 48 25 25 25 48 25 25 48 25 25 25 25 48 25 25 25 25 25 48 25 25 25 00 48 25 25 25 25 25 25 25 25 00 00 25 00 25 25 25 25 25 25 25 25 25 25 25 25 00 25 3c 25 25 25 25 25 25 25 25 02 25 25 25 25 25 25 25 25 25 25 00 25 25 00 25 25 25 25 25 25 25 25 25 25 00 25 25 25 25 25 25 25 25 25 25 02 00 25 25 00 25 25 25 25 25 25 25 25 3c 00 25 02 25 25 25 25 48 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 00 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 00 25 00 48 48 00 25 25 25 25 25 25 25 25 25 00 25 00 25 48 00 00 25 48 25 25 48 48 25 00 25 25 48 de 25 25 25 00 25 25 25 25 48 25 25 25 25 25 48 25 25 25 25 25 00 25 25 48 25 00 25 48 25 25 25 25 25 25 00 25 04 25 25 25 25 25 25 25 25 25 25 25 25 25 48 48 48 48 de 25 00 00 25 48 25 48 00 25 25 25 25 25 25 25 25 48 00 25 25 25 25 25 48 48 de 00 25 25 25 25 25 00 25 25 25 25 25 25 25 25 48 25 25 25 25 25 25 25 25 25 c0 25 00 de 25 25 25 00 25 de de 25 48 25 48 48 25 25 25 04 25 3c 25 25 25 25 25 25 25 25 25 25 00 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 00 25 25 02 25 25 25 25 00 25 25 25 02 25 25 25 25 25 25 25 48 00 25 00 25 25 25 25 00 25 25 25 00 25 25 25 25 80 25 25 25 00 25 25 25 25 25 25 25 02 00 25 25 25 00 25 25 25 25 25 25 25 25 48 25 25 25 00 25 25 25 25 25 25 25 00 25 25 25 25 25 25 3c 25 25 25 25 3c 00 25 25 25 25 48 25 25 25 25 25 25 25 25 25 00 25 25 25 25 25 25 25 25 25 25 04 25 25 25 25 25 25 25 25 00 25 25 25 25 25 25 48 00 25 25 48 25 25 00 25 00 25 25 25 48 48 25 25 25 25 25 25 25 25 48 25 48 25 de 25 25 25 48 25 00 00 25 25 48 25 00 25 25 48 25 48 48 25 25 25 25 00 25 25 25 48 25 48 48 25 00 25 25 48 48 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 00 25 48 25 25 25 25 25 25 25 25 25 25 25 de 25 25 25 25 25 25 25 48 25 25 48 25 00 25 25 25 25 25 00 25 48 de 25 25 de 25 25 25 00 25 00 25 25 48
*/
