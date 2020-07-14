.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdx

// Store
lea addresses_WC+0x84e3, %rdx
nop
nop
nop
nop
sub $46797, %r15
movl $0x51525354, (%rdx)

// Exception!!!
nop
nop
nop
mov (0), %r11
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_UC+0x1fe03, %r9
nop
nop
nop
nop
inc %rcx
movb $0x51, (%r9)
nop
nop
nop
nop
sub $30881, %rdx

// Store
lea addresses_RW+0x7f2b, %r9
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_UC+0xaa3, %r9
add %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
and %rax, %rax

// Store
lea addresses_D+0x1eb63, %rax
nop
nop
nop
dec %r11
movl $0x51525354, (%rax)
sub %r15, %r15

// Faulty Load
lea addresses_US+0x14363, %r9
nop
nop
nop
inc %r15
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'38': 1, '1f': 1, '00': 18, '08': 6, '42': 3, '33': 1}
00 00 33 08 00 00 42 42 42 00 08 08 00 00 00 00 00 1f 08 00 00 00 00 00 00 00 08 00 08 38
*/
