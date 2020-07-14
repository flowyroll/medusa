.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x110a5, %rcx
nop
nop
nop
nop
nop
cmp $19923, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%rcx)
nop
and %rcx, %rcx

// Faulty Load
lea addresses_RW+0x110a5, %rax
clflush (%rax)
nop
nop
nop
nop
nop
sub $31587, %rdi
mov (%rax), %r8d
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'58': 8}
58 58 58 58 58 58 58 58
*/
