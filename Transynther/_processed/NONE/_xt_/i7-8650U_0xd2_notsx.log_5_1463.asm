.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
lea addresses_WT_ht+0x48b4, %r10
nop
nop
nop
nop
and %r12, %r12
movb $0x61, (%r10)
nop
nop
nop
and %r10, %r10
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rdi

// Store
mov $0x3c4, %r11
nop
cmp %r8, %r8
movb $0x51, (%r11)
nop
nop
add %rbx, %rbx

// Store
lea addresses_normal+0x12894, %rbp
nop
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovntdq %ymm3, (%rbp)
nop
nop
nop
dec %r8

// Store
lea addresses_WC+0x12c94, %r8
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
nop
nop
add %rbx, %rbx

// Faulty Load
lea addresses_normal+0x14c94, %rax
cmp %r8, %r8
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'34': 5}
34 34 34 34 34
*/
