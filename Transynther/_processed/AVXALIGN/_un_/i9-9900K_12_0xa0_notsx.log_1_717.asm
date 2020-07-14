.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdx

// Store
lea addresses_normal+0x1c214, %r8
nop
nop
nop
xor $61682, %r15
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
add $5494, %r15

// Store
lea addresses_US+0x4415, %r11
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movaps %xmm6, (%r11)
nop
nop
nop
dec %rbx

// Faulty Load
lea addresses_WT+0xb285, %r15
clflush (%r15)
nop
add %rdx, %rdx
vmovaps (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'60': 1}
60
*/
