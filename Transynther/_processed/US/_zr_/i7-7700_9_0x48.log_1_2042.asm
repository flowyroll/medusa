.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_US+0x1bc36, %rbp
nop
nop
dec %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rbp)
nop
nop
xor $10807, %rcx

// Store
lea addresses_WC+0x862e, %rdx
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
cmp $34749, %rdi

// Store
lea addresses_D+0x7b76, %rdi
nop
nop
nop
nop
nop
and $47718, %rbp
movw $0x5152, (%rdi)
nop
and $52388, %rdx

// Load
lea addresses_WC+0x18876, %rdx
nop
nop
dec %rdi
mov (%rdx), %r11
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_normal+0x13436, %r11
sub %rdi, %rdi
movl $0x51525354, (%r11)
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_UC+0x6436, %rdi
dec %rbx
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
inc %rbx

// Faulty Load
lea addresses_US+0x1bc36, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %r11
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'00': 1}
00
*/
