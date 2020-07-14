.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rdi
push %rdx

// Store
lea addresses_D+0x9de1, %r15
clflush (%r15)
nop
nop
nop
sub %rbp, %rbp
movb $0x51, (%r15)
sub $23249, %rdx

// Store
lea addresses_US+0x11a61, %r15
nop
nop
dec %r13
movl $0x51525354, (%r15)
nop
and %r15, %r15

// Store
lea addresses_D+0x11a01, %r8
clflush (%r8)
cmp $40243, %rdi
movb $0x51, (%r8)
nop
xor %r15, %r15

// Store
mov $0xabd, %rdx
add %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%rdx)
and %rbp, %rbp

// Faulty Load
lea addresses_PSE+0x5e61, %r11
inc %rdi
mov (%r11), %ebp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'33': 25}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
