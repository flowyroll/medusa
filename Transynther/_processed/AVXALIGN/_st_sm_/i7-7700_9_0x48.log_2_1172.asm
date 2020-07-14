.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rcx
push %rdx

// Store
lea addresses_UC+0x1c52f, %r9
clflush (%r9)
add %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r9)
inc %r10

// Store
lea addresses_PSE+0x26a7, %rcx
nop
nop
add %r9, %r9
mov $0x5152535455565758, %r10
movq %r10, (%rcx)

// Exception!!!
nop
nop
mov (0), %r15
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_US+0x7bef, %r10
nop
inc %rdx
movw $0x5152, (%r10)

// Exception!!!
nop
nop
nop
nop
mov (0), %r9
add %rcx, %rcx

// Faulty Load
lea addresses_US+0x7bef, %r9
nop
nop
add $36775, %r15
mov (%r9), %r10d
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'52': 2}
52 52
*/
