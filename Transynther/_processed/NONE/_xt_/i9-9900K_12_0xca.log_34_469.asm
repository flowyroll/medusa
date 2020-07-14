.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rcx
push %rdi
lea addresses_WT_ht+0x147e3, %r15
nop
nop
cmp $41900, %rcx
movb $0x61, (%r15)
nop
nop
nop
nop
nop
xor $49113, %rdi
lea addresses_normal_ht+0x59f7, %rdi
nop
nop
nop
and $61957, %r11
mov (%rdi), %r8d
nop
nop
nop
nop
cmp $6457, %r15
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rdx

// Store
lea addresses_A+0x173f7, %r12
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r9
movq %r9, (%r12)
nop
nop
nop
nop
nop
inc %r12

// Store
lea addresses_D+0x17177, %rdx
nop
nop
add $16823, %r14
mov $0x5152535455565758, %r10
movq %r10, (%rdx)
nop
nop
nop
and $18505, %r12

// Store
mov $0x4b7, %rdx
nop
nop
nop
nop
cmp %r9, %r9
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_WT+0x1716f, %r14
nop
add $16140, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_D+0x1b5f7, %rbp
nop
nop
nop
nop
sub $48136, %r12
movb (%rbp), %r14b
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'36': 34}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
