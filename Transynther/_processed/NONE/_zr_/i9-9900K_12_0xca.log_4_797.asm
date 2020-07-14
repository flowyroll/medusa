.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_D+0xc597, %r13
nop
nop
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%r13)
nop
nop
xor $41551, %r10

// Faulty Load
lea addresses_A+0x1b197, %r10
nop
nop
nop
xor $51494, %rcx
movups (%r10), %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 4}
00 00 00 00
*/
