.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi

// Store
lea addresses_WT+0x1ad3d, %r9
clflush (%r9)
nop
nop
nop
nop
xor %rdi, %rdi
movb $0x51, (%r9)
nop
nop
nop
nop
xor $12865, %r12

// Faulty Load
lea addresses_US+0x1b115, %r9
nop
add $14859, %r11
movb (%r9), %cl
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
