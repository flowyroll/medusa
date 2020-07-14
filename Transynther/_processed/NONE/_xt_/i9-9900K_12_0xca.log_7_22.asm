.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rbx
lea addresses_WT_ht+0x7bbf, %rbx
nop
nop
nop
nop
and %r8, %r8
movw $0x6162, (%rbx)
nop
nop
nop
nop
inc %r14
lea addresses_D_ht+0xbfbf, %r14
nop
nop
nop
nop
nop
xor $63611, %r15
mov (%r14), %r11d
nop
nop
nop
nop
inc %rbx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx

// Store
lea addresses_US+0x49b7, %r13
nop
nop
nop
and $23716, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%r13)
nop
nop
nop
inc %r15

// Store
lea addresses_normal+0x61bf, %rcx
clflush (%rcx)
nop
nop
dec %r12
movb $0x51, (%rcx)
nop
nop
add %r12, %r12

// Faulty Load
lea addresses_RW+0x1fbbf, %rdx
nop
nop
nop
nop
nop
sub $8686, %rcx
vmovups (%rdx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'32': 7}
32 32 32 32 32 32 32
*/
