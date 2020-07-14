.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x90c7, %rsi
lea addresses_WT_ht+0x12ba7, %rdi
xor %r11, %r11
mov $75, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x25d9, %r9
nop
nop
nop
nop
inc %r13
mov (%r9), %rbx
nop
nop
nop
nop
add %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %r8
push %r9

// Load
lea addresses_PSE+0x1bd04, %r9
sub %r8, %r8
movntdqa (%r9), %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
nop
nop
cmp $22636, %r12

// Faulty Load
lea addresses_A+0x8a47, %r15
nop
nop
nop
sub $25041, %r14
movups (%r15), %xmm7
vpextrq $1, %xmm7, %r8
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'00': 1}
00
*/
