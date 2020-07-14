.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6878, %rsi
lea addresses_D_ht+0x100f8, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %rbp, %rbp
mov $69, %rcx
rep movsq
nop
inc %r15
lea addresses_UC_ht+0x16ce6, %rax
nop
nop
add $40381, %r14
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
sub %r15, %r15
lea addresses_D_ht+0xac18, %rdi
dec %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
nop
sub %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %r8
push %rcx

// Store
mov $0x154ba600000009d0, %r10
nop
cmp %r12, %r12
movl $0x51525354, (%r10)
nop
xor $55830, %r10

// Store
lea addresses_US+0x12f48, %r12
nop
nop
and %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r12)
nop
dec %r11

// Faulty Load
lea addresses_US+0x19cf8, %r15
nop
nop
nop
nop
sub %r8, %r8
movups (%r15), %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 33, '48': 2}
00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00
*/
