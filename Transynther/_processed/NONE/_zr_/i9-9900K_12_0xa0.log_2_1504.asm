.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rdi

// Store
lea addresses_WC+0x13acc, %r12
nop
nop
nop
sub %rbx, %rbx
movw $0x5152, (%r12)
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_WC+0x1c64c, %r9
nop
nop
sub %r13, %r13
movb $0x51, (%r9)
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_WT+0x8952, %rdi
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)
cmp %r11, %r11

// Load
lea addresses_A+0x17d0c, %r9
nop
nop
nop
nop
nop
cmp $36764, %r13
vmovntdqa (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
dec %rbx

// Faulty Load
lea addresses_WC+0xb4cc, %r11
clflush (%r11)
xor $53213, %rbx
mov (%r11), %r13
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'src': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 2}
00 00
*/
