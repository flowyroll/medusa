.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_UC+0xb29d, %r11
nop
nop
nop
nop
nop
sub $28239, %r9
movl $0x51525354, (%r11)
nop
cmp %r9, %r9

// Store
lea addresses_RW+0x17f4d, %rbx
nop
nop
and $12088, %r15
movl $0x51525354, (%rbx)
nop
nop
sub %r12, %r12

// Store
lea addresses_PSE+0x1d431, %r12
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
sub $1361, %rbp

// Store
mov $0x5b9, %rbx
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rbx)
nop
cmp %r12, %r12

// Store
mov $0x30aa0700000005c3, %rbx
nop
sub $58815, %rdi
movw $0x5152, (%rbx)
nop
xor $24470, %r15

// Faulty Load
lea addresses_US+0x3e5d, %r9
nop
nop
nop
nop
nop
sub $55328, %r11
mov (%r9), %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'00': 39}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
