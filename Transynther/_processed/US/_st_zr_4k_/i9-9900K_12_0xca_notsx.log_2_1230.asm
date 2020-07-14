.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi

// Store
lea addresses_WC+0x17f14, %r8
nop
nop
nop
sub $14162, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
add $40402, %r10

// Store
lea addresses_UC+0xbb14, %r8
sub $12064, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r8)
nop
nop
nop
nop
nop
add $35808, %r10

// Store
lea addresses_A+0xd714, %r9
nop
nop
nop
nop
and $16835, %rcx
movl $0x51525354, (%r9)
and %r10, %r10

// Store
lea addresses_normal+0x1b14, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add %r11, %r11
movl $0x51525354, (%rcx)
cmp %rdi, %rdi

// Faulty Load
lea addresses_US+0x17f14, %r11
nop
sub $59481, %rdi
movb (%r11), %cl
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 1, '58': 1}
00 58
*/
