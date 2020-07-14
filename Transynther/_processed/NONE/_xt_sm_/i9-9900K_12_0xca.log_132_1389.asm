.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rcx

// Load
lea addresses_WT+0x8fcb, %r11
nop
nop
nop
nop
nop
inc %r15
movb (%r11), %r14b
nop
nop
nop
nop
nop
xor $47503, %r10

// Store
lea addresses_normal+0x7e95, %r9
nop
nop
nop
nop
nop
xor %rbx, %rbx
movb $0x51, (%r9)
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_UC+0x1fcb, %r11
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
cmp %rbx, %rbx

// Store
mov $0x903, %rcx
nop
nop
nop
nop
sub $38383, %r10
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
nop
nop
nop
sub $58722, %r10

// Store
lea addresses_UC+0x1fcb, %r11
nop
nop
nop
and %r9, %r9
movb $0x51, (%r11)
nop
nop
nop
nop
cmp $10327, %r10

// Store
lea addresses_normal+0x117cb, %rbx
nop
cmp %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, (%rbx)
and %r10, %r10

// Faulty Load
lea addresses_UC+0x1fcb, %r11
nop
and %r14, %r14
mov (%r11), %cx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'51': 132}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
