.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rbx
push %rdx

// Store
lea addresses_D+0x5633, %r10
nop
nop
nop
nop
add $8694, %r13
movl $0x51525354, (%r10)
nop
nop
xor $53032, %r13

// Store
mov $0x19feab0000000f51, %rax
nop
nop
inc %r15
movb $0x51, (%rax)
nop
nop
nop
sub $63134, %r13

// Store
mov $0xf88, %r13
nop
nop
nop
nop
nop
add %r15, %r15
movl $0x51525354, (%r13)
and %rbx, %rbx

// Load
mov $0x611, %r10
nop
nop
nop
nop
nop
dec %r13
mov (%r10), %r15w
nop
nop
nop
xor $55277, %r15

// Faulty Load
lea addresses_WT+0xf611, %r15
sub $18912, %r10
mov (%r15), %bx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_P', 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'39': 5}
39 39 39 39 39
*/
