.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdx

// Load
lea addresses_A+0xa313, %rbx
xor %r8, %r8
mov (%rbx), %dx
nop
nop
nop
nop
nop
sub $5620, %rbx

// Store
lea addresses_RW+0x7c43, %r9
nop
nop
inc %r11
movb $0x51, (%r9)
cmp $13093, %rcx

// Store
lea addresses_WT+0x1b4b3, %rcx
clflush (%rcx)
nop
dec %r11
movw $0x5152, (%rcx)
nop
nop
nop
cmp $48556, %rbp

// Store
lea addresses_normal+0x6d93, %r9
nop
nop
nop
nop
nop
inc %rdx
movb $0x51, (%r9)
nop
nop
nop
nop
nop
dec %r8

// Store
lea addresses_normal+0xf353, %r8
nop
sub %r11, %r11
movb $0x51, (%r8)
nop
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_RW+0xd6d3, %rbx
nop
inc %r8
mov $0x5152535455565758, %rbp
movq %rbp, (%rbx)
nop
nop
nop
add %r11, %r11

// Store
lea addresses_D+0x19b3, %r9
nop
nop
nop
cmp $24102, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r9)
nop
nop
nop
nop
cmp $2964, %r8

// Faulty Load
lea addresses_D+0x3793, %rbx
nop
nop
nop
and %r9, %r9
movups (%rbx), %xmm1
vpextrq $1, %xmm1, %r11
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'36': 3}
36 36 36
*/
