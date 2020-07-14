.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x252c, %rsi
nop
nop
nop
sub %rdi, %rdi
movb (%rsi), %r12b
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x1612c, %r14
nop
add %r11, %r11
movups (%r14), %xmm4
vpextrq $0, %xmm4, %r8
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x182bf, %rsi
lea addresses_UC_ht+0xb4b6, %rdi
nop
and %r12, %r12
mov $33, %rcx
rep movsb
nop
nop
dec %rbp
lea addresses_WT_ht+0xdfde, %r12
nop
nop
nop
nop
nop
inc %r14
mov (%r12), %edi
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x1776c, %rsi
lea addresses_D_ht+0x512c, %rdi
nop
nop
dec %r8
mov $30, %rcx
rep movsb
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0xdf68, %rcx
nop
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
mfence
lea addresses_D_ht+0xc12c, %rsi
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm1
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm1, (%rsi)
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0xb66c, %rdi
nop
nop
nop
add %rcx, %rcx
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm2
vpextrq $0, %xmm2, %r11
nop
nop
sub %r14, %r14
lea addresses_A_ht+0xf42c, %rsi
lea addresses_UC_ht+0xd52c, %rdi
and %r11, %r11
mov $114, %rcx
rep movsl
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x16d2c, %r11
nop
nop
nop
nop
nop
dec %rdi
mov (%r11), %r12d
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rbp
push %rcx
push %rsi

// Store
mov $0x2297e5000000012c, %rbp
nop
nop
xor %rax, %rax
movw $0x5152, (%rbp)
sub $226, %rax

// Store
mov $0x56ff75000000012c, %r8
add $58937, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_D+0x1e3dc, %rsi
clflush (%rsi)
nop
nop
nop
xor %r11, %r11
movl $0x51525354, (%rsi)
nop
nop
nop
inc %rsi

// Store
lea addresses_US+0x1acdc, %r10
sub %rcx, %rcx
movw $0x5152, (%r10)
nop
nop
nop
nop
add %r10, %r10

// Faulty Load
mov $0x2297e5000000012c, %r8
clflush (%r8)
nop
nop
xor %r10, %r10
movb (%r8), %al
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'58': 1225, '00': 318}
58 58 58 58 58 58 58 00 00 58 00 58 00 58 58 58 58 00 58 58 58 00 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 58 00 58 58 58 58 58 58 58 00 58 00 58 00 00 00 58 58 58 58 00 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 00 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 00 00 58 00 00 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 00 00 00 58 58 00 00 00 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 58 00 58 58 58 58 00 00 00 00 58 00 58 58 00 58 00 00 00 00 58 58 58 00 58 00 58 58 58 58 00 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 00 58 00 58 00 00 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 00 58 58 58 58 58 00 00 58 00 00 58 58 00 58 00 58 00 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 00 00 00 58 00 00 00 58 00 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 00 58 58 00 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 00 58 00 00 58 58 58 00 00 58 00 58 58 58 58 58 58 58 00 58 00 00 58 58 00 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 00 58 00 00 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 00 00 00 00 00 58 58 00 58 58 58 58 58 58 00 58 00 00 58 00 00 58 58 58 58 58 00 00 58 00 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 00 58 58 00 00 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 00 00 58 00 00 00 58 58 00 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 00 00 58 00 58 00 00 00 58 58 58 58 00 00 58 00 58 00 58 58 00 00 58 00 58 58 00 00 00 58 00 58 00 58 00
*/
