.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x8b34, %r13
clflush (%r13)
sub %r15, %r15
mov (%r13), %rsi
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x9fac, %rsi
lea addresses_A_ht+0x423c, %rdi
nop
nop
dec %r14
mov $37, %rcx
rep movsw
nop
nop
nop
nop
and $57723, %rdi
lea addresses_D_ht+0x10ef4, %rdi
and %rbx, %rbx
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
nop
and %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rbp
push %rcx

// Store
lea addresses_US+0x76e4, %rcx
nop
nop
nop
cmp $1736, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovntdq %ymm0, (%rcx)
nop
nop
sub $53025, %rcx

// Store
mov $0x2f1f100000000144, %r10
nop
nop
and %r11, %r11
movl $0x51525354, (%r10)
inc %r13

// Store
lea addresses_A+0x151a4, %r13
nop
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
nop
nop
dec %r14

// Faulty Load
lea addresses_normal+0x54a4, %r10
nop
add $11953, %r13
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 4, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'34': 3}
34 34 34
*/
