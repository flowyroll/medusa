.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1109e, %rsi
lea addresses_UC_ht+0x5f15, %rdi
nop
nop
nop
add $28676, %rbp
mov $22, %rcx
rep movsq
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x39d2, %r12
nop
nop
nop
add $10005, %r8
movl $0x61626364, (%r12)
xor %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rsi

// Store
lea addresses_US+0x1e550, %rsi
nop
nop
nop
nop
nop
and %rbx, %rbx
movb $0x51, (%rsi)
nop
nop
sub %rbx, %rbx

// Store
mov $0x16cff60000000e50, %r8
nop
add $43093, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r8)
nop
nop
add $54951, %rbp

// Faulty Load
lea addresses_US+0x1e550, %rbx
clflush (%rbx)
nop
nop
nop
inc %rbp
movb (%rbx), %r8b
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'51': 26}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
