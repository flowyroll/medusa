.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbx
push %rcx
push %rdi
lea addresses_A_ht+0xcca8, %rbx
nop
nop
nop
nop
nop
add $63991, %r11
movw $0x6162, (%rbx)
nop
nop
nop
xor $3831, %rcx
pop %rdi
pop %rcx
pop %rbx
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi

// Load
lea addresses_D+0xb638, %rdi
nop
xor $41032, %rbp
mov (%rdi), %r10w
nop
dec %rbp

// Store
mov $0x1e8, %rbp
clflush (%rbp)
nop
nop
nop
nop
sub $34358, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
nop
nop
add $2178, %rdi

// Store
lea addresses_WT+0x9e1c, %rdi
nop
nop
nop
and $28786, %r12
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
inc %r12

// Store
lea addresses_RW+0xb228, %rcx
nop
nop
nop
dec %r10
movw $0x5152, (%rcx)
nop
nop
nop
nop
xor $45160, %r8

// Load
mov $0x57e4920000000028, %rdi
nop
and $15659, %r12
mov (%rdi), %r13d
nop
sub $52733, %r10

// Store
mov $0x49c, %r12
nop
and $54581, %rbp
mov $0x5152535455565758, %r13
movq %r13, (%r12)
nop
nop
nop
nop
add %rbp, %rbp

// Faulty Load
lea addresses_D+0x15628, %rbp
nop
nop
nop
nop
cmp $41108, %r10
movb (%rbp), %r12b
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'36': 8}
36 36 36 36 36 36 36 36
*/
