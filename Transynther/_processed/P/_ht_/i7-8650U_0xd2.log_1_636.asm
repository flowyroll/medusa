.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rbx
push %rdi
lea addresses_UC_ht+0xae74, %rbx
nop
nop
nop
xor %r11, %r11
vmovups (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
nop
cmp $8721, %rdi
pop %rdi
pop %rbx
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbp

// Store
lea addresses_normal+0x4f74, %rax
nop
nop
cmp $34955, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
nop
inc %rax

// Faulty Load
mov $0xe74, %rax
nop
cmp %r14, %r14
movups (%rax), %xmm5
vpextrq $1, %xmm5, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'47': 1}
47
*/
