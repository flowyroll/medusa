.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx

// Store
lea addresses_UC+0x8e42, %r12
nop
nop
nop
nop
and $23570, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r12)
nop
nop
nop
nop
inc %r15

// Store
mov $0xba2, %rdi
nop
xor $3667, %r8
movb $0x51, (%rdi)
nop
nop
nop
cmp $64800, %r12

// Store
mov $0x6c2, %rcx
nop
nop
sub $47689, %r11
movl $0x51525354, (%rcx)
nop
nop
and %r12, %r12

// Store
lea addresses_PSE+0x14142, %rdi
xor $5853, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%rdi)
dec %rdx

// Load
mov $0x6fa41f0000000f82, %rdx
sub %r11, %r11
vmovups (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
sub %r11, %r11

// Faulty Load
lea addresses_RW+0xaf82, %r8
nop
nop
nop
and %r11, %r11
movb (%r8), %dl
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'32': 2}
32 32
*/
