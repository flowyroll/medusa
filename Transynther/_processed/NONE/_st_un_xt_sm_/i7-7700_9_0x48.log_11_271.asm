.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rbp
push %rdi
lea addresses_D_ht+0x6cd4, %r12
add %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, (%r12)
nop
nop
add $4644, %r9
pop %rdi
pop %rbp
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rbx

// Store
lea addresses_A+0xd8d4, %r15
nop
nop
nop
add $62039, %rbx
movl $0x51525354, (%r15)
inc %rbx

// Store
mov $0xcd4, %r12
nop
cmp $27340, %r9
movb $0x51, (%r12)
add $29742, %r9

// Store
lea addresses_WT+0xbcd4, %r11
clflush (%r11)
xor %r15, %r15
movb $0x51, (%r11)
nop
nop
dec %r12

// Store
lea addresses_WC+0xf14, %r15
nop
and $20785, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm7
and $0xffffffffffffffc0, %r15
vmovaps %ymm7, (%r15)
and %rbp, %rbp

// Store
lea addresses_WT+0xbcd4, %r14
nop
nop
nop
cmp %rbp, %rbp
movw $0x5152, (%r14)
nop
nop
nop
nop
add $26569, %r9

// Faulty Load
lea addresses_WT+0xbcd4, %r12
nop
sub %r14, %r14
mov (%r12), %ebp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'ae': 1, '52': 8, '34': 1, '2c': 1}
52 ae 34 52 52 2c 52 52 52 52 52
*/
