.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rdi
lea addresses_WT_ht+0x2d48, %rbx
mfence
mov (%rbx), %rdi
nop
and $49682, %r15
lea addresses_WT_ht+0x2458, %r9
nop
nop
nop
mfence
mov (%r9), %r8w
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x17b08, %rdi
nop
nop
and %r8, %r8
movb $0x61, (%rdi)
nop
inc %rdi
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rdx

// Store
lea addresses_RW+0x7d88, %r14
nop
nop
nop
sub $20445, %r15
movw $0x5152, (%r14)
nop
nop
and $48312, %r14

// Load
lea addresses_PSE+0x11ce0, %rdx
nop
nop
nop
nop
sub $58995, %r9
mov (%rdx), %rbx
nop
and $6722, %rbx

// Store
lea addresses_D+0x11ac8, %rdx
nop
nop
nop
xor $59535, %r11
mov $0x5152535455565758, %r9
movq %r9, (%rdx)

// Exception!!!
nop
nop
nop
mov (0), %r12
nop
nop
nop
nop
nop
add $32825, %rdx

// Store
lea addresses_RW+0xa9b8, %r12
and $20029, %rbx
movl $0x51525354, (%r12)
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_PSE+0x105dc, %r11
nop
nop
and %r9, %r9
movl $0x51525354, (%r11)

// Exception!!!
nop
nop
mov (0), %rdx
nop
nop
add %r9, %r9

// Load
lea addresses_US+0xe008, %rdx
nop
nop
nop
xor %r15, %r15
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9
nop
nop
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_WC+0x82c8, %rdx
nop
nop
nop
nop
sub $45991, %r14
movb (%rdx), %r12b
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 3, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': True}}
{'00': 3}
00 00 00
*/
