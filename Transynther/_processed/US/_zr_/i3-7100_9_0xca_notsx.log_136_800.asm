.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
lea addresses_WC_ht+0xe5c6, %r14
nop
nop
xor %rdi, %rdi
mov (%r14), %r15d
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x173ce, %r12
nop
xor %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x1a486, %r13
clflush (%r13)
nop
nop
nop
nop
nop
dec %r14
mov $0x6162636465666768, %r15
movq %r15, (%r13)
nop
nop
nop
nop
nop
inc %r12
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0xbd, %r8
clflush (%r8)
nop
nop
nop
nop
add $46172, %rdi
movw $0x5152, (%r8)
nop
sub $20924, %rdx

// Store
lea addresses_US+0xf486, %rcx
cmp %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovaps %ymm3, (%rcx)

// Exception!!!
nop
mov (0), %r8
add $40473, %rdi

// Store
lea addresses_normal+0x13306, %rdi
xor $65291, %r8
movb $0x51, (%rdi)
nop
nop
nop
cmp %rbx, %rbx

// Faulty Load
lea addresses_US+0x1e086, %rcx
nop
nop
nop
nop
inc %r11
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'00': 136}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
