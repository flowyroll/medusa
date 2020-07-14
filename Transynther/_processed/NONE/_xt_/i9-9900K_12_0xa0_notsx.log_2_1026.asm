.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x104a0, %rdx
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rax
movq %rax, (%rdx)
and %r9, %r9

// REPMOV
lea addresses_US+0x67e0, %rsi
lea addresses_US+0x16d0e, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $81, %rcx
rep movsw
nop
nop
nop
nop
and $18087, %rdx

// Store
mov $0x465529000000042d, %r14
nop
nop
nop
and $3625, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r14)
add %rdx, %rdx

// Faulty Load
lea addresses_normal+0x128a0, %r14
nop
nop
nop
nop
nop
cmp $17146, %rax
mov (%r14), %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_US', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_US', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'34': 2}
34 34
*/
