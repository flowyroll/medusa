.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x144e1, %r10
nop
nop
nop
nop
sub $43839, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm5
and $0xffffffffffffffc0, %r10
movaps %xmm5, (%r10)
nop
nop
sub $11493, %r9
lea addresses_D_ht+0x7597, %rcx
cmp $9630, %r13
mov (%rcx), %eax
nop
nop
nop
nop
xor %r15, %r15
lea addresses_D_ht+0x16f01, %rsi
lea addresses_UC_ht+0x1e4c1, %rdi
nop
sub %r13, %r13
mov $41, %rcx
rep movsw
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xbdf8, %r9
nop
nop
nop
nop
and $57504, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
nop
cmp $21157, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1cce1, %rsi
lea addresses_normal+0x125e1, %rdi
clflush (%rsi)
nop
nop
xor %rax, %rax
mov $13, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $46681, %r15

// Load
mov $0x76adbf000000001e, %rax
nop
nop
nop
nop
nop
and $50365, %r8
movups (%rax), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
and $18350, %rcx

// Faulty Load
mov $0x227f3a0000000ee1, %r8
nop
nop
nop
sub %rsi, %rsi
mov (%r8), %eax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 78}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
