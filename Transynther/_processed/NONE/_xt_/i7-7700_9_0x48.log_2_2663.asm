.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rsi

// Load
lea addresses_US+0x1661b, %r10
nop
cmp %r8, %r8
mov (%r10), %bp
nop
nop
nop
inc %r10

// Load
lea addresses_D+0x14453, %rsi
nop
nop
nop
nop
sub $49167, %rbx
mov (%rsi), %r10
nop
nop
inc %rsi

// Store
lea addresses_PSE+0x216b, %r10
add $10828, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%r10)
nop
nop
sub $29635, %r8

// Faulty Load
lea addresses_D+0x206b, %rax
nop
nop
nop
and $24143, %r8
mov (%rax), %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'36': 2}
36 36
*/
