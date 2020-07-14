.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rbx
push %rcx
lea addresses_WC_ht+0x1184f, %r13
and %rbx, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x1bfaf, %rbx
nop
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%rbx)
nop
nop
mfence
lea addresses_D_ht+0xc24f, %r15
add %r11, %r11
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
inc %r15
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rax
push %rbp

// Store
lea addresses_WT+0x76af, %r8
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm0
movups %xmm0, (%r8)
nop
nop
and $47751, %rax

// Store
lea addresses_WC+0x8dd7, %r9
nop
nop
inc %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r9)
nop
nop
nop
nop
nop
dec %r8

// Load
lea addresses_WT+0x366f, %r14
nop
nop
nop
dec %r13
movups (%r14), %xmm6
vpextrq $1, %xmm6, %r15
nop
xor %r8, %r8

// Faulty Load
lea addresses_PSE+0x8c4f, %rbp
nop
dec %rax
movb (%rbp), %r8b
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'33': 4}
33 33 33 33
*/
