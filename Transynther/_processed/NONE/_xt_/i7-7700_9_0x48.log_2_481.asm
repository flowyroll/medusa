.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rdx
push %rsi
lea addresses_normal_ht+0x192ee, %rax
nop
nop
nop
add $2789, %r9
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
sub $48591, %rdx
pop %rsi
pop %rdx
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdx

// Store
lea addresses_normal+0xd10f, %rdx
nop
nop
and $17410, %rbx
mov $0x5152535455565758, %r14
movq %r14, (%rdx)
nop
xor $60889, %r11

// Store
lea addresses_UC+0x2375, %r14
nop
nop
nop
inc %r11
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
nop
nop
nop
sub %r9, %r9

// Load
lea addresses_RW+0xda73, %r9
and $32509, %rcx
mov (%r9), %edx
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_PSE+0xc0cd, %rcx
nop
nop
and $52080, %r11
mov $0x5152535455565758, %r14
movq %r14, (%rcx)
nop
inc %r11

// Store
lea addresses_WC+0x11e79, %r14
and $57702, %r11
movl $0x51525354, (%r14)
nop
nop
nop
nop
dec %r14

// Faulty Load
lea addresses_D+0x1d975, %r9
nop
sub %rdx, %rdx
vmovups (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'36': 2}
36 36
*/
