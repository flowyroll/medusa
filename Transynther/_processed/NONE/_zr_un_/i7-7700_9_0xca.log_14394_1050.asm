.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x17195, %rsi
lea addresses_normal_ht+0x3875, %rdi
nop
nop
nop
nop
nop
sub $14220, %rbp
mov $96, %rcx
rep movsw
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x1b2b5, %r13
clflush (%r13)
nop
nop
nop
nop
nop
xor $63925, %r10
movb (%r13), %dl
nop
cmp $17719, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx

// Store
lea addresses_RW+0x71d3, %r14
clflush (%r14)
nop
nop
nop
sub %r15, %r15
movb $0x51, (%r14)
nop
nop
nop
and %r14, %r14

// Store
lea addresses_WC+0xaebd, %r15
add %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
nop
and $45086, %r14

// Store
lea addresses_US+0x19e75, %rbp
clflush (%rbp)
nop
nop
cmp %rcx, %rcx
movl $0x51525354, (%rbp)
nop
nop
dec %r11

// Store
lea addresses_WT+0x1da75, %rcx
nop
cmp $33122, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movups %xmm2, (%rcx)
sub %r13, %r13

// Store
lea addresses_WT+0x13975, %r11
nop
nop
nop
nop
nop
and $22104, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
nop
nop
cmp $37244, %r13

// Store
lea addresses_PSE+0xb4f5, %rbp
and $45273, %r14
movb $0x51, (%rbp)
nop
nop
nop
sub $4180, %r9

// Faulty Load
lea addresses_WT+0x1da75, %r15
cmp %rcx, %rcx
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 10374, '08': 4020}
00 00 00 00 08 00 00 00 08 00 00 00 08 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 08 00 08 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 08 00 00 08 00 00 08 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 08 00 08 00 00 08 00 00 00 00 00 00 00 00 00 00 08 00 00 08 00 00 00 00 00 00 08 08 00 00 08 00 00 00 00 00 08 00 00 00 08 00 00 00 00 08 00 08 00 00 00 00 08 00 08 00 00 00 00 00 08 08 00 00 00 00 00 00 08 08 00 00 08 00 00 00 00 08 00 00 00 00 08 00 00 08 00 00 08 00 00 00 00 00 08 00 08 00 08 00 08 00 00 00 00 00 08 08 00 00 00 08 08 00 08 00 08 00 08 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 08 08 08 00 00 08 00 00 08 08 00 00 00 08 00 00 00 08 00 00 08 00 00 08 00 08 00 00 00 00 00 08 00 08 00 00 08 08 00 00 00 08 08 00 00 00 00 08 08 00 08 08 00 00 00 08 00 08 00 00 08 00 00 00 00 08 00 00 00 00 00 08 00 08 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 08 00 00 08 08 00 00 08 08 00 08 00 08 00 08 00 08 00 00 00 08 00 00 08 00 00 00 00 00 00 08 00 00 00 08 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 08 00 00 08 08 00 08 00 00 00 00 00 00 00 00 08 00 00 00 08 00 00 08 00 00 08 00 08 08 00 00 08 00 00 00 00 08 00 00 08 00 08 00 00 00 08 00 00 00 00 08 00 00 00 00 00 00 00 08 00 00 08 08 08 08 00 08 00 08 00 08 00 00 00 00 08 00 00 00 08 08 08 00 00 08 00 00 00 00 00 08 00 00 00 00 08 00 08 00 00 00 00 00 00 00 00 00 08 00 08 00 00 08 00 00 00 08 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 08 00 08 00 00 00 08 00 08 00 08 00 00 00 08 00 00 00 08 00 00 00 08 08 00 00 08 00 00 08 00 08 08 00 08 00 00 08 00 00 00 00 00 00 00 00 00 08 00 08 08 00 00 00 08 08 00 00 00 00 00 08 08 08 00 08 00 08 00 00 08 08 00 00 00 00 00 00 08 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 08 00 00 08 00 00 00 00 00 00 08 00 08 00 08 00 00 08 00 00 08 08 00 00 00 00 00 08 00 08 00 00 00 08 08 08 00 00 08 00 00 00 00 00 08 00 08 00 08 00 08 00 00 08 08 00 08 08 00 00 00 00 00 08 08 00 00 00 00 00 00 08 00 08 00 00 00 08 00 08 00 00 08 00 08 00 00 00 00 08 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 08 00 00 00 00 00 00 00 00 00 00 00 08 08 00 00 00 00 00 00 00 00 08 00 00 00 00 08 00 00 00 00 00 00 00 08 00 08 00 08 00 08 00 08 00 08 00 00 00 08 00 08 00 00 08 00 00 00 00 08 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 08 00 00 00 08 00 00 00 00 08 00 00 00 08 00 00 08 00 00 00 00 08 00 00 00 00 00 08 08 00 08 00 00 00 00 08 08 00 00 00 00 00 00 00 08 00 08 08 00 00 00 00 08 00 00 00 00 00 08 08 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 08 00 00 08 00 00 08 00 08 00 00 00 00 08 00 08 00 00 00 00 00 08 08 00 00 08 00 08 08 08 00 00 08 08 00 08 00 08 00 08 00 00 08 08 08 08 00 08 00 00 08 00 08 00 00 00 00 00 00 00 00 08 00 00 08 00 00 00 00 00 00 00 08 00 00 00 08 08 00 00 00 08 00 00 00 00 00 00 00 08 08 00 00 08 00 08 00 00 00 00 08 00 00 00 00 08
*/
