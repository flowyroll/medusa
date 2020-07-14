.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x5e75, %rsi
lea addresses_WT_ht+0x10461, %rdi
clflush (%rdi)
nop
nop
add $50183, %r12
mov $87, %rcx
rep movsl
nop
and $64428, %r11
lea addresses_UC_ht+0x1c5ed, %rdx
nop
sub %r10, %r10
movb (%rdx), %cl
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rsi

// Store
lea addresses_D+0x7471, %r8
clflush (%r8)
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r8)
nop
and %rbx, %rbx

// Faulty Load
lea addresses_US+0x2e2d, %rbp
nop
nop
nop
nop
and $34936, %r9
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'44': 10}
44 44 44 44 44 44 44 44 44 44
*/
