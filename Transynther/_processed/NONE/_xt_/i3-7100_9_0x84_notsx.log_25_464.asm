.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_UC+0x4db6, %rdi
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movntdq %xmm2, (%rdi)
nop
nop
nop
nop
sub $14497, %r8

// Store
lea addresses_RW+0x5fe6, %rcx
clflush (%rcx)
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rcx)
nop
xor $37294, %r15

// Faulty Load
lea addresses_RW+0x1ab66, %r15
nop
nop
nop
nop
xor $64412, %r13
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'32': 25}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
