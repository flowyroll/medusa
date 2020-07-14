.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rdx
lea addresses_UC_ht+0x1a201, %r12
nop
inc %r8
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
dec %rdx
lea addresses_normal_ht+0x6ae1, %r13
nop
nop
nop
nop
nop
xor %rbx, %rbx
movups (%r13), %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
inc %r9
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdi

// Load
lea addresses_normal+0x1a729, %r11
sub $3247, %r14
movups (%r11), %xmm4
vpextrq $0, %xmm4, %rax
dec %r8

// Store
mov $0x199, %r10
nop
nop
nop
nop
nop
and %rdi, %rdi
movw $0x5152, (%r10)
add %r14, %r14

// Store
lea addresses_RW+0x1eae1, %rax
cmp $19968, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rax)
xor $35966, %r8

// Store
lea addresses_PSE+0x4191, %r14
nop
nop
nop
nop
nop
add %rcx, %rcx
movl $0x51525354, (%r14)

// Exception!!!
nop
nop
nop
nop
mov (0), %r8
nop
nop
xor $50480, %rax

// Store
lea addresses_PSE+0x1a661, %rcx
nop
xor %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, (%rcx)
nop
and %r11, %r11

// Faulty Load
lea addresses_A+0x3ae1, %r11
nop
sub $53050, %rdi
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'00': 44}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
