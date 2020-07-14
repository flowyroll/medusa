.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rcx
push %rdi
push %rdx
lea addresses_normal_ht+0x4647, %r12
clflush (%r12)
nop
nop
nop
nop
sub %rcx, %rcx
movups (%r12), %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x13a21, %rdx
nop
nop
cmp $43362, %r9
mov (%rdx), %r11
nop
nop
nop
nop
nop
inc %r12
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_A+0x1812f, %rbx
nop
nop
nop
nop
xor $46884, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
nop
xor $53290, %r10

// Faulty Load
lea addresses_A+0x1812f, %r10
nop
dec %rax
mov (%r10), %ebx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'58': 59}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
