.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rdi
push %rsi
lea addresses_UC_ht+0x1974, %r9
clflush (%r9)
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r9)
nop
nop
add $56018, %r13
lea addresses_WC_ht+0x15cc6, %rdi
nop
nop
inc %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
dec %r14
pop %rsi
pop %rdi
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0xa93c, %rsi
lea addresses_A+0xe5cc, %rdi
nop
nop
nop
and $29566, %r9
mov $19, %rcx
rep movsb
nop
nop
nop
xor $65331, %rcx

// Faulty Load
lea addresses_A+0xe5cc, %rdi
nop
add $24842, %r13
mov (%rdi), %si
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'2a': 1}
2a
*/
