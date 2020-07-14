.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rax
push %rbp

// Store
lea addresses_PSE+0x1413a, %r11
nop
nop
and %r10, %r10
movl $0x51525354, (%r11)
nop
nop
nop
nop
and $59410, %r13

// Load
lea addresses_WT+0x18044, %r12
add $4567, %rbp
mov (%r12), %eax
dec %r10

// Store
mov $0x53ce330000000844, %r11
nop
nop
nop
nop
dec %r13
movw $0x5152, (%r11)
dec %r10

// Store
lea addresses_A+0x9de4, %r11
clflush (%r11)
nop
nop
nop
nop
and %r12, %r12
movb $0x51, (%r11)
nop
nop
xor %r10, %r10

// Load
mov $0x53ce330000000844, %rax
nop
nop
xor $49081, %rbp
movb (%rax), %r12b
nop
nop
nop
cmp %r13, %r13

// Load
lea addresses_normal+0xc44, %r15
dec %r10
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
nop
nop
nop
cmp $35141, %rax

// Store
lea addresses_A+0x1d804, %r10
nop
nop
inc %r12
movw $0x5152, (%r10)
nop
nop
nop
cmp $3044, %r10

// Faulty Load
mov $0x53ce330000000844, %r15
nop
nop
add %r10, %r10
mov (%r15), %r11w
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'52': 1}
52
*/
