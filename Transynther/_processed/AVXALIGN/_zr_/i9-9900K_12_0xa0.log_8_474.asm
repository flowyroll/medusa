.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rcx
push %rdx
lea addresses_WC_ht+0x1c394, %rdx
nop
nop
nop
cmp $31879, %r10
mov (%rdx), %ecx
nop
nop
nop
add %r11, %r11
pop %rdx
pop %rcx
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rcx

// Store
lea addresses_D+0x10869, %r11
nop
nop
nop
inc %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovaps %ymm4, (%r11)
nop
nop
nop
nop
cmp $64206, %rbp

// Store
lea addresses_RW+0x1ff7, %rax
cmp $12280, %r12
movl $0x51525354, (%rax)
nop
nop
nop
nop
and $3755, %r9

// Store
lea addresses_WC+0xc8d7, %rcx
clflush (%rcx)
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovaps %ymm0, (%rcx)
nop
cmp $53109, %r9

// Store
mov $0x7cf, %rbp
nop
nop
nop
inc %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rbp)
xor $31667, %rbp

// Faulty Load
lea addresses_normal+0xc7f7, %rcx
cmp $23737, %r9
vmovntdqa (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'00': 8}
00 00 00 00 00 00 00 00
*/
