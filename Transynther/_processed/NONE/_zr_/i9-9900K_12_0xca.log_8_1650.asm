.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_WT+0x9bc, %r8
sub %r13, %r13
movl $0x51525354, (%r8)
cmp $60488, %rax

// Store
lea addresses_D+0x18edc, %rbp
nop
nop
xor $16911, %rcx
movb $0x51, (%rbp)
nop
nop
nop
dec %rbx

// Store
mov $0x660, %r8
nop
sub %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r8)
nop
add $62058, %rcx

// Store
lea addresses_WC+0x1f15c, %rbp
nop
nop
nop
and $38929, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rbp)
nop
and %rax, %rax

// Store
mov $0xe5c, %rbp
nop
nop
nop
nop
inc %r13
movw $0x5152, (%rbp)
nop
nop
nop
nop
sub $61565, %rbp

// Store
mov $0x624, %r13
nop
nop
and $17866, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r13)
cmp %rbp, %rbp

// Faulty Load
lea addresses_WT+0x6a5c, %rbp
nop
cmp %rax, %rax
mov (%rbp), %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 8}
00 00 00 00 00 00 00 00
*/
