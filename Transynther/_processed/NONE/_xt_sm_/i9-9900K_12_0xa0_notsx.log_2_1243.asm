.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rdi

// Store
mov $0xfd, %rdi
clflush (%rdi)
nop
nop
cmp %r8, %r8
movb $0x51, (%rdi)
nop
xor %rbp, %rbp

// Load
lea addresses_US+0x11428, %r14
clflush (%r14)
nop
nop
cmp $16684, %r10
mov (%r14), %r15d
nop
sub $39455, %rbp

// Store
mov $0x523, %r8
nop
nop
nop
nop
sub %r14, %r14
movw $0x5152, (%r8)
sub $32888, %r15

// Load
mov $0x1783f300000002bd, %r8
clflush (%r8)
nop
nop
nop
cmp %rdi, %rdi
movups (%r8), %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
nop
nop
inc %r11

// Store
mov $0x7b72360000000d3d, %r8
clflush (%r8)
nop
nop
sub $26765, %r15
movb $0x51, (%r8)
xor $35635, %r10

// Store
lea addresses_PSE+0x1822c, %rdi
nop
nop
nop
cmp $29446, %r8
movw $0x5152, (%rdi)
sub %rbp, %rbp

// Store
lea addresses_D+0x176bd, %r11
dec %r15
movl $0x51525354, (%r11)
nop
nop
nop
xor $33333, %r11

// Load
lea addresses_PSE+0x1dcbd, %r10
nop
nop
and %r11, %r11
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
nop
sub $15956, %rdi

// Store
lea addresses_RW+0x4ebd, %r14
nop
nop
dec %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r14)
nop
nop
nop
nop
add $26503, %r11

// Faulty Load
lea addresses_RW+0x4ebd, %r10
xor %r8, %r8
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 2}
58 58
*/
