.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x11d1d, %r10
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movups %xmm4, (%r10)
nop
nop
nop
nop
lfence

// REPMOV
lea addresses_D+0xe4fd, %rsi
lea addresses_RW+0x5475, %rdi
nop
nop
nop
nop
and $158, %r8
mov $24, %rcx
rep movsl
nop
nop
and $31426, %r14

// Store
lea addresses_WT+0x178e9, %rcx
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_normal+0x1ea1d, %rbx
nop
xor $57830, %rcx
mov (%rbx), %r8d
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'34': 16}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
