.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rdi

// Store
lea addresses_normal+0x1c9ee, %r11
nop
nop
add $46307, %r12
movw $0x5152, (%r11)
nop
cmp %rbx, %rbx

// Store
lea addresses_US+0x11b6e, %rdi
clflush (%rdi)
cmp %r14, %r14
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_normal+0x1c9ee, %rax
nop
nop
nop
nop
add %r8, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovaps %ymm6, (%rax)
nop
nop
and $24830, %r12

// Store
lea addresses_UC+0x1ad4e, %r14
nop
nop
xor $40429, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovntdq %ymm1, (%r14)
nop
nop
nop
add $53917, %r8

// Load
lea addresses_WC+0x51ae, %r12
nop
cmp $33560, %rax
movb (%r12), %r8b
nop
nop
nop
nop
nop
and $50239, %r8

// Load
lea addresses_normal+0x1acae, %r8
nop
add $41957, %rbx
vmovups (%r8), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
nop
dec %r11

// Faulty Load
lea addresses_normal+0x1c9ee, %r12
and $57136, %rbx
movups (%r12), %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 7}
00 00 00 00 00 00 00
*/
